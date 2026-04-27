# vpp-service

Service in the derms domain of GridForge.

Language: Go Â· Port: 50144

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vpp-service/](../../../helm/charts/vpp-service/) â€” Helm chart
- [manifests/derms/vpp-service/](../../../manifests/derms/vpp-service/) â€” Raw K8s manifests
