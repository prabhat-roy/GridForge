# flexibility-service

Service in the **derms** domain of GridForge.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/flexibility-service/](../../../helm/charts/flexibility-service/) — Helm chart
- [manifests/derms/flexibility-service/](../../../manifests/derms/flexibility-service/) — Raw K8s manifests
