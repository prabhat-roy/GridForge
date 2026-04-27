# analytics â€” GridForge

Services in the analytics & forecasting domain (online services; batch jobs live in `analytics/`).

| Service | Language | Port | Description |
|---|---|---|---|
| load-forecast-service       | python | 50300 | Short-term load forecast (LSTM) |
| generation-forecast-service | python | 50301 | Generation forecast aggregator |
| revenue-analytics-service   | python | 50302 | Revenue analytics on ClickHouse |
| loss-analytics-service      | python | 50303 | Network loss / theft analytics |
