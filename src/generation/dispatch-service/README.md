# dispatch-service

Service in the **generation** domain of GridForge.

**Language:** Go · **Port:** 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dispatch-service/](../../../helm/charts/dispatch-service/) — Helm chart
- [manifests/generation/dispatch-service/](../../../manifests/generation/dispatch-service/) — Raw K8s manifests
