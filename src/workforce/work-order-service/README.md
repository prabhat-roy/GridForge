# work-order-service

Service in the **workforce** domain of GridForge.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/work-order-service/](../../../helm/charts/work-order-service/) — Helm chart
- [manifests/workforce/work-order-service/](../../../manifests/workforce/work-order-service/) — Raw K8s manifests
