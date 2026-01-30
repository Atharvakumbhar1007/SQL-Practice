##  Overview

This cheat sheet is a **quick revision guide for MySQL**, created as part of my hands-on practice and learning in database management. It highlights essential SQL commands and core relational database concepts in a simple, easy-to-scan format.

It is designed to help with fast revision and strong understanding of practical database operations.

This cheat sheet is especially helpful for:

* Strengthening relational database fundamentals
* Refreshing database concepts after a break
* Building a strong foundation for backend development

---

##  Database Operations

* `CREATE DATABASE` – Create a new database
* `DROP DATABASE` – Delete a database
* `USE` – Select a database

---

##  Table Operations

* `CREATE TABLE` – Create a new table
* `DROP TABLE` – Delete a table
* `ALTER TABLE` – Modify table structure
* `DESC table_name` – View table structure

---

##  Data Types (Common)

| Type           | Use                  |
| -------------- | -------------------- |
| INT            | Whole numbers        |
| FLOAT / DOUBLE | Decimal numbers      |
| VARCHAR(n)     | Variable-length text |
| CHAR(n)        | Fixed-length text    |
| TEXT           | Large text           |
| DATE           | Date values          |
| DATETIME       | Date and time        |

---

##  Data Manipulation (DML)

* `INSERT INTO` – Add data
* `SELECT` – Retrieve data
* `UPDATE` – Modify data
* `DELETE` – Remove data

---

##  Filtering Data

* `WHERE` – Condition filtering
* `AND`, `OR`, `NOT` – Logical conditions
* `BETWEEN` – Range filtering
* `IN` – Match multiple values
* `LIKE` – Pattern matching

  * `%` → Multiple characters
  * `_` → Single character

---

##  Sorting & Limiting

* `ORDER BY` – Sort results (ASC / DESC)
* `LIMIT` – Restrict number of rows returned

---

##  Aggregate Functions

* `COUNT()` – Number of rows
* `SUM()` – Total value
* `AVG()` – Average value
* `MIN()` – Minimum value
* `MAX()` – Maximum value

---

##  GROUP BY & HAVING

* `GROUP BY` – Group rows with same values
* `HAVING` – Filter grouped results

---

##  Joins

| Join Type  | Purpose                                            |
| ---------- | -------------------------------------------------- |
| INNER JOIN | Matching records in both tables                    |
| LEFT JOIN  | All from left + matches from right                 |
| RIGHT JOIN | All from right + matches from left                 |
| FULL JOIN* | All records from both sides (*simulated in MySQL*) |

---

##  Constraints

| Constraint     | Purpose                |
| -------------- | ---------------------- |
| PRIMARY KEY    | Unique identifier      |
| FOREIGN KEY    | Link between tables    |
| UNIQUE         | No duplicate values    |
| NOT NULL       | Value required         |
| DEFAULT        | Default value          |
| AUTO_INCREMENT | Auto number generation |

---

##  Keys

* **Primary Key** – Uniquely identifies each row
* **Foreign Key** – Connects related tables
* **Composite Key** – Combination of multiple columns

---

##  Indexes

* Improve query performance
* Created using `CREATE INDEX`
* Unique index prevents duplicate values

---

##  Views

* Virtual table based on a query
* Simplifies complex queries
* Enhances security by restricting data access

---

##  Stored Programs

* **Stored Procedures** – Reusable SQL logic
* **Functions** – Return a value
* **Triggers** – Automatically run on INSERT/UPDATE/DELETE

---

##  Common SQL Clauses (Quick List)

`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`, `JOIN`, `ON`, `AS`

---


If you want, I can also make a **combined C + MySQL README intro** for your GitHub profile.

