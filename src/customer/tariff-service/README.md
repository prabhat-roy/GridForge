# tariff-service

Service in the **customer** domain of GridForge.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tariff-service/](../../../helm/charts/tariff-service/) — Helm chart
- [manifests/customer/tariff-service/](../../../manifests/customer/tariff-service/) — Raw K8s manifests
