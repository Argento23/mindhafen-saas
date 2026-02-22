# =========================================
# SCRIPT DE DIAGNÓSTICO - WEBHOOK MINDHAFEN
# =========================================

Write-Host "`n=== PRUEBA 1: Verificar conectividad básica ===" -ForegroundColor Cyan

try {
    $ping = Test-Connection -ComputerName manager.generarise.space -Count 1 -ErrorAction Stop
    Write-Host "✅ Servidor accesible: $($ping.Address)" -ForegroundColor Green
} catch {
    Write-Host "❌ ERROR: No se puede alcanzar manager.generarise.space" -ForegroundColor Red
    Write-Host "   Verifica tu conexión a internet o que el servidor esté activo" -ForegroundColor Yellow
    exit
}

Write-Host "`n=== PRUEBA 2: Test del Webhook (POST con datos) ===" -ForegroundColor Cyan

$webhookUrl = "https://manager.generarise.space/webhook/8f7cbf0e-4ac0-4660-a524-9af706728a52"

$testData = @{
    name = "Test Usuario"
    email = "test@example.com"
    goal = "stress_reduction"
    source = "diagnostic_test"
    submittedAt = (Get-Date).ToUniversalTime().ToString("o")
} | ConvertTo-Json

Write-Host "URL: $webhookUrl" -ForegroundColor Gray
Write-Host "Datos enviados:" -ForegroundColor Gray
Write-Host $testData -ForegroundColor Gray

try {
    $response = Invoke-WebRequest `
        -Uri $webhookUrl `
        -Method POST `
        -ContentType "application/json" `
        -Body $testData `
        -UseBasicParsing `
        -ErrorAction Stop `
        -TimeoutSec 30

    Write-Host "`n✅ WEBHOOK FUNCIONA CORRECTAMENTE" -ForegroundColor Green
    Write-Host "Status Code: $($response.StatusCode)" -ForegroundColor Green
    Write-Host "Respuesta:" -ForegroundColor Gray
    Write-Host $response.Content -ForegroundColor Gray

} catch {
    Write-Host "`n❌ ERROR AL CONECTAR CON EL WEBHOOK" -ForegroundColor Red
    
    if ($_.Exception.Response) {
        $statusCode = $_.Exception.Response.StatusCode.value__
        Write-Host "Status Code: $statusCode" -ForegroundColor Yellow
        
        switch ($statusCode) {
            404 {
                Write-Host "`n🔍 DIAGNÓSTICO:" -ForegroundColor Yellow
                Write-Host "   - El webhook no existe o la URL está incorrecta" -ForegroundColor White
                Write-Host "   - Verifica que el workflow esté importado en n8n" -ForegroundColor White
                Write-Host "   - Verifica que el Path del webhook sea exactamente:" -ForegroundColor White
                Write-Host "     8f7cbf0e-4ac0-4660-a524-9af706728a52" -ForegroundColor Cyan
            }
            502 {
                Write-Host "`n🔍 DIAGNÓSTICO:" -ForegroundColor Yellow
                Write-Host "   - El servidor n8n está caído o reiniciando" -ForegroundColor White
                Write-Host "   - Accede a Easypanel y reinicia el servicio n8n" -ForegroundColor White
            }
            503 {
                Write-Host "`n🔍 DIAGNÓSTICO:" -ForegroundColor Yellow
                Write-Host "   - El servicio n8n no está disponible" -ForegroundColor White
                Write-Host "   - Verifica el estado del contenedor en Easypanel" -ForegroundColor White
            }
            default {
                Write-Host "`n🔍 Error HTTP: $statusCode" -ForegroundColor Yellow
                Write-Host "Detalles: $($_.Exception.Message)" -ForegroundColor White
            }
        }
    } else {
        Write-Host "`n🔍 DIAGNÓSTICO:" -ForegroundColor Yellow
        Write-Host "   - No se pudo establecer conexión" -ForegroundColor White
        Write-Host "   - Posibles causas:" -ForegroundColor White
        Write-Host "     1. Firewall bloqueando la conexión" -ForegroundColor Gray
        Write-Host "     2. Servidor n8n completamente caído" -ForegroundColor Gray
        Write-Host "     3. Problema de DNS" -ForegroundColor Gray
        Write-Host "`n   Error completo:" -ForegroundColor White
        Write-Host "   $($_.Exception.Message)" -ForegroundColor Gray
    }
}

Write-Host "`n=== PRUEBA 3: Verificar CORS (desde navegador) ===" -ForegroundColor Cyan
Write-Host "Para verificar CORS, abre la consola del navegador (F12) y ejecuta:" -ForegroundColor Gray
Write-Host @"

fetch('https://manager.generarise.space/webhook/8f7cbf0e-4ac0-4660-a524-9af706728a52', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    name: 'Test Browser',
    email: 'test@example.com',
    goal: 'stress_reduction',
    source: 'browser_test'
  })
})
.then(r => r.json())
.then(d => console.log('✅ Éxito:', d))
.catch(e => console.error('❌ Error:', e));

"@ -ForegroundColor Cyan

Write-Host "`n=== RESUMEN DE ACCIONES ===" -ForegroundColor Cyan
Write-Host @"

Si el webhook NO funciona:

1️⃣ VERIFICAR EN N8N:
   - Ir a https://manager.generarise.space
   - Workflows → Buscar el workflow de MindHafen
   - Verificar que esté ACTIVO (toggle verde)
   - Abrir el workflow → Verificar que el nodo Webhook tenga:
     * Path: 8f7cbf0e-4ac0-4660-a524-9af706728a52
     * Method: POST

2️⃣ SI EL WORKFLOW NO ESTÁ:
   - Importar el archivo: n8n_workflow_PRODUCTION_v2.json
   - Configurar credenciales (Groq, Sheets, SMTP)
   - Activar el workflow

3️⃣ SI N8N ESTÁ CAÍDO:
   - Easypanel → Services → n8n
   - Restart service

4️⃣ SI PERSISTE:
   - Revisar logs de n8n en Easypanel
   - Verificar que el puerto esté correctamente mapeado

"@ -ForegroundColor White

Write-Host "`n✅ Diagnóstico completado" -ForegroundColor Green
