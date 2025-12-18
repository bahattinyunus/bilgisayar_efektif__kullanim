# 🛡️ Security Mastery: Uzvunu Koru

Hız ve verimlilik, güvenlikten ödün vermemeli. Güçlü bir sistem, aynı zamanda korunan bir sistemdir.

## 🔐 Kimlik ve Anahtar Yönetimi
- **SSH Key Passphrase**: Anahtarlarınızı çalınsa bile okunamaz hale getiren şifreler kullanın.
- **GPG Signing**: Commitlerinizi ve mesajlarınızı imzalayarak "sen olduğunu" kanıtla.
- **Hardware Security Keys**: (Yubikey vb.) donanımsal onay mekanizmalarını sistemine entegre et.

## 🛡️ Veri Gizliliği
- **Encrypted Volumes**: Hassas dökümanları `VeraCrypt` veya `LUKS` (Linux) ile şifreli disklerde sakla.
- **Environment Variables**: API keyleri asla kodun içine yazma, `.env` dosyaları ve sistem değişkenleri kullan.

## 🕵️ Sistem İzleme & Sıkılaştırma
- **Fail2Ban**: Hatalı giriş denemelerini otomatik blokla.
- **Firewall Mastery**: `ufw` (Linux) veya Windows Firewall ile sadece gerekli portları açık bırak.
- **System Logs**: Şüpheli hareketleri `journalctl` veya Windows Event Viewer üzerinden takip etme alışkanlığı edin.

---
> ⚔️ **Motto:** Güvenli olmayan sistem, her an çökmeye mahkum bir kaledir.
