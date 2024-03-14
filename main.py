from fastapi import FastAPI
import random

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to the Random Number Generator!"}

@app.get("/random")
def generate_random_number():
    return {"random_number": random.randint(0, 1)}

