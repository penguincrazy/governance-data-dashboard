from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root():
    return {
        "message": "Governance Data Dashboard API is running"
    }


@app.get("/api/datasets")
def get_datasets():
    return [
        {
            "id": 1,
            "name": "Sample Governance Indicators",
            "description": "Sample dataset for initial development"
        }
    ]
