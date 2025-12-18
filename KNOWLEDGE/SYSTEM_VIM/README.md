# 🧘 System-Wide Vim: Her Yer Modal

Vim motions sadece editörde kalmamalı. Tüm işletim sistemini modal bir mantıkla (Insert Mode / Command Mode) yönetmek, fareye olan ihtiyacı %100 bitirir.

## 🛠️ Araçlar ve Stratejiler

### **1. Kanata & KMonad (Klavye Katmanı)**
İşletim sisteminden bağımsız, klavye girdisini yazılım seviyesinde yakalayıp manipüle eder.
- Yön tuşlarını `h, j, k, l` olarak her yerde kullanabilmek için bir navigasyon katmanı oluştur.

### **2. GlazeWM / AltSnap (Windows)**
- **GlazeWM**: Windows için i3 benzeri bir Tiling Window Manager. Pencereleri klavye ile yönet, boşlukları (gaps) ayarla.
- **AltSnap**: Pencereleri herhangi bir noktasından `Alt` tuşuyla tutup sürükleme veya boyutlandırma.

### **3. Homerow / Vimac (macOS/Win Benzerleri)**
Ekranda tıklanabilir her noktaya bir harf atayarak (`f` tuşuna basınca her linkin yanında bir harf çıkması) fareyi simüle etme.

## 🚀 Akış: Modal OS
- **Mode 1 (Normal)**: `h, j, k, l` ile her yerde gezin, `d` ile sil, `y` ile kopyala.
- **Mode 2 (Window)**: Pencereleri taşı, boyutlandır, workspace değiştir.
- **Mode 3 (Insert)**: Standart yazı yazma modu.

---
> ⚡ **Vizyon:** İşletim sistemin, senin düşünce akışına uyum sağlayan dev bir Vim buffer'ıdır.
