#!/bin/bash
# 🚀 Ultimate Ubuntu Developer Setup Script
# Tested on Ubuntu 22.04 & 24.04

echo "🔧 Sistemi güncelliyorum..."
sudo apt update && sudo apt upgrade -y

echo "📦 Temel araçlar yükleniyor..."
sudo apt install -y build-essential curl wget git unzip zip net-tools htop neofetch software-properties-common apt-transport-https ca-certificates gnupg lsb-release

echo "💻 Geliştirme dilleri kuruluyor..."
# Python
sudo apt install -y python3 python3-pip python3-venv

# Node.js (LTS)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# Java (OpenJDK 17)
sudo apt install -y openjdk-17-jdk

# C/C++ araçları
sudo apt install -y gcc g++ make cmake gdb valgrind

echo "🧠 Terminal güçlendirmeleri yükleniyor..."
sudo apt install -y zsh tmux bat exa fzf

# Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "💅 Oh My Zsh kuruluyor..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "🧰 VS Code kuruluyor..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

echo "🐳 Docker kuruluyor..."
sudo apt remove -y docker docker-engine docker.io containerd runc
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker $USER

echo "🌐 Ek araçlar: Postman, Curl, Nmap..."
sudo snap install postman
sudo apt install -y nmap

echo "🧼 Sistem optimizasyonu yapılıyor..."
sudo apt autoremove -y
sudo apt autoclean -y
sudo sysctl -w vm.swappiness=10

echo "✅ Kurulum tamamlandı!"
echo "Sistemi yeniden başlatman önerilir."
