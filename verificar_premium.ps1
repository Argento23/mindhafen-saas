# Script de Verificación - MindHafen Premium Downloads
# Ejecuta este script en la consola del navegador (F12) para verificar el estado

Write-Host "🔍 VERIFICACIÓN DE MINDHAFEN PREMIUM" -ForegroundColor Cyan
Write-Host "=" * 50 -ForegroundColor Cyan
Write-Host ""

# Verificar archivos premium
Write-Host "📂 Verificando archivos en /downloads..." -ForegroundColor Yellow
$downloadsPath = "c:\Users\Gustavo\Downloads\neurova\mindhafen\downloads"

if (Test-Path $downloadsPath) {
    Write-Host "✅ Carpeta downloads encontrada" -ForegroundError Green
    
    $mp3Files = Get-ChildItem -Path $downloadsPath -Filter "*.mp3" | Measure-Object
    $pdfFiles = Get-ChildItem -Path $downloadsPath -Filter "*.pdf" | Measure-Object
    
    Write-Host "   - Archivos MP3: $($mp3Files.Count)" -ForegroundColor White
    Write-Host "   - Archivos PDF: $($pdfFiles.Count)" -ForegroundColor White
    
    Write-Host ""
    Write-Host "📋 Módulos Premium Disponibles:" -ForegroundColor Cyan
    Get-ChildItem -Path $downloadsPath -Filter "Módulo*.mp3" | ForEach-Object {
        Write-Host "   ✓ $($_.Name)" -ForegroundColor Green
    }
}
else {
    Write-Host "❌ Carpeta downloads NO encontrada" -ForegroundColor Red
}

Write-Host ""
Write-Host "🌐 INSTRUCCIONES PARA PROBAR:" -ForegroundColor Yellow
Write-Host "=" * 50 -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Abre biblioteca.html en tu navegador" -ForegroundColor White
Write-Host "2. Presiona F12 para abrir DevTools" -ForegroundColor White
Write-Host "3. Ve a la pestaña Console" -ForegroundColor White
Write-Host "4. Ejecuta estos comandos:" -ForegroundColor White
Write-Host ""
Write-Host "   localStorage.setItem('mindhafen_user_email', 'gustavodornhofer@gmail.com');" -ForegroundColor Cyan
Write-Host "   localStorage.setItem('mindhafen_premium_active', 'true');" -ForegroundColor Cyan
Write-Host "   location.reload();" -ForegroundColor Cyan
Write-Host ""
Write-Host "5. Deberías ver en la consola:" -ForegroundColor White
Write-Host "   '✅ USUARIO PREMIUM - Desbloqueando todos los módulos...'" -ForegroundColor Green
Write-Host ""
Write-Host "6. Haz clic en cualquier botón de descarga" -ForegroundColor White
Write-Host ""
Write-Host "=" * 50 -ForegroundColor Cyan
Write-Host ""
Write-Host "💡 SERVIDOR LOCAL (RECOMENDADO):" -ForegroundColor Yellow
Write-Host "Si las descargas no funcionan desde file://, ejecuta:" -ForegroundColor White
Write-Host ""
Write-Host "   cd c:\Users\Gustavo\Downloads\neurova\mindhafen" -ForegroundColor Cyan
Write-Host "   python -m http.server 8000" -ForegroundColor Cyan
Write-Host ""
Write-Host "Luego abre: http://localhost:8000/biblioteca.html" -ForegroundColor Green
Write-Host ""
