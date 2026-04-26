# load-balancer

Service in the **derms** domain of GridForge.

**Language:** Go · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/load-balancer/](../../../helm/charts/load-balancer/) — Helm chart
- [manifests/derms/load-balancer/](../../../manifests/derms/load-balancer/) — Raw K8s manifests
