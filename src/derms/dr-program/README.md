# dr-program

Service in the **derms** domain of GridForge.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dr-program/](../../../helm/charts/dr-program/) — Helm chart
- [manifests/derms/dr-program/](../../../manifests/derms/dr-program/) — Raw K8s manifests
