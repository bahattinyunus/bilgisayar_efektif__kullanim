# 🧘 Vim Motions: Parmaklarınızın Dansı

Neovim'in gerçek gücü, metin üzerinde nasıl hareket ettiğinizde yatar. Ok tuşlarını unutun.

## 🚶 Temel Hareketler

- `h` j `k` `l` : Sol, Aşağı, Yukarı, Sağ.
- `w` : Sonraki kelimenin başına git (Word).
- `e` : Mevcut/sonraki kelimenin sonuna git (End).
- `b` : Önceki kelimenin başına git (Back).
- `0` : Satırın en başına git.
- `$` : Satırın en sonuna git.
- `G` : Dosyanın en sonuna git.
- `gg` : Dosyanın en başına git.

## ✂️ Düzenleme (The Operators)

Vim bir dil gibidir: **[Sayı] + [Operatör] + [Hareket]**

- `d` : Sil (Delete).
- `c` : Değiştir (Change) - Siler ve Insert moduna girer.
- `y` : Kopyala (Yank).
- `p` : Yapıştır (Put).

### **Örnek Cümleler:**
- `dw` : Kelimeyi sil.
- `d3w` : Sonraki 3 kelimeyi sil.
- `ci"` : Tırnak içindeki metni değiştir.
- `dat` : HTML tag'ini ve içeriğini sil (Delete Around Tag).

## ⚡ Modlar

- **Normal**: Hareket ve komut modu (ESC).
- **Insert**: Yazma modu (`i`).
- **Visual**: Seçim modu (`v`).
- **Command**: Ayar/Komut modu (`:`).

> [!TIP]
> Neovim'de en çok zamanı **Normal** modda geçirmelisiniz. Yazmak için Insert moduna girin, işiniz bitince anında ESC ile Normal moda dönün.
