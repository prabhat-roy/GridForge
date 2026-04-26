# scada-gateway

SCADA gateway (DNP3, IEC 61850, Modbus adapters)

**Domain:** ``grid-ops`` · **Language:** C++ · **Port:** 50040 (HTTP), 102 (IEC 61850), 502 (Modbus), 20000 (DNP3)

## Run locally

```bash
make build
make run
```

## OT cluster

This service is deployed in the **OT cluster** (on-prem, air-gapped). It is the only ingress
from field devices into GridForge. Outbound traffic to the IT cluster goes through the
unidirectional data diode at the IT/OT DMZ boundary.

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``
- DNP3 (TCP/20000) — RTU/IED communication
- IEC 61850 MMS (TCP/102) — substation automation
- Modbus TCP (TCP/502) — legacy meter / RTU integration

## See also

- [proto/grid-ops/scada-gateway.proto](../../../proto/grid-ops/scada-gateway.proto)
- [helm/charts/scada-gateway/](../../../helm/charts/scada-gateway/)
- [ot/](../../../ot/) — on-prem OT cluster overlay
