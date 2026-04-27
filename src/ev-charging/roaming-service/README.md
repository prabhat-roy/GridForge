# roaming-service

Service in the ev-charging domain of GridForge.

Language: Go Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/roaming-service/](../../../helm/charts/roaming-service/) â€” Helm chart
- [manifests/ev-charging/roaming-service/](../../../manifests/ev-charging/roaming-service/) â€” Raw K8s manifests
