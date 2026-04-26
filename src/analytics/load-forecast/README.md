# load-forecast

Service in the **analytics** domain of GridForge.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/load-forecast/](../../../helm/charts/load-forecast/) — Helm chart
- [manifests/analytics/load-forecast/](../../../manifests/analytics/load-forecast/) — Raw K8s manifests
