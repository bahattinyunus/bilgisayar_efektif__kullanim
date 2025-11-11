## Projeler## Projeler



Örnek proje iskeletleri. Her proje, testler, CI ve dokümantasyon içerir.Örnek proje iskeletleri. Her proje, testler, CI ve dokümantasyon içerir.



### Proje Listesi### Klasörler

- `not-api/`: Çok kullanıcılı not/etiket API (Q1)

| Proje | Hedef | Teknoloji | Dönem |- `not-ui/`: Not API için React + TS arayüz (Q2)

|-------|-------|-----------|-------|- `sync-daemon/`: Dosya senkronizasyon servisi (Y1-Q4 temeli)

| **not-api** | Çok kullanıcılı not/etiket API | Node.js, Express, TypeScript, PostgreSQL | Y2-Q1 |- `event-mini-system/`: Olay tabanlı modüller (audit, retry, DLQ) (Y2-Q4)

| **not-ui** | Not API için arayüz | React, TypeScript, Jest, Playwright | Y2-Q2 |

| **sync-daemon** | Dosya senkronizasyon servisi | Rust, systemd, Linux | Y1-Q4 |

| **event-mini-system** | Olay tabanlı mimari | Node.js, RabbitMQ/Kafka, TypeScript | Y2-Q4 |

### Klasör Yapısı (Standart)

```
proje-adı/
├── README.md              # Proje açıklaması
├── ARCHITECTURE.md        # Mimari dokümantasyon
├── package.json           # Bağımlılıklar
├── tsconfig.json          # TypeScript konfigürasyonu
├── .github/
│   └── workflows/
│       └── ci.yml         # CI pipeline
├── src/
│   ├── index.ts
│   ├── routes/
│   ├── models/
│   ├── services/
│   └── __tests__/
├── test/
│   ├── unit/
│   ├── integration/
│   └── e2e/
└── Dockerfile             # Containerization
```

### Geliştirme Ayakkabısı

Tüm projelerde:
- ✅ TypeScript strict mode
- ✅ Birim testleri (Jest)
- ✅ E2E testleri (Playwright)
- ✅ Linting (ESLint)
- ✅ Formatting (Prettier)
- ✅ CI/CD (GitHub Actions)
- ✅ Docker desteği
- ✅ README + ARCHITECTURE.md

### Yönergeler

1. **Başlamadan önce**: Proje README'sini oku
2. **Kurulum**: `npm install` → `npm run dev`
3. **Test**: `npm test` → `npm run test:e2e`
4. **Commit**: Testler geçmeli, linter temiz olmalı
5. **Deploy**: Docker build → Image tarafından push

### Portföy İçin

Her proje bitişinde:
- [ ] ARCHITECTURE.md tamamlandı
- [ ] Test coverage ≥ 80%
- [ ] README güncelendi (kurulum, kullanım, deploy)
- [ ] Demo video veya canlı depo bağlantısı
- [ ] Post-mortem yazıldı (ne öğrenildi?)
