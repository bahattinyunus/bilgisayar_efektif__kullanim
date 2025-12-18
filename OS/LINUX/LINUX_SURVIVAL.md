# 🐧 Linux Survival: Terminal & Tiling Master

Linux dünyasında hayatta kalmak ve güçlenmek için bilmeniz gereken en kritik komutlar ve kısayollar.

## 🐚 Bash/Zsh Kısayolları

Terminalde yazarken hızınızı ikiye katlayın:

| Kısayol | İşlev |
| :--- | :--- |
| `Ctrl + A` | Satırın başına git. |
| `Ctrl + E` | Satırın sonuna git. |
| `Ctrl + U` | Satırın başından kursora kadar olan kısmı sil. |
| `Ctrl + K` | Kursordan satır sonuna kadar olan kısmı sil. |
| `Ctrl + W` | Kursordan önceki kelimeyi sil. |
| `Ctrl + L` | Terminal ekranını temizle (clear). |

## 🖼️ Tiling WM (i3/Sway) Temelleri

Tiling window manager kullanıyorsanız şu kısayollar kas hafızanızda olmalı (`Mod` genelde `Super/Win` veya `Alt` tuşudur):

| Kısayol | İşlev |
| :--- | :--- |
| `Mod + Enter` | Yeni terminal aç. |
| `Mod + d` | dmenu/rofi (Uygulama başlatıcı) aç. |
| `Mod + [1-9]` | Workspace (masaüstü) değiştir. |
| `Mod + Shift + q` | Aktif pencereyi kapat. |
| `Mod + f` | Tam ekran moduna gir/çık. |
| `Mod + Shift + e` | Oturumu kapat / Çıkış menüsü. |

## 🛠️ Paket Yönetimi (Debian/Ubuntu)

| Komut | İşlev |
| :--- | :--- |
| `sudo apt update` | Depoları güncelle. |
| `sudo apt install [paket]` | Yeni yazılım kur. |
| `sudo apt purge [paket]` | Yazılımı ayarlarıyla birlikte sil. |
| `apt search [isim]` | Paket ara. |

## 📡 Sistem Takibi

- `htop` veya `btop` : Kaynak kullanımını (CPU, RAM) izle.
- `df -h` : Disk kullanımını gör.
- `free -h` : RAM kullanımını gör.
