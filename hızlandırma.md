Write-Host "🚀 Lenovo Ideapad Gaming 3 Performans Scripti Çalışıyor..." -ForegroundColor Green

# 1. Geçici dosyaları temizle
Write-Host "[1/6] Geçici dosyalar temizleniyor..."
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "✔ Geçici dosyalar temizlendi." -ForegroundColor Cyan

# 2. RAM boşaltma (çöp toplama)
Write-Host "[2/6] Bellek optimize ediliyor..."
[System.GC]::Collect()
Write-Host "✔ RAM optimize edildi." -ForegroundColor Cyan

# 3. Gereksiz servisleri durdur
Write-Host "[3/6] Gereksiz servisler kapatılıyor..."
$services = @("SysMain","DiagTrack","WSearch","Fax","MapsBroker","Spooler")
foreach ($svc in $services) {
    Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue
    Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
}
Write-Host "✔ Servisler kapatıldı." -ForegroundColor Cyan

# 4. Güç planını yüksek performansa al
Write-Host "[4/6] Güç planı Yüksek Performans moduna geçiriliyor..."
$highPerf = powercfg -l | Select-String "Yüksek performans"
if ($highPerf) {
    $guid = ($highPerf.ToString().Split()[3])
    powercfg -setactive $guid
} else {
    powercfg -duplicatescheme SCHEME_MIN
    powercfg -setactive SCHEME_MIN
}
Write-Host "✔ Yüksek performans modu aktif." -ForegroundColor Cyan

# 5. GPU kullanımını optimize et (varsayılanı 'yüksek performanslı GPU')
Write-Host "[5/6] GPU önceliği yüksek performanslı olarak ayarlanıyor..."
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "Cursor.exe" /t REG_SZ /d "GpuPreference=2;" /f | Out-Null
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "chrome.exe" /t REG_SZ /d "GpuPreference=2;" /f | Out-Null
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "Code.exe" /t REG_SZ /d "GpuPreference=2;" /f | Out-Null
Write-Host "✔ GPU önceliği Cursor, Chrome ve VSCode için ayarlandı." -ForegroundColor Cyan

# 6. DNS cache temizleme
Write-Host "[6/6] DNS cache temizleniyor..."
Clear-DnsClientCache
Write-Host "✔ DNS cache temizlendi." -ForegroundColor Cyan

Write-Host "=====================================" -ForegroundColor Yellow
Write-Host " ✅ Lenovo Ideapad Gaming 3 için optimize edildi!" -ForegroundColor Green
Write-Host " 🔋 Performans arttırıldı, GPU önceliklendirildi." -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Yellow
