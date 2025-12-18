# 🐚 POSIX & Universal Scripting: Ölümsüz Kodlar

Yazdığın bir otomasyon betiği sadece bugünün Linux'unda değil, 20 yıl sonraki bir FreeBSD'de veya en kısıtlı sunucuda bile çalışmalı.

## 🛠️ Neden POSIX?
- **Portatiflik**: Yazdığın kod macOS, Linux, BSD ve WSL arasında sorunsuz taşınır.
- **Hız**: Karmaşık Bash özelliklerine ihtiyaç duymadan, en saf `sh` ile ışık hızında çalışır.
- **Süreklilik**: Standartlar değişmez. 1990'da yazılan POSIX uyumlu kod bugün hala mükemmel çalışır.

## 🚀 Standartlara Bağlı Kalmak
- `#!/bin/sh` kullanın, `#!/bin/bash` değil.
- `[[ ]]` (bashism) yerine `[ ]` kullanın.
- `local` gibi standart dışı anahtar kelimelerden kaçının.

## 🏗️ Otomasyon Felsefesi
- **KISS (Keep It Simple, Stupid)**: Bir script sadece bir işi yapsın ve mükemmel yapsın.
- **Pipelining**: `find`, `grep`, `sed`, `awk` gibi atomik araçları birbirine bağlayarak devasa güçler oluştur.

---
> 📜 **Vizyon:** Otomasyonların senin dijital mirasındır. Onları standartlara uygun yaz ki, teknolojiler değişse de senin sistemlerin yaşamaya devam etsin.
