# Test Webhook MindHafen
Write-Host "=== PROBANDO WEBHOOK MINDHAFEN ===" -ForegroundColor Cyan

$webhookUrl = "https://manager.generarise.space/webhook/8f7cbf0e-4ac0-4660-a524-9af706728a52"

$testData = @{
    name = "Test Usuario"
    email = "test@example.com"
    goal = "stress_reduction"
    source = "diagnostic_test"
} | ConvertTo-Json

Write-Host "`nEnviando petición a:" -ForegroundColor Yellow
Write-Host $webhookUrl -ForegroundColor Gray

try {
    $response = Invoke-RestMethod `
        -Uri $webhookUrl `
        -Method POST `
        -ContentType "application/json" `
        -Body $testData `
        -ErrorAction Stop

    Write-Host "`n✅ WEBHOOK FUNCIONA CORRECTAMENTE`n" -ForegroundColor Green
    Write-Host "Respuesta del servidor:" -ForegroundColor Gray
    $response | ConvertTo-Json -Depth 3
    
} catch {
    Write-Host "`n❌ ERROR: El webhook NO responde`n" -ForegroundColor Red
    
    if ($_.Exception.Response) {
        $statusCode = [int]$_.Exception.Response.StatusCode
        Write-Host "Status Code: $statusCode" -ForegroundColor Yellow
        
        if ($statusCode -eq 404) {
            Write-Host "`nProblema: Webhook no encontrado" -ForegroundColor Red
            Write-Host "Solución:" -ForegroundColor Yellow
            Write-Host "1. Ir a https://manager.generarise.space" -ForegroundColor White
            Write-Host "2. Importar el workflow: n8n_workflow_PRODUCTION_v2.json" -ForegroundColor White
            Write-Host "3. Activar el workflow (toggle verde)" -ForegroundColor White
        }
        elseif ($statusCode -eq 502) {
            Write-Host "`nProblema: Servidor n8n caído" -ForegroundColor Red
            Write-Host "Solución:" -ForegroundColor Yellow
            Write-Host "1. Ir a Easypanel" -ForegroundColor White
            Write-Host "2. Services → n8n → Restart" -ForegroundColor White
        }
        else {
            Write-Host "`nError HTTP: $statusCode" -ForegroundColor Yellow
        }
    } else {
        Write-Host "`nNo se pudo conectar al servidor" -ForegroundColor Red
        Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Gray
    }
    
    Write-Host "`n--- SIGUIENTE PASO ---" -ForegroundColor Cyan
    Write-Host "Verifica en n8n que el workflow esté:" -ForegroundColor White
    Write-Host "  ✓ Importado" -ForegroundColor Gray
    Write-Host "  ✓ Activo (toggle verde)" -ForegroundColor Gray
    Write-Host "  ✓ Con el webhook ID correcto" -ForegroundColor Gray
}
