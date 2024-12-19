--LAB 10: VIEWS IN SQL
--a. Create a view to display department number, department name, name of the employee, date of birth, address and salary.
CREATE VIEW EMPLOYEEDEPARTMENTVIEW AS 
SELECT D.Dnumber AS Department_number,
D.Dname AS Department_name,
E.FName AS Employee_First_Name,
E.LName AS Employee_Last_Name,
E.BDate AS Date_of_Birth,
E.Address,
E.Salary FROM DEPARTMENT D
JOIN EMPLOYEE E ON D.Dnumber = E.Dno;

--b. Display the content of the view.
SELECT *FROM EMPLOYEEDEPARTMENTVIEW;

--c. Alter the view by adding the attribute project name where the employees are working.
--Drop the existing view:
DROP VIEW IF EXISTS EMPLOYEEDEPARTMENTVIEW;
--Recreating the view with additional project name attribute:
CREATE VIEW EMPLOYEEDEVELOPMENTVIEW AS
SELECT D.Dnumber AS Department_number,
D.Dname AS Department_name,
E.FName AS Employee_First_Name,
E.LName AS Employee_Last_Name,
E.BDate AS Date_of_Birth,
E.Address,
E.Salary,
P.PName AS Project_name FROM DEPARTMENT D
JOIN EMPLOYEE E ON D.Dnumber = E.Dno
LEFT JOIN WORKS_ON W ON E.Ssn = W.Essn
LEFT JOIN PROJECT P ON W.Pno = P.Pnumber;
SELECT *FROM EMPLOYEEDEVELOPMENTVIEW;

--d. Drop the view.
DROP VIEW IF EXISTS EMPLOYEEDEVELOPMENTVIEW;