# 🐳 Docker Efficiency: Hafif ve Hızlı Geliştirme

Docker konteynerlerini sadece çalıştırmayın, onları bir power user gibi optimize edin.

## 🚀 Hızlandıran İpuçları

### **1. Build Cache Kullanımı**
`Dockerfile` içinde sık değişmeyen katmanları (örneğin kütüphane kurulumları) üstte tutun:
```dockerfile
COPY package.json .
RUN npm install
COPY . .
```

### **2. Multi-Stage Builds**
Uygulamanızın sadece gerekli dosyalarını (binary) final imajına dahil ederek boyutunu küçültün:
```dockerfile
# Build stage
FROM node:18 AS build
WORKDIR /app
COPY . .
RUN npm run build

# Final stage
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
```

## 🛠️ Temizlik & Bakım
Terminalde yer açmak için:
- `docker system prune` : Kullanılmayan imaj, konteyner ve ağları temizle.
- `docker volume prune` : Yetim kalmış volume'leri sil.

## ⌨️ Docker Alias (Bash/Zsh)
```bash
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dlogs="docker logs -f"
alias dexec="docker exec -it"
```

## 🧰 Önerilen Araçlar
- **Lazydocker**: Docker için mükemmel bir TUI arayüzü.
- **Portainer**: Görsel yönetim paneli.
