## event-mini-system

Olay tabanlı mimari örnekleri (Y2-Q4 capstone). Audit log, retry, Dead Letter Queue (DLQ) pattern'ları.

### Amaç
- Basit yayınla/abonelik (pub/sub) akışları
- Idempotency ve yeniden deneme stratejileri
- Ölçüm ve gözlemlenebilirlik

### Mimari

```
┌─────────────┐
│  Producer   │  Olayları yayınlar
└──────┬──────┘
       │
    ┌──▼──────────────┐
    │ Event Bus       │
    │ (RabbitMQ/Kafka)│
    └──┬──────┬───┬───┘
       │      │   │
    ┌──▼──┐ ┌─▼──▼────┐
    │Audit│ │Handlers  │
    │Log  │ │          │
    └──────┘ └──┬──────┘
               │
          ┌────▼─────┐
          │  Retry   │
          │  &  DLQ  │
          └──────────┘
```

### Özellikler

- **Event Schema**: Typed events (TypeScript/Protobuf)
- **Audit Log**: Tüm olayların kalıcı kaydı
- **Retry Logic**: Exponential backoff ile yeniden deneme
- **DLQ**: Başarısız olaylar için karantina
- **Idempotency**: Tekrarlı olayları yönetme
- **Monitoring**: Prometheus metrics

### Örnekler

```typescript
// Event yayınla
await eventBus.publish({
  type: 'user.created',
  userId: '123',
  email: 'user@example.com',
});

// Handler ile dinle
eventBus.subscribe('user.created', async (event) => {
  // İdempotent işlem
  await sendWelcomeEmail(event.email);
});

// Başarısız olursa DLQ'ye git
// Sonra retry queue'ye al
```

### Bağımlılıklar
- Node.js/Express + TypeScript
- RabbitMQ veya Kafka
- PostgreSQL (audit log)
- Prometheus (monitoring)
