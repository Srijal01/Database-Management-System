--LAB 3: IMPLEMENTATION OF DML STATEMENTS
--a) Write the SQL statement to insert the data in the respective tables.
--DEPARTMENT
INSERT into DEPARTMENT(Dname,Dnumber,Mgr_ssn,Mgr_start_date) values
('Finance',1111,9090,'2010/05/06'),
('Human Resources',2222,8080,'2009/06/05'),
('IT',3333,7070,'2008/04/08'),
('Administration',4444,6060,'2002/09/15');
SELECT *FROM DEPARTMENT;
--EMPLOYEE
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES
('John', 'WS', 'Smith', 3270, '1965-09-06', 'Mandeville', 'Male', 125478, 7070, 3333),
('Tillroy', 'TB', 'Bent', 6060, '1981-09-08', 'St. Ann', 'Male', 1478991, NULL, 4444),
('Samath', 'SS', 'Scott', 6098, '1998-09-08', 'St. Ann', 'Male', 124576, 6060, 4444),
('Jenny', 'JS', 'Scott', 7070, '1979-09-05', 'St. Ann', 'Female', 1587896, NULL, 3333),
('Roy', 'RP', 'Palmer', 8080, '1980-09-05', 'Kingston', 'Male', 1798541, NULL, 2222),
('Sandra', 'SW', 'Williams', 9069, '1998-09-05', 'Ochi Rios', 'Female', 189756, 9090, 1111),
('Peter', 'PW', 'Williams', 9090, '1978-09-05', 'Kingston', 'Male', 1321458, NULL, 1111),
('Jimmy', 'JW', 'Walker', 9785, '1995-09-09', 'Mandwville', 'Male', 234512, 8080, 2222);
SELECT *FROM EMPLOYEE;
--DEPT_LOCATIONS
INSERT into DEPT_LOCATIONS(DNumber,DLocation) values
(1111,'65878'),
(2222,'78564'),
(4444,'89874'),
(3333,'65478');
SELECT *FROM DEPT_LOCATIONS;
--PROJECT
INSERT into PROJECT(PName,Pnumber,PLocation,Dnumber) values
('Code Writing',6666,'North-East Wing',4444),
('Unit Testing',7777,'West Wing',3333),
('System Development',8888,'South Wing',2222),
('Game Development',9999,'North Wing',1111);
SELECT *FROM PROJECT;
--WORKS_ON
INSERT into WORKS_ON(Essn,Pno,Hours) values
(9090,9999,35),
(8080,8888,30),
(7070,7777,35),
(6060,6666,25);
SELECT *FROM WORKS_ON;

--b) Write a SQL statement to update the department number to 3333 whose Ssn is 7070 in EMPLOYEE table.
UPDATE EMPLOYEE SET Dno = 3333 WHERE Ssn = 7070;

--c) Write a SQL statement to update the hours to 28 whose Essn is 6060 and Pno is 6666 in WORKS ON table.
UPDATE WORKS_ON SET Hours =28 WHERE Essn=6060 AND Pno=6666;

--d) Write a statement to delete a record from WORKS_ON table Pnumber is 8888.
DELETE from WORKS_ON WHERE Pno = 8888;
