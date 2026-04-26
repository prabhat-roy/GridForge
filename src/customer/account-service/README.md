# account-service

Service in the **customer** domain of GridForge.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/account-service/](../../../helm/charts/account-service/) — Helm chart
- [manifests/customer/account-service/](../../../manifests/customer/account-service/) — Raw K8s manifests
