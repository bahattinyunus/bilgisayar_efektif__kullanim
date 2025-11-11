## not-api (Node.js + Express + TypeScript)

Backend notlar API'si. Y2-Q1 hedefi: REST, auth, logging, PostgreSQL entegrasyonu.

### Hızlı Başlangıç

```bash
npm install
npm run dev
# http://localhost:3000/health
```

### Örnek İstekler
- `GET /health` → `{ status: "ok" }`
- `GET /notes` → Tüm notlar
- `POST /notes` → `{ title: string, content?: string }`
- `DELETE /notes/:id` → Not silme

### Derleme/Çalıştırma

```bash
npm run build
npm start
```

### Özellikleri (Planlanan)
- TypeScript strict mode
- PostgreSQL ile persistent depolama
- JWT tabanlı auth
- Birim testleri (Jest)
- API dokümantasyonu (Swagger/OpenAPI)
- Error handling ve logging

### Bağımlılıklar
- express, typescript, pg
- jest (test)



