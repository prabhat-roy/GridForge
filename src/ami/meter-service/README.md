# meter-service

Service in the **ami** domain of GridForge.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/meter-service/](../../../helm/charts/meter-service/) — Helm chart
- [manifests/ami/meter-service/](../../../manifests/ami/meter-service/) — Raw K8s manifests
