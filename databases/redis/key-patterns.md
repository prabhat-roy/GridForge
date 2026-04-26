# Redis key patterns — GridForge

| Pattern | TTL | Service |
|---|---|---|
| `session:{session_id}` | 24h | session-service |
| `meter:current:{meter_id}` | 5m | ami-meter-cache |
| `tariff:{customer_id}` | 1h | tariff-service |
| `outage:{feeder_id}` | 30m | outage-service |
| `rate:{ip}:{path}` | 60s | api-gateway |
