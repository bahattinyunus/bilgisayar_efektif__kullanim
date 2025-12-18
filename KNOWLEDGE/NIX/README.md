# ❄️ Nix & NixOS: Sistemin DNA'sı

Dotfiles hücre hafızasıysa, Nix sistemin **DNA**'sıdır. Bir sistemin her bir paketini, ayarını ve bağımlılığını matematiksel bir kesinlikle (deterministic) tanımlamanızı sağlar.

## 🚀 Neden Nix?
- **Atomik Güncellemeler**: Bir güncelleme sistemi bozarsa, boot ekranında tek tuşla saniyeler öncesine dönebilirsin.
- **Reproducibility**: "Benim makinemde çalışıyor" sorununu yok et. Aynı config, her makinede aynı sonucu verir.
- **Declarative**: Sisteme "şunu kur" demezsin, "sistemim şunlardan oluşmalı" dersin.

## 🛠️ Temel Kavramlar

### **1. Nix Package Manager**
Herhangi bir Linux dağıtımında veya macOS'te kullanılabilir.
- `nix-shell -p python3`: Geçici bir ortamda python çalıştır, çıkınca sistemden silinsin.
- `nix-env -iA nixpkgs.neovim`: Kalıcı paket kur.

### **2. NixOS**
Tüm işletim sisteminin `/etc/nixos/configuration.nix` dosyasından yönetildiği bir dağıtım.
```nix
{ config, pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  networking.hostName = "power-limb";
  environment.systemPackages = with pkgs; [ neovim git kitty ];
}
```

### **3. Home Manager**
Kullanıcı bazlı ayarları (dotfiles) Nix diliyle yönetme sanatı.

---
> 🧠 **Vizyon:** Bilgisayarın yansa bile, yeni makinede Nix config'ini çalıştırdığında içindeki her paket ve her ayar piksellerine kadar aynı şekilde geri gelir.
