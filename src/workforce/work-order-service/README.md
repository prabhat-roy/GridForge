# work-order-service

Service in the workforce domain of GridForge.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/work-order-service/](../../../helm/charts/work-order-service/) â€” Helm chart
- [manifests/workforce/work-order-service/](../../../manifests/workforce/work-order-service/) â€” Raw K8s manifests
