CREATE EXTENSION IF NOT EXISTS timescaledb;

CREATE TABLE meter_read (
    meter_id   TEXT,
    read_time  TIMESTAMPTZ NOT NULL,
    kwh        NUMERIC(12,3) NOT NULL,
    voltage_v  NUMERIC(8,2),
    PRIMARY KEY (meter_id, read_time)
);

SELECT create_hypertable('meter_read', 'read_time', chunk_time_interval => interval '1 day');
SELECT add_retention_policy('meter_read', INTERVAL '7 years');
