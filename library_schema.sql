-- Create the database
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

-- Create Books table
CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255),
  genre VARCHAR(100),
  year_published INT,
  UNIQUE(title, author)
);

-- Create Members table
CREATE TABLE Members (
  member_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  membership_date DATE NOT NULL
);

-- Create Borrowings table
CREATE TABLE Borrowings (
  borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
  member_id INT NOT NULL,
  book_id INT NOT NULL,
  borrow_date DATE NOT NULL,
  return_date DATE,
  FOREIGN KEY (member_id) REFERENCES Members(member_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Insert sample data
INSERT INTO Books (title, author, genre, year_published)
VALUES 
  ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925),
  ('1984', 'George Orwell', 'Dystopian', 1949);

INSERT INTO Members (name, email, membership_date)
VALUES
  ('Alice Johnson', 'alice@example.com', '2023-05-01'),
  ('Bob Smith', 'bob@example.com', '2023-06-15');

INSERT INTO Borrowings (member_id, book_id, borrow_date, return_date)
VALUES
  (1, 1, '2024-04-01', '2024-04-10'),
  (2, 2, '2024-04-05', NULL);
