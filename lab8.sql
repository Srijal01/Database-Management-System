--LAB 8: DISPLAYING DATA FROM MULTIPLE TABLE (JOINS)
--a) Write a query to display department number, department name and name of the employee who are involved in anyone of the department and order by department number.
SELECT 
  D.Dnumber, 
  D.Dname, 
  E.FName, 
  E.LName 
FROM DEPARTMENT D
JOIN EMPLOYEE E ON D.Dnumber = E.Dno 
ORDER BY D.Dnumber;

--b) Write a query to display LEFT OUTER JOIN of EMPLOYEE and DEPARTMENT table where manager employee number are same.
SELECT 
  E.FName, 
  E.LName, 
  D.Dname, 
  D.Mgr_ssn 
FROM EMPLOYEE E
LEFT OUTER JOIN DEPARTMENT D 
ON E.Ssn = D.Mgr_ssn;

--c) Write a query to display RIGHT OUTER JOIN of DEPARTMENT and EMPLOYEE table where employee number and manager employee number are same.
SELECT 
  D.Dname, 
  D.Dnumber, 
  E.FName, 
  E.LName, 
  E.Ssn 
FROM DEPARTMENT D
RIGHT OUTER JOIN EMPLOYEE E 
ON D.Mgr_ssn = E.Ssn;

--d) Write a query to display FULL OUTER JOIN of EMPLOYEE and PROJECT table.
SELECT 
  E.FName, 
  E.LName, 
  P.PName, 
  P.PLocation 
FROM EMPLOYEE E
FULL OUTER JOIN WORKS_ON W ON E.Ssn = W.Essn
FULL OUTER JOIN PROJECT P ON W.Pno = P.Pnumber;

--e) Write a query to display employee name, Department name, project name and project hours.
SELECT E.FName, E.LName,D.Dname, P.PName, W.Hours FROM EMPLOYEE E
JOIN WORKS_ON W ON E.Ssn = W.Essn
JOIN PROJECT P ON W.Pno = P.Pnumber
JOIN DEPARTMENT D ON E.Dno = D.Dnumber;

--f) Write a query to display Department name, count of employee, maximum salary, minimum salary and total salary of employee group by Department name.
SELECT 
  D.Dname AS Department_Name,
  COUNT(E.Ssn) AS Employee_Count,
  MAX(E.Salary) AS Max_Salary,
  MIN(E.Salary) AS Min_Salary,
  SUM(E.Salary) AS Total_Salary 
FROM DEPARTMENT D
JOIN EMPLOYEE E ON D.Dnumber = E.Dno
GROUP BY D.Dname;

--g) Write a query to display project location associated with the respective department name.
SELECT D.Dname, P.PLocation FROM DEPARTMENT D
JOIN PROJECT P ON D.Dnumber = P.Dnumber;
