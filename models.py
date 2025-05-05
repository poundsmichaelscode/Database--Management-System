from sqlalchemy import Column, Integer, String, Boolean, ForeignKey
from sqlalchemy.orm import relationship
from .database import Base

class User(Base):
    __tablename__ = "Users"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100))
    email = Column(String(100), unique=True)

    tasks = relationship("Task", back_populates="owner")

class Task(Base):
    __tablename__ = "Tasks"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    description = Column(String)
    completed = Column(Boolean, default=False)
    user_id = Column(Integer, ForeignKey("Users.id"))

    owner = relationship("User", back_populates="tasks")
