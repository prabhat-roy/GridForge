# outage-service

Service in the transmission domain of GridForge.

Language: Go Â· Port: 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/outage-service/](../../../helm/charts/outage-service/) â€” Helm chart
- [manifests/transmission/outage-service/](../../../manifests/transmission/outage-service/) â€” Raw K8s manifests
