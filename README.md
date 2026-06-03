# SIMPLE-Database-
🎓📊 A relational MySQL database designed to manage school ecosystems. Seamlessly connects Students, Teachers, Classes, and Subjects! Features robust schemas, primary/foreign keys, and advanced multi-table JOIN queries. 🚀🛡️
# Student Database Management System (MySQL)

A relational database schema designed to manage school data, including students, teachers, subjects, and classes. This project demonstrates database design fundamentals, including entity-relationship management, primary/foreign keys, constraints, and data retrieval using multi-table `LEFT JOIN` queries.

## 📊 Database Schema (ERD Representation)

The database consists of 4 main tables with the following relationships:
* **Teacher** (1 ── 1:N) ──> **Class** (A teacher can teach a class)
* **Subject** (1 ── 1:N) ──> **Class** (A subject is assigned to a class)
* **Class** (1 ── 1:N) ──> **Student** (A student belongs to a class)

### Tables & Key Structures
* `Teacher`: Stores unique contact info and names.
* `Subject`: Stores course details with unique subject codes.
* `Class`: Acts as a bridge linking a teacher and a subject to a specific classroom group. Includes `ON DELETE SET NULL` to keep records intact if a teacher or subject is removed.
* `Student`: Stores student profiles linked directly to their assigned class.

---

## 🚀 How to Use

1. Clone this repository or copy the code from `schema.sql`.
2. Open your MySQL terminal or a GUI tool like MySQL Workbench / phpMyAdmin.
3. Run the script to generate the database, tables, and seed data:
   ```sql
   SOURCE path/to/schema.sql;
