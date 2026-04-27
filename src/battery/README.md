# battery â€” GridForge

Services in the battery / storage domain.

| Service | Language | Port | Description |
|---|---|---|---|
| bess-service        | java   | 50180 | Battery Energy Storage System (BESS) registry |
| soc-service         | go     | 50181 | State-of-Charge tracking + telemetry |
| charge-scheduler    | python | 50182 | Charge/discharge scheduler (RL) |
| degradation-tracker | python | 50183 | Battery degradation model (physics-informed ML) |
