# 🪟 Tmux Mastery: Terminalin Multiplexer Gücü

Tmux (Terminal Multiplexer), terminalinizi birden fazla pencereye ve panele bölmenizi, oturumlarınızı arka planda canlı tutmanızı sağlar.

## ⚡ Temel Kavramlar

- **Session (Oturum)**: Bir iş grubu (örn: `web_dev`, `admin`).
- **Window (Pencere)**: Bir oturum içindeki sekmeler.
- **Pane (Panel)**: Bir pencerenin split edilmiş bölümleri.

## ⌨️ Kritik Kısayollar (Prefix: `Ctrl + b`)

| Kısayol | İşlev |
| :--- | :--- |
| `Prefix + %` | Ekranı dikey böl (Vertical Split). |
| `Prefix + "` | Ekranı yatay böl (Horizontal Split). |
| `Prefix + d` | Oturumdan ayrıl (Detach) - İşlemler arkada devam eder. |
| `Prefix + c` | Yeni pencere aç (Create). |
| `Prefix + n/p` | Sonraki/Önceki pencereye geç. |
| `Prefix + z` | Paneli tam ekran yap (Toggle Zoom). |

## 🚀 Power User İpuçları

### **1. Oturumu Geri Getirme**
Bilgisayarı kapatsanız bile oturumları kaybetmemek için:
- **Resurrect & Continuum**: Tmux eklentileriyle oturumları otomatik kaydedin ve geri yükleyin.

### **2. Prefix Değiştirme**
`Ctrl + b` yorucu olabilir. Çoğu power user bunu `Ctrl + a` ile değiştirir (`.tmux.conf` üzerinden).

## 🛠️ Konfigürasyon Önerisi (Oh My Tmux!)
Kendi konfigürasyonunuzu yazmak yerine mükemmel bir başlangıç noktası:
- [gpakosz/.tmux](https://github.com/gpakosz/.tmux) - "Self-contained, ultra-portable, and modern tmux configuration."
