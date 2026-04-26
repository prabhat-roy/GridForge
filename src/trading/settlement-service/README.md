# settlement-service

Service in the **trading** domain of GridForge.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/settlement-service/](../../../helm/charts/settlement-service/) — Helm chart
- [manifests/trading/settlement-service/](../../../manifests/trading/settlement-service/) — Raw K8s manifests
