# outage-service

Service in the **transmission** domain of GridForge.

**Language:** Go · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/outage-service/](../../../helm/charts/outage-service/) — Helm chart
- [manifests/transmission/outage-service/](../../../manifests/transmission/outage-service/) — Raw K8s manifests
