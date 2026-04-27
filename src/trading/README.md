# trading â€” GridForge

Services in the trading domain.

| Service | Language | Port | Description |
|---|---|---|---|
| trading-service        | java   | 50140 | Energy trading + position management |
| bid-service            | java   | 50141 | Market bid lifecycle (day-ahead, intraday) |
| settlement-service     | java   | 50142 | Settlement + invoicing per ENTSO-E rules |
| imbalance-service      | java   | 50143 | Imbalance pricing + reconciliation |
| price-forecast-service | python | 50144 | Day-ahead price forecast (XGBoost) |
