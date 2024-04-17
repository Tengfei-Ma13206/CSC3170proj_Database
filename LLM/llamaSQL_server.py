from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import uvicorn

# Import your custom modules here
from llamaSQL_cust_server import nl2sqlquery  # Assuming you have a function to handle the queries

app = FastAPI()


app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allow all origins, you can restrict it based on your requirements
    allow_credentials=True,
    allow_methods=["GET", "POST", "PUT", "DELETE", "OPTIONS"],  # Allow the required HTTP methods
    allow_headers=["*"],
)
class Query(BaseModel):
    question: str

@app.post("/api/query/")
async def read_query(query: Query):
    try:
        # Use your custom function or class method to process the query
        print(f"Received question: {query.question}")
        response = nl2sqlquery(query.question)
        return {"response": response}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=8000)
