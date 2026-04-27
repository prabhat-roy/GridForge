# AI_PLAN.md â€” GridForge (Energy & Utilities Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the GridForge-specific specialisation.

---

## 1. Why AI in GridForge

The grid is a real-time, safety-critical control system with massive
telemetry: SCADA, PMU, smart meters, weather, EV chargers, DERs. AI
delivers value where rule-based heuristics break:

- Day-ahead and intra-day load forecasting with renewables variance.
- Predictive maintenance of transformers, breakers, transmission lines.
- DER + V2G optimisation (solar, wind, battery, EV).
- SCADA anomaly detection for cyber + physical events.
- Customer-service chatbot to handle the bulk of billing and outage queries.

All AI is advisory to control systems â€” IEC 61850 and NERC CIP forbid
direct AI write to the grid. Decisions are logged, attributable, and
reversible.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Short-term load forecast (15 min â€“ 7 days) | dispatch, planning | NHITS + Temporal Fusion Transformer + weather GNN | 5-min refresh |
| 2 | Renewable generation forecast (PV, wind) | generation | GraphCast-distilled + LightGBM corrector | 15-min refresh |
| 3 | Transformer / breaker predictive maintenance | assets | Survival GBM on DGA + thermal | nightly |
| 4 | SCADA anomaly + cyber-physical detection | security, ops | Autoencoder + Isolation Forest + LLM RCA writeup | <30 s |
| 5 | DER + battery dispatch optimisation | trading, dispatch | OR-Tools + RL + LP solver | <60 s/replan |
| 6 | EV-charger demand & V2G scheduling | emobility | LightGBM + RL | hourly |
| 7 | Outage prediction (storm window) | reliability | Spatio-temporal GNN on weather + topology | per-storm |
| 8 | Customer-service chatbot (billing, outage) | crm | Llama 3.1 70B + RAG over tariff docs | <1.5 s |
| 9 | Theft / non-technical-loss detection | metering, finance | Isolation Forest + GBM on consumption profile | nightly |
| 10 | Drone / lidar transmission-line CV (vegetation, defect) | assets | YOLOv9 + segmentation | <100 ms on edge |
| 11 | Tariff / market-price forecast | trading | NHITS + sentiment on news | hourly |
| 12 | DR (demand-response) program targeting | crm, dr | Uplift modelling | weekly |

---

## 3. Hierarchical Agent Architecture

Reuses OpenClaw / Paperclip / NemoClaw from `ShopOS/AI.md`.

### Tier 0 â€” Master Architect Agent

`grid-architect` â€” researches AI tooling, proposes services, on-boards
Tier-1 leads, weekly written report. Read-only on prod.

### Tier 1 â€” Division Leads (5)

| Agent | Scope |
|-------|-------|
| `grid-dev-lead`        | Backend/frontend service code |
| `grid-devops-lead`     | Helm, GitOps, infra, CI |
| `grid-devsecops-lead`  | OPA, Vault, Cilium, Falco, NERC CIP, IEC 62443 |
| `grid-dataml-lead`     | Feature store, training, drift, edge models |
| `grid-platform-lead`   | Cross-cutting (idempotency, saga, outbox), edge runtime |

### Tier 2 â€” Specialist Agents

By language: Go, Java, Kotlin, Python, Node, Rust, C++ (edge),
TypeScript.

By tool: PostgreSQL, TimescaleDB, MongoDB, Redis, Cassandra,
ClickHouse, InfluxDB, Kafka, NATS, MQTT (Mosquitto / EMQX), OPC-UA,
IEC-61850 gateway, Vault, Keycloak, OPA, Kyverno, Falco, Cilium, Istio,
ArgoCD, Argo Workflows, Prometheus, Grafana, Loki, Jaeger,
OpenTelemetry, MinIO, Trivy, Cosign, OpenSearch, Pulsar, Druid,
KubeEdge / k3s (edge), Nats Operator, OpenFGA, Wazuh, Camunda.

By service â€” one agent per microservice (~190). Owns README,
OpenAPI, tests, CHANGELOG, deps, /healthz.

### Tier 3 â€” Ephemeral Workers

Spawned for retraining load-forecast on weekly data, generating outage
runbooks, building edge bundles for substation gateways.

### Lifecycle

Research â†’ Document â†’ Implement â†’ Test â†’ Review â†’ Deploy â†’ Monitor â†’
Respond â†’ Upgrade â†’ Report. Weekly markdown report in `ai/reports/`.

---

## 4. Separate AI Infrastructure

```
ai-platform/
â”œâ”€â”€ cluster: grid-ai-{aws,gcp,azure}      â† cloud GPU pool
â”œâ”€â”€ cluster: grid-ai-edge                 â† substation k3s + Jetson Orin
â”œâ”€â”€ namespace: grid-ai-control             â† Paperclip
â”œâ”€â”€ namespace: grid-ai-agents              â† OpenClaw runtime
â”œâ”€â”€ namespace: grid-ai-sandbox             â† NemoClaw
â”œâ”€â”€ namespace: grid-ai-models              â† vLLM, Ollama, LiteLLM, Triton
â”œâ”€â”€ namespace: grid-ai-data                â† Qdrant, Weaviate, MinIO, MLflow
â”œâ”€â”€ namespace: grid-ai-obs                 â† Langfuse, Phoenix
â””â”€â”€ namespace: grid-ai-pipelines           â† Argo Workflows
```

### Hardware

- Cloud: A100 for retraining (forecasts, outage GNN); A10G/L4 for LLM.
- Edge (substation): k3s + Jetson Orin running Triton/TensorRT for
  SCADA anomaly + CV from drones / pole cameras.

### Software stack

| Layer | Tool | Purpose |
|-------|------|---------|
| Cloud inference | vLLM, Triton | LLM + vision |
| Edge inference | TensorRT, ONNX Runtime | Substation, line-CV |
| Local dev | Ollama | Offline |
| Gateway | LiteLLM | OpenAI-compatible, quota |
| Orchestrator | Paperclip | Task queue, audit |
| Agent platform | OpenClaw | Llama 3.1 70B |
| Sandbox | NemoClaw | NeMo Guardrails |
| Vector | Qdrant | Tariff & runbook RAG |
| Vector | Weaviate | Multimodal lidar/CV defect |
| MLOps | MLflow | Model registry |
| Workflows | Argo Workflows | Retraining, eval |
| Feature store | Feast | Telemetry features |
| Drift | Evidently | Forecast error, sensor drift |
| LLM obs | Langfuse + Phoenix | Trace, cost, eval |

### Data isolation

- AI plane runs in a separate VPC from OT (operational-technology) network.
- One-way data diodes from OT to AI; AI never writes back.
- PMU / SCADA data hashed and aggregated before any prompt input.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| NERC CIP / IEC 62443 / IEC 61850 | AI is advisory; no direct write to control |
| GDPR / CCPA on smart-meter data | Hashed customer-ID, regional sharding |
| Tariff fairness (regulator) | DR targeting / theft detection audited quarterly for bias |
| Storm-window cyber-physical | NemoClaw blocks LLM tool-calls during declared emergencies |
| Model provenance | All edge bundles Cosign-signed, SLSA 3 attestations |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `grid-ai-*` cloud cluster up; vLLM Llama 3.1 70B |
| 2 | Paperclip + NemoClaw; Tier-0 architect live |
| 3 | Tier-1 leads; load-forecast v0 shadow |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (dispatch â†’ assets first) |
| 6 | Load forecast v1 prod; theft detection v1 |
| 7 | Predictive maintenance v1 on transformers; chatbot pilot |
| 8 | Substation edge fleet rollout, multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- Cloud infra: $5,000 â€“ $7,800 / month per primary cloud
- Edge substation: $2,000 one-time + $50/month ops
- No subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
