# grid-ops — GridForge

Services in the **grid-ops** (SCADA / EMS) domain. These run primarily in the OT cluster.

| Service | Language | Port | Description |
|---|---|---|---|
| scada-gateway      | C++    | 50040 | SCADA gateway (DNP3, IEC 61850, Modbus adapters) — OT cluster |
| topology-service   | java   | 50041 | Grid topology and CIM model service |
| state-estimator    | python | 50042 | Real-time state estimator (WLS algorithm) |
| alarm-service      | go     | 50043 | Alarm + event correlation engine |
| command-bus        | rust   | 50044 | OT command bus with break-glass approval |

> The `scada-gateway` is the **only** ingress from OT field devices into the platform.
> All commands flowing IT->OT MUST traverse `command-bus` and present a signed authorisation token (NERC CIP-007 R5).
