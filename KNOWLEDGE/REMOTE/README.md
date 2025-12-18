# 🌐 Remote Mastery: Dünyaya Hükmet

Güçlü bir bilgisayarın varsa, o güç seninle her yere gelmeli. SSH ve Tunneling ile mesafeleri yok edin.

## 🔑 SSH (Secure Shell) Ustalığı
Parola kullanmayı bırakın, SSH keylere geçin.

- `ssh-keygen -t ed25519`: En güvenli ve hızlı key tipini oluşturun.
- `ssh-copy-id user@host`: Key'i uzak sunucuya güvenle kopyalayın.
- `~/.ssh/config`: Uzun komutlar yerine isimlerle bağlanın:
```text
Host my-server
    HostName 123.45.67.89
    User bahattin
    IdentityFile ~/.ssh/id_ed25519
```

## 🚇 Tunneling: Güvenli Köprüler
- **Local Port Forwarding**: Uzaktaki bir veritabanını (`localhost:5432`) yereldeymiş gibi kullanın.
- **Reverse Tunneling**: Güvenlik duvarı arkasındaki cihazınıza her yerden erişin.

## 🚀 Remote Development
- **VS Code Remote SSH**: Uzak bir sunucuda yereldeymiş gibi kod yazın.
- **Neovim + SSH**: Terminal üzerinden en hızlı geliştirme deneyimi.
- **TMUX Integration**: Uzak bağlantı kopsa bile işlemleriniz yarım kalmasın, `tmux attach` ile geri dönün.

---
> 🌍 **Hedef:** Cebindeki telefonla veya en ucuz laptopla bile ana sisteminin tam gücüne erişebilmek.
