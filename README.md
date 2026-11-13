# SQL-project
# 📚 Library Management System – SQL Database Project

## 📌 Project Overview

The **Library Management System** is a SQL-based database project designed to manage library books and member information efficiently.

This project uses MySQL to store, organize, update, delete, and retrieve library information using SQL queries.

## 🎯 Objectives

- Create and manage a library database.
- Store book details and member information.
- Manage book availability and quantity.
- Track membership details.
- Maintain member fine amounts.
- Perform data analysis using SQL queries.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Platform:** MySQL Workbench
- **Version Control:** GitHub

## 🗄️ Database Structure

**Database Name:** `library_db`

This project contains two tables:

### 1. Books Table

Stores information about library books.

| Column Name | Description |
|---|---|
| book_id | Unique book ID |
| title | Book title |
| author | Author name |
| category | Book category |
| publisher | Publisher name |
| publication_year | Published year |
| price | Book price |
| quantity | Total quantity |
| available_quantity | Available books |
| isbn | Unique ISBN number |
| language | Book language |
| shelf_no | Shelf number |
| status | Book availability status |

### 2. Members Table

Stores information about library members.

| Column Name | Description |
|---|---|
| member_id | Unique member ID |
| member_name | Member name |
| email | Email address |
| phone | Phone number |
| gender | Gender |
| city | Member city |
| membership_type | Membership category |
| join_date | Membership start date |
| expiry_date | Membership expiry date |
| books_borrowed | Number of borrowed books |
| fine_amount | Pending fine amount |
| status | Membership status |

## 📊 Sample Dataset

The project includes:

- 10 Book Records
- 10 Member Records

## 🔍 SQL Operations Performed

The following SQL operations are implemented:

1. CREATE DATABASE – Create library database.
2. CREATE TABLE – Create books and members tables.
3. INSERT – Insert book and member records.
4. SELECT – Retrieve table records.
5. WHERE – Filter records based on conditions.
6. ORDER BY – Sort books based on price.
7. GROUP BY – Group books by category.
8. COUNT() – Count total books and members.
9. AVG() – Calculate average book price.
10. MAX() – Find maximum book price.
11. MIN() – Find minimum book price.
12. UPDATE – Update book prices.
13. DELETE – Delete specific book records.

## 💡 Example SQL Queries

**1. Display All Books**
```sql
SELECT * FROM books;
```

**2. Display Books Above 400**
```sql
SELECT title, author, price
FROM books
WHERE price > 400;
```

**3. Count Books by Category**
```sql
SELECT category, COUNT(*) AS total_books
FROM books
GROUP BY category;
```

**4. Display Members with Fine Amount**
```sql
SELECT *
FROM members
WHERE fine_amount > 0;
```

**5. Calculate Average Book Price**
```sql
SELECT AVG(price) AS average_price
FROM books;
```

## 📈 Project Features

- Book information management
- Member information management
- Book price analysis
- Category-wise book count
- Membership analysis
- Fine amount tracking
- Data filtering and sorting

## 🚀 How to Run This Project

1. Install MySQL Workbench.
2. Open MySQL Workbench.
3. Create a new SQL query tab.
4. Copy the SQL project code.
5. Execute the SQL script.
6. The `library_db` database will be created.
7. Run SELECT queries to view the records.

## 📁 Project Structure

```text
Library-Management-System/
│
├── README.md
│
└── library_management.sql
```

## 🏁 Conclusion

This Library Management System project demonstrates the practical implementation of SQL concepts using MySQL.

It helps to understand database creation, table management, data insertion, data manipulation, filtering, sorting, and aggregate functions.

**Project Type:** Database Management System  
**Domain:** Library Management  
**Database:** MySQL

---
⭐ If you
