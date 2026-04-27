# ami â€” GridForge

Services in the AMI (Advanced Metering Infrastructure) domain.

| Service | Language | Port | Description |
|---|---|---|---|
| meter-service        | go     | 50120 | Smart meter master data + lifecycle |
| reading-service      | go     | 50121 | Meter reading capture + 15-min interval ingestion |
| mdm-service          | java   | 50122 | Meter Data Management (MDM) with VEE |
| tamper-detection     | python | 50123 | Tamper / non-technical-loss detection (GNN) |
| hes-service          | go     | 50124 | Head-End System for AMI device communication (MQTT) |
| meter-event-router   | go     | 50125 | Demand-side meter event router |

> All ingestion is idempotent on `(meter_id, read_time)`. The HES talks MQTT to meters; downstream events go to Kafka topic `ami.meter.read.captured`.
