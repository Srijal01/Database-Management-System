# SQL Database Labs - COMPANY Database

This repository contains a series of SQL laboratory exercises covering fundamental database operations using a COMPANY database with DEPARTMENT, EMPLOYEE, DEPT_LOCATIONS, PROJECT, and WORKS_ON tables.

## Table of Contents
- [Lab 1: Database Creation](#lab-1-implementation-of-ddl-statements-for-creating-database)
- [Lab 2: Table Creation](#lab-2-implementation-of-ddl-statements-for-creating-tables)
- [Lab 3: Data Manipulation](#lab-3-implementation-of-dml-statements)
- [Lab 4: Data Retrieval](#lab-4-retrieving-data-from-select-statement)
- [Lab 5: Restricting and Sorting](#lab-5-restricting-and-sorting-data)
- [Lab 6: Set Operations](#lab-6-set-operations)
- [Lab 7: Aggregate Functions](#lab-7-aggregate-functions)
- [Lab 8: Joins](#lab-8-displaying-data-from-multiple-table-joins)
- [Lab 9: Nested Queries](#lab-9-nested-queries-sub-query-in-sql)
- [Lab 10: Views](#lab-10-views-in-sql)

## Database Schema
### DEPARTMENT Table
| Field | Data Type | Constraint Type |
|-------|-----------|-----------------|
| Dname | VARCHAR(50) | PRIMARY KEY |
| Dnumber | INT | |
| Mgr_ssn | INT | |
| Mgr_start_date | DATE | |
### EMPLOYEE Table
| Field | Data Type | Constraint Type |
|-------|-----------|-----------------|
| FName | VARCHAR(50) | |
| Minit | VARCHAR(4) | |
| LName | VARCHAR(50) | |
| Ssn | INT | PRIMARY KEY |
| BDate | DATE | |
| Address | VARCHAR(50) | |
| Sex | VARCHAR(10) | |
| Salary | MONEY | |
| Super_ssn | INT | |
| Dno | INT | FOREIGN KEY |
### DEPT_LOCATIONS Table
| Field | Data Type | Constraint Type |
|-------|-----------|-----------------|
| DNumber | INT | FOREIGN KEY |
| DLocation | INT | PRIMARY KEY |
### PROJECT Table
| Field | Data Type | Constraint Type |
|-------|-----------|-----------------|
| PName | VARCHAR(50) | UNIQUE |
| Pnumber | INT | PRIMARY KEY |
| PLocation | VARCHAR(50) | |
| Dnumber | INT | FOREIGN KEY |
### WORKS_ON Table
| Field | Data Type | Constraint Type |
|-------|-----------|-----------------|
| Essn | INT | FOREIGN KEY |
| Pno | INT | FOREIGN KEY |
| Hours | INT | |

---

## Lab 1: Implementation of DDL statements for creating database
a. Write a SQL statement to create a database named COMPANY.  
b. Write a SQL statement to display all databases.  
c. Write a SQL statement to rename the created database.  
d. Write a SQL statement to drop database.

---

## Lab 2: Implementation of DDL statements for creating tables
a. Write a statement to create tables for DEPARTMENT, EMPLOYEE, DEPT_LOCATIONS, PROJECT and WORKS_ON.  
b. Write a statement to add PRIMARY KEY on existing table DEPARTMENT and FOREIGN KEY on EMPLOYEE.  
c. Write a statement to drop table DEPARTMENT.  
d. Write a statement to modify the range of Address column in EMPLOYEE table to varchar(60).  
e. Write a statement of drop a column PLocation from PROJECT table and again add the same column in the table.

---

## Lab 3: Implementation of DML statements
### Sample Data
#### DEPARTMENT Table Data
| Dname | Dnumber | Mgr_ssn | Mgr_start_date |
|-------|---------|---------|----------------|
| Finance | 1111 | 9090 | 06-05-2010 |
| Human Resources | 2222 | 8080 | 05-06-2009 |
| IT | 3333 | 7070 | 08-04-2008 |
| Administration | 4444 | 6060 | 15-09-2002 |
#### EMPLOYEE Table Data
| Fname | Minit | Lname | Ssn | Bdate | Address | Sex | Salary | Super_ssn | Dno |
|-------|-------|-------|-----|-------|---------|-----|--------|-----------|-----|
| John | WS | Smith | 3270 | 09-06-1995 | Mandeville | Male | 125478 | 7070 | 3333 |
| Tillroy | TB | Bent | 6060 | 09-08-1981 | St. Ann | Male | 1478991 | | 4444 |
| Samath | SS | Scott | 6098 | 09-08-1998 | St. Ann | Male | 124576 | 6060 | 4444 |
| Jenny | JS | Scott | 7070 | 09-05-1979 | St. Ann | Female | 1587896 | | 3333 |
| Roy | RP | Palmer | 8080 | 09-05-1980 | Kingston | Male | 1798541 | | 2222 |
| Sandra | SW | Williams | 9069 | 09-05-1998 | Ochi Rios | Female | 189756 | 9090 | 1111 |
| Peter | PW | Williams | 9090 | 09-05-1978 | Kingston | Male | 1321458 | | 1111 |
| Jimmy | JW | Walker | 9785 | 09-09-1995 | Mandeville | Male | 234512 | 8080 | 2222 |
#### DEPT_LOCATIONS Table Data
| Dnumber | Dlocation |
|---------|-----------|
| 1111 | 65878 |
| 2222 | 78564 |
| 4444 | 89874 |
| 3333 | 65478 |
#### PROJECT Table Data
| Pname | Pnumber | Plocation | Dnumber |
|-------|---------|-----------|---------|
| Code Writing | 6666 | North-East Wing | 4444 |
| Unit Testing | 7777 | West Wing | 3333 |
| System Development | 8888 | South Wing | 2222 |
| Game Development | 9999 | North Wing | 1111 |
#### WORKS_ON Table Data
| Essn | Pno | Hours |
|------|-----|-------|
| 9090 | 9999 | 35 |
| 8080 | 8888 | 30 |
| 7070 | 7777 | 35 |
| 6060 | 6666 | 25 |
---
a. Write the SQL statement to insert the data in the respective tables.  
b. Write a SQL statement to update the department number to 3333 whose Ssn is 7070 in EMPLOYEE table.  
c. Write a SQL statement to update the hours to 28 whose Essn is 6060 and Pno is 6666 in WORKS_ON table.  
d. Write a statement to delete a record from WORKS_ON table where Pnumber is 8888.

---

## Lab 4: Retrieving data from SELECT statement
a. Write a SQL statement to display all details of department.  
b. Write a SQL statement to display first name, last name, date of birth, address and department number of employees.  
c. Write a SQL statement to display the distinct address employees.  
d. Write a SQL statement to display all the content of PROJECT providing alias project_no, project_name, project_location and depart_number.

---

## Lab 5: Restricting and Sorting data
a. Find the name of employee name and department number whose address is "St. Ann".  
b. Find the name of department and department whose department number is greater than 1111.  
c. Find the name of the employee whose address is Mandeville and department number is greater than or equal to 2222.  
d. Find the records of project whose department number is between 2222 and 4444.  
e. Find the department number and department location of DEPT_LOCATIONS associated with department location "65878" or "89874" or "78564".  
f. Find the name, address and salary of employee whose last name begins with S and department number greater than 1111.  
g. Find the details of employee as First name, last name, address, date of birth and salary with increment of salary by 10%.  
h. Find the records of department in the order of their department name in ascending and descending order.  
i. Find the records of employee whose address is St. Ann in the order of their salary in ascending and descending order.  
j. Find the record of all employee whose date of birth is greater than '1982-01-04'.

---

## Lab 6: Set Operations
a. Find the department number and employee number from Department and Employee table.  
b. Find the employee number which is present in both Department and Employee table.  
c. Find the employee number which is present in Employee table but not in Department table.

---

## Lab 7: Aggregate Functions
a. Find the maximum and minimum of department number from Department table.  
b. Find the average salary of Employee whose department number is 4444 and alias it as Average_salary.  
c. Find the count and total salary of employee in each gender level and group by gender.  
d. Find the maximum salary and count of employee based on the department number and group by department number.  
e. Find the total and average number of hours worked in WORK_ON table and alias it with Total_Hours and Average_Hours respectively.

---

## Lab 8: Displaying Data from multiple table (JOINS)
a. Write a query to display department number, department name and name of the employee who are involved in anyone of the department and order by department number.  
b. Write a query to display LEFT OUTER JOIN of EMPLOYEE and DEPARTMENT table where manager employee number are same.  
c. Write a query to display RIGHT OUTER JOIN of DEPARTMENT and EMPLOYEE table where employee number and manager employee number are same.  
d. Write a query to display FULL OUTER JOIN of EMPLOYEE and PROJECT table.  
e. Write a query to display employee name, Department name, project name and project hours.  
f. Write a query to display Department name, count of employee, maximum salary, minimum salary and total salary of employee group by Department name.  
g. Write a query to display project location associated with the respective department name.

---

## Lab 9: Nested Queries (Sub query) in SQL
a. Find the first name, last name and salary of employees greater than the average salary of the employees.  
b. Find the first name and last name of employees who are heading the department.  
c. Find the project name and project location whose hours to complete project is greater than minimum work hour.  
d. Find the name of employees whose hours to complete the project is greater than minimum work hour.

---

## Lab 10: Views in SQL
a. Create a view to display department number, department name, name of the employee, date of birth, address and salary.  
b. Display the content of the view.  
c. Alter the view by adding the attribute project name where the employees are working.  
d. Drop the view.
