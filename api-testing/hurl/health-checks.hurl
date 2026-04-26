GET https://api.gridforge.com/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
