# soc-service

Service in the **battery** domain of GridForge.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/soc-service/](../../../helm/charts/soc-service/) — Helm chart
- [manifests/battery/soc-service/](../../../manifests/battery/soc-service/) — Raw K8s manifests
