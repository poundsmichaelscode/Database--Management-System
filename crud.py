from sqlalchemy.orm import Session
from . import models

def get_tasks(db: Session):
    return db.query(models.Task).all()

def create_task(db: Session, title: str, description: str, user_id: int):
    task = models.Task(title=title, description=description, user_id=user_id)
    db.add(task)
    db.commit()
    db.refresh(task)
    return task

def update_task(db: Session, task_id: int, completed: bool):
    task = db.query(models.Task).filter(models.Task.id == task_id).first()
    if task:
        task.completed = completed
        db.commit()
        db.refresh(task)
    return task

def delete_task(db: Session, task_id: int):
    task = db.query(models.Task).filter(models.Task.id == task_id).first()
    if task:
        db.delete(task)
        db.commit()
    return task
