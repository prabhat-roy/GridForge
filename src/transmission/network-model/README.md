# network-model

Service in the **transmission** domain of GridForge.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/network-model/](../../../helm/charts/network-model/) — Helm chart
- [manifests/transmission/network-model/](../../../manifests/transmission/network-model/) — Raw K8s manifests
