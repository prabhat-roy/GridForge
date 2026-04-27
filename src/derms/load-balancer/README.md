# load-balancer

Service in the derms domain of GridForge.

Language: Go Â· Port: 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/load-balancer/](../../../helm/charts/load-balancer/) â€” Helm chart
- [manifests/derms/load-balancer/](../../../manifests/derms/load-balancer/) â€” Raw K8s manifests
