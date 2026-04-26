CREATE DATABASE IF NOT EXISTS gridforge_analytics;

CREATE TABLE IF NOT EXISTS gridforge_analytics.energy_consumption_hourly (
    customer_id     String,
    hour            DateTime,
    kwh             Decimal(12,3),
    cost_minor      Int64,
    rate_class      LowCardinality(String)
) ENGINE = SummingMergeTree
ORDER BY (customer_id, hour)
PARTITION BY toYYYYMM(hour)
TTL hour + INTERVAL 5 YEAR;
