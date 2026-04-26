# offset-service

Service in the **carbon** domain of GridForge.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/offset-service/](../../../helm/charts/offset-service/) — Helm chart
- [manifests/carbon/offset-service/](../../../manifests/carbon/offset-service/) — Raw K8s manifests
