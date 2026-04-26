# bid-service

Service in the **trading** domain of GridForge.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bid-service/](../../../helm/charts/bid-service/) — Helm chart
- [manifests/trading/bid-service/](../../../manifests/trading/bid-service/) — Raw K8s manifests
