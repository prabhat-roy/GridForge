# imbalance-service

Service in the **trading** domain of GridForge.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/imbalance-service/](../../../helm/charts/imbalance-service/) — Helm chart
- [manifests/trading/imbalance-service/](../../../manifests/trading/imbalance-service/) — Raw K8s manifests
