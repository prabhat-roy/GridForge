import os
from datetime import datetime, timezone
from fastapi import FastAPI

app = FastAPI(title="state-estimator", version="0.1.0", description="Real-time state estimator (WLS algorithm)")


@app.get("/healthz")
def health() -> dict:
    return {
        "status": "ok",
        "service": "state-estimator",
        "checked_at": datetime.now(timezone.utc).isoformat(),
    }


if __name__ == "__main__":
    import uvicorn

    port = int(os.environ.get("PORT", "50042"))
    uvicorn.run(app, host="0.0.0.0", port=port)
