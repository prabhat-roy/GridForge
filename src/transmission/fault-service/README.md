# fault-service

Service in the transmission domain of GridForge.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fault-service/](../../../helm/charts/fault-service/) â€” Helm chart
- [manifests/transmission/fault-service/](../../../manifests/transmission/fault-service/) â€” Raw K8s manifests
