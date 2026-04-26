# wind-service

Service in the **renewable** domain of GridForge.

**Language:** Go · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wind-service/](../../../helm/charts/wind-service/) — Helm chart
- [manifests/renewable/wind-service/](../../../manifests/renewable/wind-service/) — Raw K8s manifests
