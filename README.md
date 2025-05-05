# Database--Management-System



# 📚 Library Management System & 📝 Task Manager CRUD API

This repository contains two related projects:

1. **Library Management System** — A complete MySQL database system for managing books, members, and borrowings.
2. **Task Manager API** — A simple CRUD API built with FastAPI (Python) and MySQL for managing user tasks.

---

## 📁 Project Structure

```

project-repo/
│
├── question1\_library\_system/
│   └── library\_schema.sql        # SQL file with tables and sample data
│
├── question2\_task\_api/
│   ├── app/                      # FastAPI app with routes, models, and DB logic
│   │   ├── main.py
│   │   ├── models.py
│   │   ├── database.py
│   │   └── crud.py
│   ├── schema.sql                # SQL file to create task manager tables
│   └── requirements.txt
│
└── README.md

````

---

## ✅ Question 1: Library Management System (MySQL Only)

### 💡 Description
A relational database built entirely with MySQL to manage:
- Book details
- Registered library members
- Borrowed books with dates

### 📦 Features
- `Books`, `Members`, and `Borrowings` tables
- Constraints: `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`
- Sample data included

### 🛠️ Setup Instructions
1. Open MySQL client (Workbench, CLI, or phpMyAdmin).
2. Run the SQL script:
   ```bash
   mysql -u root -p your_database < library_schema.sql
````

### 🧩 ERD Diagram

![Library ERD](https://dbdiagram.io/) *(Include your own screenshot or dbdiagram.io link)*

---

## ✅ Question 2: Task Manager CRUD API (FastAPI + MySQL)

### 💡 Description

A simple backend API to manage tasks for users. Supports full CRUD operations connected to a MySQL database.

### 🧪 Endpoints

| Method | Endpoint    | Description       |
| ------ | ----------- | ----------------- |
| GET    | /tasks      | Get all tasks     |
| POST   | /tasks      | Create a new task |
| PUT    | /tasks/{id} | Update a task     |
| DELETE | /tasks/{id} | Delete a task     |

### 📦 Technologies

* FastAPI (Python)
* MySQL
* SQLAlchemy (ORM)
* Uvicorn (ASGI Server)

### ⚙️ Setup Instructions

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/yourrepo.git
   cd question2_task_api
   ```

2. **Create MySQL DB**:

   ```sql
   CREATE DATABASE taskmanager;
   ```

3. **Import the SQL schema**:

   ```bash
   mysql -u root -p taskmanager < schema.sql
   ```

4. **Install dependencies**:

   ```bash
   pip install -r requirements.txt
   ```

5. **Run the FastAPI server**:

   



## 📸 Screenshots




## 👨‍💻 Author

Olayenikan Michael
Frontend Developer | MySQL Enthusiast | Python & JavaScript Programmer



