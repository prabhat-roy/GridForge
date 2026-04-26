# mdm-service

Service in the **ami** domain of GridForge.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mdm-service/](../../../helm/charts/mdm-service/) — Helm chart
- [manifests/ami/mdm-service/](../../../manifests/ami/mdm-service/) — Raw K8s manifests
