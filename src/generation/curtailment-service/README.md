# curtailment-service

Service in the **generation** domain of GridForge.

**Language:** Go · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/curtailment-service/](../../../helm/charts/curtailment-service/) — Helm chart
- [manifests/generation/curtailment-service/](../../../manifests/generation/curtailment-service/) — Raw K8s manifests
