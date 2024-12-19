--LAB 5: RESTRICTING AND SORTING DATA
--a) Find the name of employee name and department number whose address is “St. Ann”.
SELECT E.FName, E.LName, E.Dno FROM EMPLOYEE E WHERE E.Address = 'St. Ann';

--b) Find the name of department and department number whose department number is greater than 1111.
SELECT D.Dname, D.Dnumber FROM DEPARTMENT D WHERE D.Dnumber>1111;

--c) Find the name of the employee whose address is Mandeville and department number is greater than or equal to 2222.
SELECT E.FName, E.LName FROM EMPLOYEE E WHERE E.Address = 'Mandeville' AND E.Dno>=2222;

--d) Find the records of project whose department number is between 2222 and 4444.
SELECT P.* FROM PROJECT P WHERE P.Dnumber BETWEEN 2222 AND 4444;

--e) Find the department number and department location of DEPT_LOCATIONS associated with department location “65878” or “89874” or “78564”.
SELECT D.Dnumber, D.DLocation FROM DEPT_LOCATIONS D
WHERE D.DLocation = '65878' OR D.DLocation = '89874' OR D.DLocation = '78564';

--f) Find the name, address and salary of employee whose last name begins with S and department number greater than 1111.
SELECT E.FName AS FirstName, E.LName AS LastName, E.Address, E.Salary FROM EMPLOYEE E
WHERE E.LName LIKE 's%' AND E.Dno > 1111;

--g) Find the details of employee as First name, last name, address, date of birth and salary with increment of salary by 10%. Salary * 1.1 as new salary.
SELECT FName, LName, Address, BDate, Salary *1.1 AS New_salary FROM EMPLOYEE;

--h) Find the records of department in the order of their department name in ascending and descending order.
SELECT *FROM DEPARTMENT ORDER BY Dname ASC;
SELECT *FROM DEPARTMENT ORDER BY Dname DESC;

--i) Find the records of employee whose address is St. Ann in the order of their salary in ascending and descending order.
SELECT *FROM EMPLOYEE WHERE Address = 'St. Ann' ORDER BY Salary ASC;
SELECT *FROM EMPLOYEE WHERE Address = 'St. Ann' ORDER BY Salary DESC;

--j) Find the record of all employee whose date of birth is greater than ‘1982-01-04’.
SELECT *FROM EMPLOYEE WHERE BDate>'1982-01-04';