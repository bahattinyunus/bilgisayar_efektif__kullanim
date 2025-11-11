## Projeler## Projeler## Projeler



Örnek proje iskeletleri. Her proje, testler, CI ve dokümantasyon içerir.



### Proje ListesiÖrnek proje iskeletleri. Her proje, testler, CI ve dokümantasyon içerir.Örnek proje iskeletleri. Her proje, testler, CI ve dokümantasyon içerir.



| Proje | Hedef | Teknoloji | Dönem |

|-------|-------|-----------|-------|

| **not-api** | Çok kullanıcılı not/etiket API | Node.js, Express, TypeScript, PostgreSQL | Y2-Q1 |### Proje Listesi### Klasörler

| **not-ui** | Not API için arayüz | React, TypeScript, Jest, Playwright | Y2-Q2 |

| **sync-daemon** | Dosya senkronizasyon servisi | Rust, systemd, Linux | Y1-Q4 |- `not-api/`: Çok kullanıcılı not/etiket API (Q1)

| **event-mini-system** | Olay tabanlı mimari | Node.js, RabbitMQ/Kafka, TypeScript | Y2-Q4 |

| Proje | Hedef | Teknoloji | Dönem |- `not-ui/`: Not API için React + TS arayüz (Q2)

### Standart Klasör Yapısı

|-------|-------|-----------|-------|- `sync-daemon/`: Dosya senkronizasyon servisi (Y1-Q4 temeli)

```

proje-adı/| **not-api** | Çok kullanıcılı not/etiket API | Node.js, Express, TypeScript, PostgreSQL | Y2-Q1 |- `event-mini-system/`: Olay tabanlı modüller (audit, retry, DLQ) (Y2-Q4)

├── README.md              # Proje açıklaması

├── ARCHITECTURE.md        # Mimari dokümantasyon| **not-ui** | Not API için arayüz | React, TypeScript, Jest, Playwright | Y2-Q2 |

├── package.json           # Bağımlılıklar

├── tsconfig.json          # TypeScript konfigürasyonu| **sync-daemon** | Dosya senkronizasyon servisi | Rust, systemd, Linux | Y1-Q4 |

├── .github/

│   └── workflows/| **event-mini-system** | Olay tabanlı mimari | Node.js, RabbitMQ/Kafka, TypeScript | Y2-Q4 |

│       └── ci.yml         # CI pipeline

├── src/### Klasör Yapısı (Standart)

│   ├── index.ts

│   ├── routes/```

│   ├── models/proje-adı/

│   ├── services/├── README.md              # Proje açıklaması

│   └── __tests__/├── ARCHITECTURE.md        # Mimari dokümantasyon

├── test/├── package.json           # Bağımlılıklar

│   ├── unit/├── tsconfig.json          # TypeScript konfigürasyonu

│   ├── integration/├── .github/

│   └── e2e/│   └── workflows/

└── Dockerfile             # Containerization│       └── ci.yml         # CI pipeline

```├── src/

│   ├── index.ts

### Kalite Standartları│   ├── routes/

│   ├── models/

Tüm projelerde:│   ├── services/

- ✅ TypeScript strict mode│   └── __tests__/

- ✅ Birim testleri (Jest) - coverage ≥ 80%├── test/

- ✅ E2E testleri (Playwright)│   ├── unit/

- ✅ Linting (ESLint) + Formatting (Prettier)│   ├── integration/

- ✅ CI/CD pipeline (GitHub Actions)│   └── e2e/

- ✅ Docker desteği└── Dockerfile             # Containerization

- ✅ Kapsamlı README ve ARCHITECTURE.md```



### Geliştirme Akışı### Geliştirme Ayakkabısı



1. **Başlama**: Proje README'sini okuTüm projelerde:

2. **Kurulum**: `npm install` → `npm run dev`- ✅ TypeScript strict mode

3. **Geliştirme**: Test odaklı (TDD)- ✅ Birim testleri (Jest)

4. **Testleme**: `npm test` → `npm run test:e2e`- ✅ E2E testleri (Playwright)

5. **Commit**: Lint ve testler geçmeli- ✅ Linting (ESLint)

6. **Deployment**: Docker build → Registry push- ✅ Formatting (Prettier)

- ✅ CI/CD (GitHub Actions)

### Proje Bitişi Checklist- ✅ Docker desteği

- ✅ README + ARCHITECTURE.md

Her proje tamamlandığında:

- [ ] ARCHITECTURE.md hazırlandı### Yönergeler

- [ ] Test coverage ≥ 80%

- [ ] README güncellendi (kurulum, kullanım, deploy)1. **Başlamadan önce**: Proje README'sini oku

- [ ] Canlı demo link veya video2. **Kurulum**: `npm install` → `npm run dev`

- [ ] Post-mortem yazıldı (öğrenilen dersler)3. **Test**: `npm test` → `npm run test:e2e`

- [ ] GitHub Actions CI/CD aktif4. **Commit**: Testler geçmeli, linter temiz olmalı

- [ ] Docker image published5. **Deploy**: Docker build → Image tarafından push


### Portföy İçin

Her proje bitişinde:
- [ ] ARCHITECTURE.md tamamlandı
- [ ] Test coverage ≥ 80%
- [ ] README güncelendi (kurulum, kullanım, deploy)
- [ ] Demo video veya canlı depo bağlantısı
- [ ] Post-mortem yazıldı (ne öğrenildi?)
