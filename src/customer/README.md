# customer — GridForge

Services in the **customer** domain.

| Service | Language | Port | Description |
|---|---|---|---|
| account-service       | java   | 50220 | Customer account + service connection |
| tariff-service        | kotlin | 50221 | Tariff engine (TOU, dynamic, green) |
| bill-service          | kotlin | 50222 | Customer billing + invoice generation |
| green-tariff-service  | kotlin | 50223 | Green / renewable tariff registration |
| solar-export-service  | kotlin | 50224 | Solar export / feed-in tariff settlement |
| self-service-api      | go     | 50225 | Self-service portal API |
