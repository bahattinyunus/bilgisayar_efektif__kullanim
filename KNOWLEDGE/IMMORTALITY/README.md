# 💾 Digital Immortality: Verinin Ölümsüzlüğü

"Uzvunu" (verilerini ve ayarlarını) kaybetmek bir seçenek değildir. Profesyonel yedekleme stratejileri ile her türlü felakete hazır ol.

## 🛠️ 3-2-1 Yedekleme Kuralı
- **3** Kopya (1 Orijinal + 2 Yedek).
- **2** Farklı Medya (HDD, SSD, Cloud).
- **1** Farklı Lokasyon (Yangın/Hırsızlık riskine karşı başka bir fiziksel yer).

## 🚀 Araçlar

### **1. Restic / Borg Backup**
Veriyi şifreleyerek ve sadece değişen kısımları (deduplication) yedekleyen yüksek performanslı araçlar.
- `restic backup ~/Documents`: Işık hızında şifreli yedek al.

### **2. Rsync / Rclone**
- **Rsync**: Lokalde veya SSH üzerinden dosya senkronizasyonu.
- **Rclone**: Google Drive, Dropbox, S3 gibi 40'tan fazla bulut sağlayıcısı ile bulutlar arası savaş gücü.

## 🧘 Felaket Kurtarma (Disaster Recovery)
Ayda bir kez yedeklerinden bir dosyayı gerçekten geri yüklemeyi (Restore Test) dene. Yedeklenmiş ama geri yüklenemeyen veri, hiç yedeklenmemiş veridir.

---
> 🛡️ **Vizyon:** Bilgisayarın patlasa, yansa veya çalınsa bile; yeni bir cihazda 10 dakika içinde kaldığın yerden devam edebilecek düzeyde güvende ol.
