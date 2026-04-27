# network-model

Service in the transmission domain of GridForge.

Language: Go Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/network-model/](../../../helm/charts/network-model/) â€” Helm chart
- [manifests/transmission/network-model/](../../../manifests/transmission/network-model/) â€” Raw K8s manifests
