# 🧬 Dotfiles Mastery: Sistemini Her Yere Taşı

Bilgisayarın senin bir uzvunsa, ayarların da senin "hücre hafızandır". Dotfiles, tüm konfigürasyon dosyalarını (`.vimrc`, `.zshrc`, `.gitconfig` vb.) merkezi bir yerde tutup her yeni cihazda saniyeler içinde sitemini ayağa kaldırmanı sağlar.

## 🛠️ Önerilen Araçlar

### **1. Chezmoi (Pro Seviye)**
Go ile yazılmış, şifreleme yetenekli ve çok güçlü bir dotfiles yöneticisi.
- `chezmoi init`: Başlat.
- `chezmoi add ~/.zshrc`: Dosyayı takibe al.
- `chezmoi apply`: Değişiklikleri sisteme uygula.

### **2. GNU Stow (Klasik & Hafif)**
Sembolik linkler (Symlinks) üzerine kurulu, basit ve etkili bir araç.
- Her uygulama için bir klasör aç ve konfigürasyonları içine koy.
- `stow nvim` komutuyla nvim ayarlarını `~/.config/nvim` altına linkle.

## 🚀 Versiyon Kontrolü
Dotfiles klasörünüzü mutlaka bir **Git** deposu yapın ve GitHub/GitLab üzerinde "private" olarak saklayın.

## ⚠️ Hassas Bilgiler
API keyleri veya şifreleri asla düz metin olarak dotfiles içinde tutmayın.
- **Chezmoi**: `lastpass`, `bitwarden` veya `1password` entegrasyonu ile şifreleri güvenle yönetebilir.
- **GPG Encryption**: Dosyaları repoya göndermeden önce şifreleyin.

---
> 💡 **Vizyon:** Yeni bir işe başladığında veya yeni bir bilgisayar aldığında; `git clone` ve `apply` komutlarından sonra bilgisayarın tam olarak bıraktığın gibi olması hedeftir.
