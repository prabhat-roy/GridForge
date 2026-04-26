# charge-scheduler

Service in the **battery** domain of GridForge.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/charge-scheduler/](../../../helm/charts/charge-scheduler/) — Helm chart
- [manifests/battery/charge-scheduler/](../../../manifests/battery/charge-scheduler/) — Raw K8s manifests
