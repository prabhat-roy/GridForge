# bess-service

Service in the **battery** domain of GridForge.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bess-service/](../../../helm/charts/bess-service/) — Helm chart
- [manifests/battery/bess-service/](../../../manifests/battery/bess-service/) — Raw K8s manifests
