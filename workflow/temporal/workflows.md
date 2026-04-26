# GridForge Workflows on Temporal

| Workflow | Service | Trigger |
|---|---|---|
| OutageRestorationFlow | transmission/outage | Outage detected |
| MeterReplacementFlow | ami/meter | Meter end-of-life |
| EnergyTradingSettlementFlow | trading/settlement | Daily market close |
| EvChargingSessionFlow | ev-charging/session | Session start |
| BillingRunFlow | customer/billing | Monthly cycle |
