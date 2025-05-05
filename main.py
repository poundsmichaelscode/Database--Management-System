from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from . import database, models, crud

app = FastAPI()

models.Base.metadata.create_all(bind=database.engine)

def get_db():
    db = database.SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.get("/tasks")
def read_tasks(db: Session = Depends(get_db)):
    return crud.get_tasks(db)

@app.post("/tasks")
def create(title: str, description: str, user_id: int, db: Session = Depends(get_db)):
    return crud.create_task(db, title, description, user_id)

@app.put("/tasks/{task_id}")
def update(task_id: int, completed: bool, db: Session = Depends(get_db)):
    return crud.update_task(db, task_id, completed)

@app.delete("/tasks/{task_id}")
def delete(task_id: int, db: Session = Depends(get_db)):
    return crud.delete_task(db, task_id)
