# crew-dispatch

Service in the **workforce** domain of GridForge.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/crew-dispatch/](../../../helm/charts/crew-dispatch/) — Helm chart
- [manifests/workforce/crew-dispatch/](../../../manifests/workforce/crew-dispatch/) — Raw K8s manifests
