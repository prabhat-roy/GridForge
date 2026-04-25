# GridForge — Smart Grid & Energy Management Platform

Enterprise-grade, cloud-native energy management platform built on open source technologies.
Covers the full energy value chain — power generation (renewable + conventional), grid operations,
energy trading, demand response, smart metering, EV charging infrastructure, battery storage
management, and customer energy services — designed for utilities, energy retailers, grid operators,
and renewable energy developers. Compliant with NERC CIP, IEC 61968/61970 (CIM), and ENTSO-E standards.

---

## Overview

| Attribute         | Value                                                              |
|-------------------|--------------------------------------------------------------------|
| Type              | Smart Grid · DERMS · SCADA · Energy Trading · EV Charging          |
| Domains           | 17 business domains                                                |
| Services          | 190+ microservices                                                 |
| Languages         | Go, Java, Kotlin, Python, Rust, Scala, C++ (SCADA adapters)        |
| Standards         | IEC 61968, IEC 61970 (CIM), IEC 61850, OSCP, OCPP 2.0.1, ENTSO-E  |
| Compliance        | NERC CIP, IEC 62351, ISO 27001, GDPR (smart meter data)            |
| Databases         | PostgreSQL, TimescaleDB, InfluxDB, Cassandra, Redis, ClickHouse    |
| Message Broker    | Apache Kafka, MQTT, NATS JetStream, AMQP (for SCADA)               |
| Cloud             | AWS (primary), Azure (secondary), On-premise (OT network air-gap)  |
| Orchestration     | Kubernetes (EKS) + on-premise K8s (OT / SCADA environment)         |
| IoT Integration   | IEC 61850, DNP3, Modbus, MQTT — smart meters, sensors, SCADA       |
| Frontend          | React (grid ops dashboard), Angular (energy trader portal), Next.js (customer portal), Flutter (mobile) |

---

## Business Domains

| # | Domain                     | Key Services                                                          |
|---|----------------------------|-----------------------------------------------------------------------|
| 1 | Grid Operations (SCADA)    | scada-gateway, topology-service, state-estimator, alarm-service       |
| 2 | Generation Management      | generation-service, plant-service, dispatch-service, curtailment      |
| 3 | Renewable Energy            | solar-service, wind-service, forecast-service, curtailment-optimizer  |
| 4 | Transmission & Distribution | network-model-service, outage-service, fault-service, switching-order|
| 5 | Smart Metering (AMI)       | meter-service, reading-service, mdm-service, tamper-detection, hes    |
| 6 | Energy Trading             | trading-service, bid-service, settlement-service, imbalance-service   |
| 7 | Demand Response (DERMS)    | der-service, flexibility-service, dr-program, load-balancer, vpp      |
| 8 | Battery & Storage          | bess-service, soc-service, charge-scheduler, degradation-tracker      |
| 9 | EV Charging Infrastructure | ev-service, ocpp-gateway, roaming-service, load-management, billing   |
| 10 | Customer Energy Services   | account-service, tariff-service, bill-service, green-tariff, solar-export |
| 11 | Asset Management           | asset-service, maintenance-service, inspection, lifecycle-tracker     |
| 12 | Carbon & Sustainability    | carbon-service, rec-service, scope2-tracker, reporting, offset        |
| 13 | Field Workforce            | workforce-service, work-order, crew-dispatch, mobile-gis              |
| 14 | Analytics & Forecasting    | load-forecast, generation-forecast, revenue-analytics, loss-analytics |
| 15 | Market Integration         | market-service, settlement-gateway, balancing-mechanism, capacity     |
| 16 | Identity & Access          | auth-service, operator-sso, customer-sso, mfa, rbac-service           |
| 17 | Platform                   | api-gateway, ops-bff, customer-bff, trader-bff, graphql-gateway       |

---

## Architecture

```
    ┌─────────────────────────────────────────────────────────────────┐
    │                   IT Network (Cloud / DMZ)                       │
    │  ┌──────────────────────────────────────────────────────────┐   │
    │  │                     API Gateway                          │   │
    │  │     (OAuth2 · mTLS · Rate Limit · NERC CIP Auth)        │   │
    │  └──────┬─────────────┬──────────────┬──────────────────────┘   │
    │         │             │              │                           │
    │  ┌──────▼──┐   ┌──────▼───┐   ┌──────▼──────────┐              │
    │  │Grid Ops │   │Customer  │   │ Energy Trader   │              │
    │  │Dashboard│   │  Portal  │   │  Portal         │              │
    │  │ (React) │   │(Next.js) │   │  (Angular)      │              │
    │  └──────┬──┘   └──────┬───┘   └──────┬──────────┘              │
    │         └─────────────┴──────────────┘                          │
    │                        │ gRPC (Istio mTLS)                       │
    │  ┌──────────┐  ┌────────▼───┐  ┌──────────┐  ┌──────────────┐  │
    │  │  Energy  │  │  Smart     │  │   EV     │  │  Trading &   │  │
    │  │ Trading  │  │  Metering  │  │ Charging │  │  Settlement  │  │
    │  └──────────┘  └────────────┘  └──────────┘  └──────────────┘  │
    └──────────────────────────┬──────────────────────────────────────┘
                  IT/OT DMZ    │ (unidirectional data diode)
    ┌─────────────────────────▼──────────────────────────────────────┐
    │                  OT Network (Air-Gapped / On-Premise)           │
    │  ┌────────────────┐    ┌──────────────┐    ┌─────────────────┐ │
    │  │  SCADA Gateway │    │  IEC 61850   │    │  DNP3 / Modbus  │ │
    │  │  (EMS / DMS)   │    │  Substation  │    │  RTU Adapters   │ │
    │  └────────┬───────┘    └──────┬───────┘    └────────┬────────┘ │
    │           │                   │                      │          │
    │     Smart Meters        Substations           SCADA RTUs        │
    └────────────────────────────────────────────────────────────────┘
```

---

## Tech Stack

### Energy & Grid Standards
- **IEC 61970 / 61968 (CIM)**: Common Information Model — canonical data model for grid topology, assets, and market
- **IEC 61850**: Substation automation protocol (GOOSE, Sampled Values, MMS) for real-time protection and control
- **DNP3 / Modbus**: Legacy SCADA protocols — adapter service translates to internal canonical model
- **OCPP 2.0.1**: Open Charge Point Protocol — EV charger communication and management standard
- **ENTSO-E**: European energy market standards (CIM profiles for cross-border electricity trading)
- **OSCP 2.0**: Open Smart Charging Protocol — EV charging flexibility for grid balancing

### Infrastructure
- **IT Layer**: Kubernetes on EKS — all business applications, trading, billing, analytics, customer services
- **OT Layer**: On-premise Kubernetes cluster (air-gapped) — SCADA gateway, IEC 61850 services, real-time control
- **IT/OT DMZ**: Unidirectional data diode (Waterfall Security / open source equivalent) — OT data flows to IT only, never reverse
- **Time-Series**: TimescaleDB (meter readings, sensor telemetry); InfluxDB (high-frequency SCADA measurements — 1-second resolution)
- **Real-time**: NATS JetStream (grid event distribution, sub-100ms latency); MQTT (meter communication via HES)

### CI/CD & GitOps
- **CI**: Jenkins (primary), GitLab CI (self-hosted, air-gapped for OT), Tekton
- **CD**: ArgoCD (IT layer), Flux CD (OT layer — change-controlled, manual promotion gates for production OT)
- **IaC**: Terraform (EKS + VPC), Ansible (OT server hardening to NERC CIP standards)
- **Change Control**: 4-eyes approval + maintenance window enforcement for OT deployments (NERC CIP-007)
- **Secrets**: HashiCorp Vault (IT) + SOPS (OT — air-gapped, HSM-backed key management)

### Observability
- **Metrics**: Prometheus + Grafana (grid frequency, voltage, generation output, EV charger availability)
- **Logs**: Loki + Fluent Bit (NERC CIP: 90-day audit log retention, tamper-evident)
- **Traces**: Jaeger + OpenTelemetry (trace demand response command from trigger → DER → grid response)
- **Grid Dashboard**: Real-time single-line diagram on Grafana (grid topology, power flows, fault locations)
- **SLOs**: SCADA data latency < 2s, smart meter reading success rate > 99.5%, EV charger availability > 99%

### Security (NERC CIP)
- **IT/OT Separation**: Physical + logical network separation; unidirectional data diode at DMZ boundary
- **Identity**: Keycloak (operator MFA mandatory — NERC CIP-006), SPIFFE/SPIRE (service identity), Teleport (privileged OT access with session recording)
- **Network**: Cilium eBPF (IT), dedicated VLANs + firewall rules (OT), IEC 62351 (encrypted IEC 61850)
- **Scanning**: Trivy, Semgrep (ICS security rules), NESSUS (OT vulnerability scanning), kube-bench
- **Policy**: OPA/Gatekeeper, Kyverno, Falco (IT); IDS/IPS (OT — Zeek + Suricata)
- **Audit**: Every operator action on SCADA logged (NERC CIP-007 R5) — immutable, 90-day minimum retention
- **Incident Response**: Automated isolation playbook (Argo Workflows) — detect anomaly → isolate → alert NOC

### AI / ML (Grid Intelligence)
- **Load Forecasting**: LSTM + weather model — 15-min ahead load forecast for grid dispatch (MAPE < 2%)
- **Renewable Generation Forecast**: Ensemble model (NWP + historical) — solar and wind output 48h ahead
- **Fault Detection & Classification**: CNN on SCADA waveform data — detect and classify faults in <100ms
- **Non-Technical Loss Detection**: Graph neural network — identify electricity theft via smart meter anomaly patterns
- **Battery Degradation**: Physics-informed ML model (capacity fade prediction per cycle)
- **EV Load Optimisation**: RL agent for smart charging scheduling — minimise grid stress, maximise renewable usage
- **Price Forecasting**: Day-ahead electricity price prediction (XGBoost + market feature engineering)

---

## Key Design Decisions

1. **Hard IT/OT separation**: Unidirectional data diode enforces one-way data flow from OT to IT — a compromised IT system cannot send commands to grid equipment
2. **CIM as canonical model**: All grid data normalised to IEC CIM — protocol adapters (DNP3, Modbus, IEC 61850) translate at ingest; downstream services never deal with raw protocols
3. **NERC CIP-compliant change control**: OT deployments require RFC, maintenance window, 4-eyes approval, and post-change verification — enforced via Flux CD promotion gates
4. **Real-time separated from analytics**: SCADA real-time path (sub-100ms) is completely separate from analytics path — no shared infrastructure that could cause latency spikes in grid control
5. **VPP (Virtual Power Plant)**: Aggregated DERs (solar, batteries, flexible loads) managed as a single dispatchable resource — participates in balancing markets
6. **OCPP 2.0.1 with smart charging**: EV chargers receive dynamic charging profiles based on grid state — prevent local grid overload during peak EV charging periods

---

## Compliance Controls

| Standard          | Implementation                                                         |
|-------------------|------------------------------------------------------------------------|
| NERC CIP-002      | Critical asset identification, BES Cyber System classification         |
| NERC CIP-005      | ESP (Electronic Security Perimeter) — IT/OT DMZ, data diode           |
| NERC CIP-006      | Physical security — MFA + biometric for OT control room access         |
| NERC CIP-007      | System security management — patch management, port control, logging   |
| NERC CIP-010      | Configuration management — baseline + change detection (Falco + Wazuh)|
| IEC 62351         | Encrypted IEC 61850 communication (TLS 1.3)                            |
| GDPR              | Smart meter data minimisation, consent, anonymisation for analytics    |

---

## Status

- [ ] Architecture design & CIM data model
- [ ] Service registry & proto definitions
- [ ] SCADA gateway (IEC 61850 + DNP3 + Modbus adapters)
- [ ] OCPP 2.0.1 EV charging gateway
- [ ] AMI / HES smart meter integration
- [ ] Service skeletons (healthz, metrics)
- [ ] Docker Compose (local dev with SCADA simulator)
- [ ] Helm charts (IT layer) + K8s manifests (OT layer)
- [ ] CI/CD pipelines (Jenkins, GitLab CI)
- [ ] GitOps (ArgoCD IT + Flux CD OT)
- [ ] NERC CIP security controls
- [ ] Grid AI forecasting services
