# reading-service

Service in the **ami** domain of GridForge.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/reading-service/](../../../helm/charts/reading-service/) — Helm chart
- [manifests/ami/reading-service/](../../../manifests/ami/reading-service/) — Raw K8s manifests
