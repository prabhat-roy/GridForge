# vpp-service

Service in the **derms** domain of GridForge.

**Language:** Go · **Port:** 50144

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vpp-service/](../../../helm/charts/vpp-service/) — Helm chart
- [manifests/derms/vpp-service/](../../../manifests/derms/vpp-service/) — Raw K8s manifests
