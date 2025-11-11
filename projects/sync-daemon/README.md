## sync-daemon

Dosya senkronizasyon servisi (Y1-Q4). Sistem programlama ve daemon geliştirme örneği.

### Amaç
- Dosya sistemi değişikliklerini izleme (inotify/FSEvents/Watchman)
- Çakışma çözümü stratejisi
- Servis yöneticisi entegrasyonu (systemd/Windows Service)
- Loglama ve monitorlama

### Özellikler (Planlanan)
- Çapraz platform (Linux, Windows, macOS)
- Gerçek zamanlı dosya izleme
- Otomatik yedekleme
- Conflict resolution (last-write-wins, manual)
- Systemd/Windows Service entegrasyonu
- Configuration file desteği

### Kullanım

```bash
# Build
cargo build --release

# Run
./target/release/sync-daemon --config config.toml

# Install as service (Linux)
sudo systemctl enable sync-daemon
sudo systemctl start sync-daemon
```

### Konfigürasyon

```toml
[watch]
paths = ["/home/user/docs"]
exclude = ["*.tmp", ".git"]

[sync]
strategy = "last-write-wins"  # veya "manual"
log_level = "info"
```

### Teknoloji Stack
- Rust (sistem programlama)
- notify (dosya izleme)
- serde (config parsing)
