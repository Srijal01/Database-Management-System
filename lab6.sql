--LAB 6: SET OPERATIONS
--a) Find the department number and employee number from Department and Employee table.
SELECT Dnumber AS Number FROM DEPARTMENT UNION 
SELECT Ssn AS Number FROM EMPLOYEE;

--b) Find the employee number which is present in both Department and Employee table.
SELECT Mgr_ssn AS EmployeeNumber FROM DEPARTMENT INTERSECT
SELECT Ssn AS EmployeeNumber FROM EMPLOYEE;

--c) Find the employee number which is present in Employee table but not in Department table.
SELECT Ssn AS EmployeeNumber FROM EMPLOYEE EXCEPT
SELECT Mgr_ssn AS EmployeeNumber FROM DEPARTMENT;