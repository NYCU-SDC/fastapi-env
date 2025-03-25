from fastapi import FastAPI
app = FastAPI()

@app.get("/feature")
def read_feature():
    return {"message": "Enhanced feature"}}
