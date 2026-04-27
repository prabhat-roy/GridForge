# ocpp-gateway

Service in the ev-charging domain of GridForge.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ocpp-gateway/](../../../helm/charts/ocpp-gateway/) â€” Helm chart
- [manifests/ev-charging/ocpp-gateway/](../../../manifests/ev-charging/ocpp-gateway/) â€” Raw K8s manifests
