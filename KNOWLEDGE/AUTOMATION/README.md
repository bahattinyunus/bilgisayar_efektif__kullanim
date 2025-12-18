# ⚡ Advanced Automation: Bilgisayarın Refleksleri

Kısayollar manueldir, otomasyon ise otomatiktir. Bilgisayarınızı belirli olaylara (tetikleyicilere) tepki verecek şekilde programlayın.

## 🪟 Windows: AutoHotkey (AHK) Mastery
AutoHotkey, Windows'ta her şeyi otomatize etmenizi sağlayan bir script dilidir.

### **Örnek Senaryolar:**
- **Auto-Replace**: `::brb::Be right back!` yazınca cümlenin tamamlanması.
- **Window Management**: Belirli bir tuş kombinasyonuyla Spotify'ın her zaman ekranın sağ üstüne gitmesi.
- **Launcher**: `CapsLock + f` bastığında tarayıcıyı, `CapsLock + t` bastığında terminali aç.

## 🐧 Linux: Systemd Timers & Cron
Linux'ta görevleri zamanlamak ve olaylara bağlamak.

### **Systemd Services**:
Arka planda sürekli çalışması gereken scriptleri (`sync-daemon` gibi) bir servis haline getirin:
```ini
[Unit]
Description=My Efficiency Sync Daemon

[Service]
ExecStart=/usr/bin/python3 /path/to/script.py
Restart=always

[Install]
WantedBy=multi-user.target
```

## 🏗️ İş Akışı Otomasyonu
- **Setup Scripts**: Sabah bilgisayarı açtığında tüm projeleri, tarayıcı sekmelerini ve iletişim araçlarını (Slack, Discord) tek komutla hazır hale getiren betikler yazın.
- **Watchers**: Bir dosya değiştiğinde otomatik olarak build alan veya test koşan `watcher` araçları kullanın.
