# billing-service

Service in the **ev-charging** domain of GridForge.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/billing-service/](../../../helm/charts/billing-service/) — Helm chart
- [manifests/ev-charging/billing-service/](../../../manifests/ev-charging/billing-service/) — Raw K8s manifests
