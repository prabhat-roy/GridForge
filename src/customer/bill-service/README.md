# bill-service

Service in the **customer** domain of GridForge.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bill-service/](../../../helm/charts/bill-service/) — Helm chart
- [manifests/customer/bill-service/](../../../manifests/customer/bill-service/) — Raw K8s manifests
