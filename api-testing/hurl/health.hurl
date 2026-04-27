# Health check for all critical services
GET https://gridforge.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.gridforge.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
