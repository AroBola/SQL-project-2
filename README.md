# SQL Project 2
Library Database Management System
This repository contains SQL scripts for a simple Library Database Management System. It includes the database schema definition, sample data insertion, and a series of queries to manage and analyze library operations.

Table of Contents
Project Overview

Database Schema

Sample Data

Project Tasks and Queries

How to Use

Project Overview
This project demonstrates the fundamental concepts of relational database management using SQL. It simulates a library system, tracking branches, employees, books, members, and the status of issued and returned books. The SQL scripts provided allow for:

Database Schema Creation: Defining tables and relationships.

Data Population: Inserting sample data into the tables.

Data Manipulation: Performing CRUD (Create, Read, Update, Delete) operations.

Reporting and Analysis: Generating insights from the library data.

Database Schema
The database consists of the following tables:

branchs: Stores information about library branches.

branch_id (PRIMARY KEY)

manager_id

branch_address

contact_no

employee: Stores employee details.

emp_id (PRIMARY KEY)

emp_name

position

salary

branch_id (FOREIGN KEY to branchs)

books: Stores details about the books in the library.

isbn (PRIMARY KEY)

book_title

category

rental_price

status

author

publisher

members: Stores information about library members.

member_id (PRIMARY KEY)

member_name

member_address

reg_date

issued_status: Records details of books issued to members.

issued_id (PRIMARY KEY)

issued_member_id (FOREIGN KEY to members)

issued_book_name

issued_date

issued_book_isbn (FOREIGN KEY to books)

issued_emp_id (FOREIGN KEY to employee)

return_status: Records details of returned books.

return_id (PRIMARY KEY)

issued_id (FOREIGN KEY to issued_status)

return_book_name

return_date

return_book_isbn

Sample Data
The library.sql file includes INSERT statements to populate the tables with sample data, allowing you to immediately work with the database.

Project Tasks and Queries
The library.sql file also contains a series of SQL queries addressing various library management tasks. Each task is clearly commented within the file.

Create a New Book Record: Inserts a new book into the books table.

**Update an Existing Member
