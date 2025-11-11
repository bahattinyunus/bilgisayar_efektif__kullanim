## not-ui (React + TypeScript)## not-ui (React + TypeScript)



Frontend notlar arayüzü. Y2-Q2 hedefi: React, durum yönetimi, form validasyonu, e2e testler.Q2'de `not-api` için web arayüzü. Komponent kütüphanesi, durum yönetimi ve e2e testleri içerir.



### Hızlı Başlangıç### Hızlı Başlangıç

```bash

```bashnpm install

npm installnpm run dev

npm run dev# http://localhost:5173

# http://localhost:5173```

```

### Özellikler

### Özellikler (Planlanan)- Notları listeleme, oluşturma, silme

- Notları listeleme, oluşturma, silme- Gerçek zamanlı senkronizasyon

- Gerçek zamanlı senkronizasyon (WebSocket)- Form validasyonu ve hata yönetimi

- Form validasyonu ve hata yönetimi- Erişilebilirlik (a11y) desteği

- Erişilebilirlik (a11y) desteği

- Dark mode### Test

- Offline mode (localStorage)```bash

npm run test

### Testnpm run test:e2e

```

```bash

npm run test           # Jest birim testleri### Derleme

npm run test:e2e       # Playwright e2e testleri```bash

npm run test:coverage  # Coverage raporunpm run build

```npm run preview

```

### Derleme

```bash
npm run build
npm run preview
```

### Bağımlılıklar
- react, react-dom, typescript
- jest, playwright (test)
- zustand veya redux (state management)
