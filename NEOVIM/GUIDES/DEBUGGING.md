# 🐞 Neovim Debugging: DAP Mastery

Bir power user sadece kod yazmaz, aynı zamanda ışık hızında hata ayıklar. Debug Adapter Protocol (DAP), Neovim'e IDE düzeyinde debugging yeteneği kazandırır.

## 🛠️ Temel Eklentiler
- **mfussenegger/nvim-dap**: Çekirdek protokol istemcisi.
- **rcarriga/nvim-dap-ui**: Görsel arayüz (Breakpoints, Scopes, Stacks).
- **theHamsta/nvim-dap-virtual-text**: Değişken değerlerini kodun yanında görme.

## 🚀 Temel Kısayollar (Öneri)
- `<F5>`: Başlat / Devam et.
- `<F10>`: Step over.
- `<F11>`: Step into.
- `<Shift + F11>`: Step out.
- `<Leader>b`: Breakpoint koy/kaldır.

## ⚙️ Dil Ayarları
DEBUG adaptörlerini `mason.nvim` üzerinden kurun:
- **Python**: `debugpy`
- **Go**: `delve`
- **C/C++/Rust**: `codelldb`

---
> 🧬 **Vizyon:** Print komutlarıyla vakit kaybetme. Sistemin içine sız, değişkenlerin ruhuna dokun ve hatayı kaynağında yok et.
