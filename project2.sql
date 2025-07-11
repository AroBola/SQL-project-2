

--creating branch table
CREATE TABLE branchs(
branch_id VARCHAR(25) PRIMARY KEY,
manager_id VARCHAR (10),
branch_address VARCHAR(55),
contact_no VARCHAR (10)
)

ALTER TABLE branchs
ALTER COLUMN contact_no VARCHAR (25)

--creating table employee

CREATE TABLE employee(
emp_id VARCHAR (10) PRIMARY KEY,
emp_name VARCHAR (50),
position VARCHAR (10),
salary INT,
branch_id VARCHAR (25)
)

--creating table book

CREATE TABLE books(
isbn VARCHAR (25) PRIMARY KEY,
book_title VARCHAR (75),
category VARCHAR (20),
rental_price FLOAT,
status VARCHAR (10),
author VARCHAR (50),
publisher VARCHAR (50)
)

--creating table called members

CREATE TABLE members(
member_id VARCHAR (10) PRIMARY KEY,
member_name VARCHAR (25),
member_address VARCHAR (75),
reg_date DATE
)

--creating table issued_status

CREATE TABLE issued_status(
issued_id VARCHAR(10) PRIMARY KEY,
issued_member_id VARCHAR (10),
issued_book_name VARCHAR (75),
issued_date DATE,
issued_book_isbn VARCHAR (25),
issued_emp_id VARCHAR (10)
)

--creating table return_status

CREATE TABLE return_status(
return_id VARCHAR(10) PRIMARY KEY,
issued_id VARCHAR (10),
return_book_name VARCHAR (75),
return_date DATE,
return_book_isbn VARCHAR (20)
)

--foreign key

ALTER TABLE issued_status
ADD CONSTRAINT fk_members
FOREIGN KEY (issued_member_id)
REFERENCES members(member_id)

ALTER TABLE issued_status
ADD CONSTRAINT fk_books
FOREIGN KEY (issued_book_isbn)
REFERENCES books(isbn)

ALTER TABLE issued_status
ADD CONSTRAINT fk_employee
FOREIGN KEY (issued_emp_id)
REFERENCES employee(emp_id)

ALTER TABLE employee
ADD CONSTRAINT fk_branchs
FOREIGN KEY (branch_id)
REFERENCES branchs(branch_id)

ALTER TABLE return_status
ADD CONSTRAINT fk_issued_status
FOREIGN KEY (issued_id)
REFERENCES issued_status(issued_id)


