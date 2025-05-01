import mysql.connector

# Connect to MySQL
# conn = mysql.connector.connect(
#     host="localhost",
#     user="your_mysql_user",
#     password="your_password",
#     database="your_database"
# )

# cursor = conn.cursor()

# Get all books
cursor.execute("SELECT * FROM Books")
books = cursor.fetchall()

print("📚 Available Books:")
for book in books:
    print(f"{book[0]} - {book[1]} by {book[2]} (${book[4]})")

# Add a new customer
cursor.execute("""
    INSERT INTO Customers (FullName, Email, Address)
    VALUES (%s, %s, %s)
""", ("Charlie Brown", "charlie@example.com", "789 Pine St"))

conn.commit()
print("\n✅ New customer added!")

cursor.close()
conn.close()
