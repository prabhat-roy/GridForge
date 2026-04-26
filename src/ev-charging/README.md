# ev-charging — GridForge

Services in the **EV charging** domain.

| Service | Language | Port | Description |
|---|---|---|---|
| ev-service              | java   | 50200 | EV driver + vehicle account |
| ocpp-gateway            | rust   | 50201 | OCPP 2.0.1 central system / charge-point gateway |
| roaming-service         | java   | 50202 | OCPI / Hubject roaming integration |
| load-management-service | python | 50203 | Smart charging load management (OSCP 2.0) |
| ev-billing-service      | kotlin | 50204 | EV charging session billing |

> The `ocpp-gateway` terminates WebSocket from charge points and emits canonical Kafka events on `ev-charging.session.started/ended`.
