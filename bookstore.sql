-- Bookstore Database Schema
-- This script defines the structure for books, customers, and orders

-- Drop tables if they exist
DROP TABLE IF EXISTS Orders, Customers, Books;

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Price DECIMAL(8, 2)
);

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Address TEXT
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    BookID INT,
    Quantity INT DEFAULT 1,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Sample Data
INSERT INTO Books (Title, Author, Genre, Price)
VALUES 
('The Pragmatic Programmer', 'Andy Hunt', 'Tech', 42.99),
('Clean Code', 'Robert C. Martin', 'Tech', 38.50),
('1984', 'George Orwell', 'Fiction', 15.00);

INSERT INTO Customers (FullName, Email, Address)
VALUES 
('Alice Johnson', 'alice@example.com', '123 Main St'),
('Bob Smith', 'bob@example.com', '456 Elm St');

INSERT INTO Orders (CustomerID, BookID, Quantity, OrderDate)
VALUES 
(1, 1, 1, '2025-04-30'),
(2, 3, 2, '2025-04-29');
