# switching-order

Service in the **transmission** domain of GridForge.

**Language:** Go · **Port:** 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/switching-order/](../../../helm/charts/switching-order/) — Helm chart
- [manifests/transmission/switching-order/](../../../manifests/transmission/switching-order/) — Raw K8s manifests
