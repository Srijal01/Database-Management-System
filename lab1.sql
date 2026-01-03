--LAB 1: IMPLEMENTATION OF DDL STATEMENTS FOR CREATING DATABASE

--a) Write a SQL statement to create a database named COMPANY.
CREATE DATABASE COMPANY;

--b) Write a SQL statement to display all databases.
SELECT name FROM sys.databases;

--c) Write a SQL statement to list all databases.
SELECT *FROM sys.databases;

--d) Write a SQL statement to rename the created database.
ALTER DATABASE COMPANY MODIFY NAME=ORGANIZATION;

--e) Write a SQL statement to drop database.
DROP DATABASE ORGANIZATION;





