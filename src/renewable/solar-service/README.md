# solar-service

Service in the **renewable** domain of GridForge.

**Language:** Go · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/solar-service/](../../../helm/charts/solar-service/) — Helm chart
- [manifests/renewable/solar-service/](../../../manifests/renewable/solar-service/) — Raw K8s manifests
