# der-service

Service in the **derms** domain of GridForge.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/der-service/](../../../helm/charts/der-service/) — Helm chart
- [manifests/derms/der-service/](../../../manifests/derms/der-service/) — Raw K8s manifests
