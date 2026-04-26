# rec-service

Service in the **carbon** domain of GridForge.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rec-service/](../../../helm/charts/rec-service/) — Helm chart
- [manifests/carbon/rec-service/](../../../manifests/carbon/rec-service/) — Raw K8s manifests
