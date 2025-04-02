from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def main():
    return "Congratulations! You made it!"


if __name__ == "__main__":
    main()
