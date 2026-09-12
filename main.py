from fastapi import FastAPI

import socket

app = FastAPI()

@app.get("/")
async def index():
    print(f"Request received from server: {socket.gethostname()}")
    
    return {
        "message": 'Hello, World!🤡',
        "source": socket.gethostname()
    }

