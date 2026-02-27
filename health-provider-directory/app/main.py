from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Health Provider Directory API running"}

@app.get("/providers")
def list_providers():
    return {"providers": []}