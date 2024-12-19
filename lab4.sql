--LAB 4: RETRIEVING DATA FROM SELECT STATEMENT
--a) Write a SQL statement to display all details of department.
SELECT *FROM DEPARTMENT;

--b) Write a SQL statement to display first name, last name, date of birth, address and department number of employees.
SELECT FName, LName, BDate, Address, Dno from EMPLOYEE;

--c) Write a SQL statement to display the distinct address employees.
SELECT distinct Address from EMPLOYEE;

--d) Write a SQL statement to display all the content of PROJECT providing alias project_no, project_name, project_location and depart_number.
SELECT Pnumber AS Project_no,PName AS Project_Name, PLocation AS Project_Location, Dnumber AS Depart_Number from PROJECT;