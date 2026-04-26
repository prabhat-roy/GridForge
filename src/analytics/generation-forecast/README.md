# generation-forecast

Service in the **analytics** domain of GridForge.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/generation-forecast/](../../../helm/charts/generation-forecast/) — Helm chart
- [manifests/analytics/generation-forecast/](../../../manifests/analytics/generation-forecast/) — Raw K8s manifests
