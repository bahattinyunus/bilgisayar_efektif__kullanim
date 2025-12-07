# -----------------------------
# 🚀 Windows 11 Turbo Boost Script
# -----------------------------

Write-Host "Windows 11 Turbo Script Basladi... 🚀" -ForegroundColor Green

# 1️⃣ Temp ve Cache Temizleme
Write-Host "Geçici dosyalar temizleniyor..." -ForegroundColor Cyan
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Prefetch\*" -Force -ErrorAction SilentlyContinue

# 2️⃣ Windows Update Artıkları Temizleme
Write-Host "Windows Update artiklari temizleniyor..." -ForegroundColor Cyan
dism.exe /Online /Cleanup-Image /StartComponentCleanup

# 3️⃣ SysMain (Superfetch) Servisini Kapat
Write-Host "SysMain servisi kapatiliyor..." -ForegroundColor Cyan
Stop-Service SysMain -Force
Set-Service SysMain -StartupType Disabled

# 4️⃣ Ultimate Performance Modu Aç
Write-Host "Ultimate Performance aciliyor..." -ForegroundColor Cyan
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

# 5️⃣ Registry Tweak'leri
Write-Host "Registry performans ayarlari yapiliyor..." -ForegroundColor Cyan
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 2000 /f

# 6️⃣ Defender Hafifletme
Write-Host "Windows Defender hafifletiliyor..." -ForegroundColor Cyan
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -MAPSReporting Disabled
Set-MpPreference -SubmitSamplesConsent NeverSend
Set-MpPreference -DisableScheduleScans $true
Set-MpPreference -DisableEmailScanning $true
Set-MpPreference -DisableRemovableDriveScanning $true
Set-MpPreference -DisableArchiveScanning $true

# 7️⃣ Gereksiz Bloatware Kaldırma
Write-Host "Bloatware uygulamalar kaldiriliyor..." -ForegroundColor Cyan
Get-AppxPackage *xbox* | Remove-AppxPackage
Get-AppxPackage *zune* | Remove-AppxPackage
Get-AppxPackage *bing* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage

# 8️⃣ SSD Optimize (TRIM)
Write-Host "SSD optimize ediliyor..." -ForegroundColor Cyan
defrag C: /O

# ✅ Tamamlandı
Write-Host "🔥 Turbo Script tamamlandi! Bilgisayarin yeniden baslatilmasi tavsiye edilir." -ForegroundColor Green
