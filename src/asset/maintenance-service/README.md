# maintenance-service

Service in the **asset** domain of GridForge.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/maintenance-service/](../../../helm/charts/maintenance-service/) — Helm chart
- [manifests/asset/maintenance-service/](../../../manifests/asset/maintenance-service/) — Raw K8s manifests
