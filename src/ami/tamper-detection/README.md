# tamper-detection

Service in the **ami** domain of GridForge.

**Language:** Go · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tamper-detection/](../../../helm/charts/tamper-detection/) — Helm chart
- [manifests/ami/tamper-detection/](../../../manifests/ami/tamper-detection/) — Raw K8s manifests
