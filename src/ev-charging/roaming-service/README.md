# roaming-service

Service in the **ev-charging** domain of GridForge.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/roaming-service/](../../../helm/charts/roaming-service/) — Helm chart
- [manifests/ev-charging/roaming-service/](../../../manifests/ev-charging/roaming-service/) — Raw K8s manifests
