# 🐙 Git Mastery: Profosyonel İş Akışı

Git sadece bir versiyon kontrol sistemi değil, kodun zaman tünelidir. Onu verimli kullanmak, hataları izlemeyi ve iş birliğini kolaylaştırır.

## ⚡ Git Alias (Kısaltmalar)

Uzun komutları `.gitconfig` dosyanıza ekleyerek hızlanın:

```ini
[alias]
    s = status
    c = commit
    ca = commit --amend
    cm = commit -m
    co = checkout
    br = branch
    lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
    st = stash
    pop = stash pop
```

## 🚀 Gelişmiş Teknikler

### **1. Git Stash**
Üzerinde çalıştığınız işi bitirmeden başka bir branch'e geçmeniz gerekirse:
- `git stash` : Değişiklikleri geçici olarak kenera al.
- `git stash pop` : Geri getir.

### **2. Rebase vs Merge**
Daha temiz bir commit geçmişi için `merge` yerine `rebase` kullanın (master'a geri dönerken dikkat!).
- `git pull --rebase` : Uzak sunucudaki değişiklikleri yerel commitlerinizin "arkasına" değil, "altına" ekler.

### **3. Interactive Rebase**
Eski commit mesajlarını düzeltmek veya commitleri birleştirmek (squash) için:
- `git rebase -i HEAD~3` : Son 3 commiti düzenle.

## 🛠️ Araçlar
- **LazyGit**: Terminal tabanlı mükemmel bir Git arayüzü (TUI).
- **GitKraken** / **Fork**: Görselleştirme için güçlü GUI seçenekleri.
