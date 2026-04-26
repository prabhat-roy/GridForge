# capacity-service

Service in the **market** domain of GridForge.

**Language:** Go · **Port:** 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/capacity-service/](../../../helm/charts/capacity-service/) — Helm chart
- [manifests/market/capacity-service/](../../../manifests/market/capacity-service/) — Raw K8s manifests
