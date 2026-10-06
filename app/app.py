
from fastapi import FastAPI
from pathlib import Path
from fastapi.responses import FileResponse

BASE_DIR = Path(__file__).resolve().parent.parent
INDEX_FILE = BASE_DIR / "public" / "index.html"

app = FastAPI()

@app.get("/")
def home():
    return FileResponse(INDEX_FILE)