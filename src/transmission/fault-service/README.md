# fault-service

Service in the **transmission** domain of GridForge.

**Language:** Go · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fault-service/](../../../helm/charts/fault-service/) — Helm chart
- [manifests/transmission/fault-service/](../../../manifests/transmission/fault-service/) — Raw K8s manifests
