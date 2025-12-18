# 🛠️ Modern CLI Cheatsheet

Sıradan komutları modern alternatifleriyle değiştirerek terminal hızınızı artırın.

## 🚀 Işık Hızında Navigasyon

### **zoxide (Better cd)**
Gittiğiniz klasörleri öğrenir.
- `z [isim]` : En çok gittiğiniz eşleşen klasöre zıpla.
- `z -i [isim]` : İnteraktif seçim modu.
- `zi` : fzf ile interaktif klasör seçimi.

### **fzf (Fuzzy Finder)**
- `Ctrl + R` : Komut geçmişinde akıllı arama.
- `Ctrl + T` : Dosya arama ve seçme.
- `Alt + C` : Dizin arama ve içine girme.

## 🔍 Modern Sorgulama

### **ripgrep (rg)**
- `rg "kelime"` : Tüm dosyalarda kelimeyi ara.
- `rg -t py "kelime"` : Sadece Python dosyalarında ara.
- `rg -l "kelime"` : Sadece kelimeyi içeren dosyaların isimlerini listele.

### **fd (Better find)**
- `fd [isim]` : Dosyayı hızlıca bul.
- `fd -e jpg` : Sadece jpg dosyalarını bul.
- `fd -x ls -l` : Bulduğun her dosya için komut çalıştır.

## 📄 Gelişmiş Görüntüleme

### **eza (Better ls)**
- `eza --icons` : İkonlarla listele.
- `eza -T` : Tree (ağaç) görünümü.
- `eza -l --git` : Dosyaların Git durumlarını göster.

### **bat (Better cat)**
- `bat file.js` : Renklendirilmiş (Syntax highlight) çıktı.
- `bat --list-themes` : Temaları listele.
