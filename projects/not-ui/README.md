## not-ui (React + TypeScript)## not-ui (React + TypeScript)## not-ui (React + TypeScript)



Frontend notlar arayüzü. Y2-Q2 hedefi: React mimarisi, durum yönetimi, form validasyonu, e2e testler.



### Hızlı BaşlangıçFrontend notlar arayüzü. Y2-Q2 hedefi: React, durum yönetimi, form validasyonu, e2e testler.Q2'de `not-api` için web arayüzü. Komponent kütüphanesi, durum yönetimi ve e2e testleri içerir.



```bash

npm install

npm run dev### Hızlı Başlangıç### Hızlı Başlangıç

# http://localhost:5173

``````bash



### Özellikler```bashnpm install



- Notları listeleme, oluşturma, düzenleme, silmenpm installnpm run dev

- Gerçek zamanlı senkronizasyon (WebSocket)

- Form validasyonu ve hata yönetiminpm run dev# http://localhost:5173

- Erişilebilirlik (WCAG 2.1 AA)

- Dark mode# http://localhost:5173```

- Offline mode (IndexedDB)

- Responsive design (mobil desteği)```



### Test### Özellikler



```bash### Özellikler (Planlanan)- Notları listeleme, oluşturma, silme

npm run test           # Jest birim testleri

npm run test:e2e       # Playwright e2e testleri- Notları listeleme, oluşturma, silme- Gerçek zamanlı senkronizasyon

npm run test:coverage  # Coverage raporu

```- Gerçek zamanlı senkronizasyon (WebSocket)- Form validasyonu ve hata yönetimi



### Derleme- Form validasyonu ve hata yönetimi- Erişilebilirlik (a11y) desteği



```bash- Erişilebilirlik (a11y) desteği

npm run build

npm run preview- Dark mode### Test

```

- Offline mode (localStorage)```bash

### Bağımlılıklar

npm run test

**Runtime**:

- react, react-dom, typescript### Testnpm run test:e2e

- zustand (state management) veya Redux

- react-hook-form, zod (form validasyonu)```

- axios (API client)

```bash

**Dev**:

- jest, @testing-library/reactnpm run test           # Jest birim testleri### Derleme

- playwright

- tailwindcss (styling)npm run test:e2e       # Playwright e2e testleri```bash

- eslint, prettier

npm run test:coverage  # Coverage raporunpm run build

### Mimari Kararlar

```npm run preview

- **State Management**: Zustand (basit) veya Redux (ölçeklenebilir)

- **Styling**: Tailwind CSS (utility-first)```

- **HTTP Client**: Axios (interceptor desteği)

- **Form**: React Hook Form + Zod (lightweight)### Derleme

- **Testing**: Jest + React Testing Library (birim), Playwright (e2e)

```bash

### not-api ile İlişkinpm run build

npm run preview

``````

GET /notes        → Liste görüntüleme

POST /notes       → Not oluşturma### Bağımlılıklar

PUT /notes/:id    → Not düzenleme- react, react-dom, typescript

DELETE /notes/:id → Not silme- jest, playwright (test)

WebSocket         → Gerçek zamanlı güncellemeler- zustand veya redux (state management)

```

### Geliştirme Notları

- Component önce testini yaz (TDD)
- Accessibility checklist: keyboard nav, ARIA labels, color contrast
- Performance: React DevTools Profiler ile check
- Bundle size: `npm run build` sonrası raporu incele
