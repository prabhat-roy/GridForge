# Source Code — GridForge

Backend services organised by business domain. Each domain has its own folder; each
service inside a domain has its own subfolder with a complete project layout
(Dockerfile, Makefile, `.env.example`, language-specific build file, source tree).

## Domains (17)

- [`platform/`](platform/) — 5 services (api-gateway, ops-bff, customer-bff, trader-bff, graphql-gateway)
- [`identity/`](identity/) — 5 services (auth, operator-sso, customer-sso, mfa, rbac)
- [`grid-ops/`](grid-ops/) — 5 services (SCADA gateway, topology, state estimator, alarm, command bus)
- [`generation/`](generation/) — 5 services (plant, dispatch, curtailment, unit commitment, fuel)
- [`renewable/`](renewable/) — 5 services (solar, wind, forecast, curtailment optimiser, hydro)
- [`transmission/`](transmission/) — 5 services (network model, outage, fault, switching order, feeder)
- [`ami/`](ami/) — 6 services (meter, reading, MDM, tamper detection, HES, event router)
- [`trading/`](trading/) — 5 services (trading, bid, settlement, imbalance, price forecast)
- [`derms/`](derms/) — 5 services (DER, flexibility, DR program, load balancer, VPP)
- [`battery/`](battery/) — 4 services (BESS, SoC, charge scheduler, degradation tracker)
- [`ev-charging/`](ev-charging/) — 5 services (EV, OCPP gateway, roaming, load mgmt, billing)
- [`customer/`](customer/) — 6 services (account, tariff, bill, green tariff, solar export, self-service)
- [`asset/`](asset/) — 4 services (asset, maintenance, inspection, lifecycle)
- [`carbon/`](carbon/) — 5 services (carbon, REC, scope-2, reporting, offset)
- [`workforce/`](workforce/) — 4 services (workforce, work order, crew dispatch, mobile GIS)
- [`analytics/`](analytics/) — 4 services (load forecast, generation forecast, revenue, loss)
- [`market/`](market/) — 4 services (market, settlement gateway, balancing mechanism, capacity)

Total: **77 services**.

## Conventions

- One folder per service; one main entry file per language (`main.go`, `Application.java`, `main.py`, `main.rs`, `main.cpp`, etc.)
- Every service exposes `/healthz` returning `{ "status": "ok" }`
- Every service ships a `Dockerfile` (multi-stage, non-root, minimal base) and a `Makefile`
- gRPC contracts live in [`../proto/<domain>/<service>.proto`](../proto/)
- Kafka / MQTT / AMQP schemas live in [`../events/`](../events/)

## Languages used

- **Go** (1.24): high-throughput stateless services (gateways, BFFs, AMI ingest, dispatch, audit)
- **Java 21 / Spring Boot 3.3**: stateful business services (trading, settlement, asset, grid model)
- **Kotlin / Spring Boot 3.3**: customer billing, tariff engine, EV billing
- **Python 3.12 / FastAPI**: ML/forecasting (load forecast, DERMS optimiser, tamper detection)
- **Rust 1.80 / Actix**: deterministic-latency services (auth, OCPP gateway, OT command bus)
- **Scala 2.13 / Flink**: real-time stream processing on grid telemetry (in `streaming/flink/`)
- **C++ 20**: SCADA adapters (DNP3, IEC 61850, Modbus) — `grid-ops/scada-gateway`
