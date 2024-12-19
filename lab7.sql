--LAB 7: AGGREGATE FUNCTIONS
--a) Find the maximum and minimum of department number from Department table.
SELECT MAX(Dnumber) AS Max, MIN(Dnumber) AS Min FROM DEPARTMENT;

--b) Find the average salary of Employee whose department number is 4444 and alias it as Average_salary.
SELECT AVG(Salary) AS Average_salary FROM EMPLOYEE WHERE Dno=4444;

--c) Find the count and total salary of employee in each gender level and group by gender.
SELECT Sex, COUNT(*) AS Employee_count, SUM(Salary) AS Total_salary FROM EMPLOYEE GROUP BY Sex;

--d) Find the maximum salary and count of employee based on the department number and group by department number.
SELECT Dno AS Dept_no, MAX(Salary) AS Max_salary, COUNT(*) AS Employee_count FROM EMPLOYEE GROUP BY Dno;

--e) Find the total and average number of hours worked in WORK_ON table and alias it with Total_Hours and Average_Hours respectively.
SELECT SUM(Hours) AS Total_Hours, AVG(Hours) AS Average_Hours FROM WORKS_ON;