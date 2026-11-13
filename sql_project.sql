CREATE DATABASE library_db;

USE library_db;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    publisher VARCHAR(100),
    publication_year INT,
    price DECIMAL(10,2),
    quantity INT DEFAULT 1,
    available_quantity INT DEFAULT 1,
    isbn VARCHAR(20) UNIQUE,
    language VARCHAR(30) DEFAULT 'English',
    shelf_no VARCHAR(20),
    status VARCHAR(20) DEFAULT 'Available',
    CHECK (price > 0),
    CHECK (quantity >= 0),
    CHECK (available_quantity >= 0)
);

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    gender VARCHAR(10),
    city VARCHAR(50),
    membership_type VARCHAR(30) DEFAULT 'Regular',
    join_date DATE,
    expiry_date DATE,
    books_borrowed INT DEFAULT 0,
    fine_amount DECIMAL(10,2) DEFAULT 0,
    status VARCHAR(20) DEFAULT 'Active',
    CHECK (fine_amount >= 0),
    CHECK (books_borrowed >= 0)
);

INSERT INTO books
(book_id, title, author, category, publisher, publication_year,
price, quantity, available_quantity, isbn, language, shelf_no, status)
VALUES
(1,'The Alchemist','Paulo Coelho','Fiction','HarperCollins',1988,450.00,5,4,'ISBN000001','English','A01','Available'),
(2,'Atomic Habits','James Clear','Self Help','Penguin',2018,550.00,6,5,'ISBN000002','English','A02','Available'),
(3,'Wings of Fire','A.P.J. Abdul Kalam','Biography','Universities Press',1999,300.00,4,3,'ISBN000003','English','A03','Available'),
(4,'Rich Dad Poor Dad','Robert Kiyosaki','Finance','Plata Publishing',1997,400.00,5,4,'ISBN000004','English','A04','Available'),
(5,'Ikigai','Hector Garcia','Self Help','Penguin',2016,350.00,4,4,'ISBN000005','English','A05','Available'),
(6,'The Hobbit','J.R.R. Tolkien','Fantasy','HarperCollins',1937,500.00,3,2,'ISBN000006','English','A06','Available'),
(7,'Harry Potter','J.K. Rowling','Fantasy','Bloomsbury',1997,600.00,7,6,'ISBN000007','English','A07','Available'),
(8,'Think and Grow Rich','Napoleon Hill','Finance','Fingerprint',1937,320.00,5,3,'ISBN000008','English','A08','Available'),
(9,'The Power of Now','Eckhart Tolle','Self Help','Penguin',1997,420.00,4,4,'ISBN000009','English','A09','Available'),
(10,'Steve Jobs','Walter Isaacson','Biography','Simon Schuster',2011,650.00,3,2,'ISBN000010','English','A10','Available');

INSERT INTO members
(member_id, member_name, email, phone, gender, city,
membership_type, join_date, expiry_date, books_borrowed, fine_amount, status)
VALUES
(1,'Arun Kumar','arun1@gmail.com','9000000001','Male','Chennai','Premium','2026-01-10','2027-01-10',2,0.00,'Active'),
(2,'Priya Sharma','priya2@gmail.com','9000000002','Female','Madurai','Regular','2026-01-12','2027-01-12',1,10.00,'Active'),
(3,'Rahul Kumar','rahul3@gmail.com','9000000003','Male','Coimbatore','Premium','2026-01-15','2027-01-15',3,0.00,'Active'),
(4,'Divya Raj','divya4@gmail.com','9000000004','Female','Chennai','Regular','2026-01-18','2027-01-18',2,25.00,'Active'),
(5,'Karthik S','karthik5@gmail.com','9000000005','Male','Salem','Student','2026-01-20','2027-01-20',1,0.00,'Active'),
(6,'Meena Devi','meena6@gmail.com','9000000006','Female','Trichy','Premium','2026-01-22','2027-01-22',4,0.00,'Active'),
(7,'Vijay Kumar','vijay7@gmail.com','9000000007','Male','Chennai','Regular','2026-01-25','2027-01-25',2,15.00,'Active'),
(8,'Anitha R','anitha8@gmail.com','9000000008','Female','Erode','Student','2026-01-28','2027-01-28',1,0.00,'Active'),
(9,'Suresh B','suresh9@gmail.com','9000000009','Male','Madurai','Premium','2026-02-01','2027-02-01',3,20.00,'Active'),
(10,'Nandhini M','nandhini10@gmail.com','9000000010','Female','Coimbatore','Regular','2026-02-03','2027-02-03',2,0.00,'Active');

SELECT * FROM books;

SELECT * FROM members;

SELECT title, author, price
FROM books
WHERE price > 400;

SELECT *
FROM books
WHERE category = 'Fiction';

SELECT *
FROM books
ORDER BY price DESC;

SELECT category, COUNT(*) AS total_books
FROM books
GROUP BY category;

SELECT membership_type, COUNT(*) AS total_members
FROM members
GROUP BY membership_type;

SELECT *
FROM members
WHERE fine_amount > 0;

UPDATE books
SET price = 500
WHERE book_id = 1;

DELETE FROM books
WHERE book_id = 200;

SELECT COUNT(*) AS total_books
FROM books;

SELECT AVG(price) AS average_price
FROM books;

SELECT MAX(price) AS maximum_price
FROM books;

SELECT MIN(price) AS minimum_price
FROM books;