# inspection-service

Service in the **asset** domain of GridForge.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inspection-service/](../../../helm/charts/inspection-service/) — Helm chart
- [manifests/asset/inspection-service/](../../../manifests/asset/inspection-service/) — Raw K8s manifests
