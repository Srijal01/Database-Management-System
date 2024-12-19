--LAB 9: NESTED QUERIES (SUB QUERY) IN SQL
--a. Find the first name, last name and salary of employees greater than the average salary of the employees.
SELECT FName, LName, Salary FROM EMPLOYEE 
WHERE Salary>(SELECT AVG(Salary) FROM EMPLOYEE);

--b. Find the first name and last name of employees who are heading the department.
SELECT E.FName, E.LName FROM EMPLOYEE E
WHERE E.Ssn IN(SELECT Mgr_ssn FROM DEPARTMENT);

--c. Find the project name and project location whose hours to complete project is greater than minimum work hour.
SELECT P.PName, P.PLocation FROM PROJECT P
JOIN WORKS_ON W ON P.Pnumber = W.Pno
WHERE W.Hours>(SELECT MIN(Hours) FROM WORKS_ON);

--d. Find the name of employees whose hours to complete the project is greater than minimum work hour.
SELECT E.FName, E.LName FROM EMPLOYEE E
JOIN WORKS_ON W ON E.Ssn = W.Essn
WHERE W.Hours>(SELECT MIN(Hours) FROM WORKS_ON);