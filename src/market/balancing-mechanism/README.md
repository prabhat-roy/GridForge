# balancing-mechanism

Service in the **market** domain of GridForge.

**Language:** Go · **Port:** 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/balancing-mechanism/](../../../helm/charts/balancing-mechanism/) — Helm chart
- [manifests/market/balancing-mechanism/](../../../manifests/market/balancing-mechanism/) — Raw K8s manifests
