# scope2-tracker

Service in the **carbon** domain of GridForge.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scope2-tracker/](../../../helm/charts/scope2-tracker/) — Helm chart
- [manifests/carbon/scope2-tracker/](../../../manifests/carbon/scope2-tracker/) — Raw K8s manifests
