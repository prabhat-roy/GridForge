# forecast-service

Service in the **renewable** domain of GridForge.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/forecast-service/](../../../helm/charts/forecast-service/) — Helm chart
- [manifests/renewable/forecast-service/](../../../manifests/renewable/forecast-service/) — Raw K8s manifests
