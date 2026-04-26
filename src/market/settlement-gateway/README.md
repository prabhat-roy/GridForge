# settlement-gateway

Service in the **market** domain of GridForge.

**Language:** Go · **Port:** 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/settlement-gateway/](../../../helm/charts/settlement-gateway/) — Helm chart
- [manifests/market/settlement-gateway/](../../../manifests/market/settlement-gateway/) — Raw K8s manifests
