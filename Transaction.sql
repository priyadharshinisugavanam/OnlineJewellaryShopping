CREATE TABLE EMPLOYEE
(
empName VARCHAR(20),
empId NUMERIC NOT NULL PRIMARY KEY,
empSalary NUMERIC,
empAge NUMERIC,
empDept VARCHAR(10),
)

DROP TABLE EMPLOYEE;

SELECT * FROM EMPLOYEE;

ALTER TABLE EMPLOYEE ADD UNIQUE (empId);

INSERT INTO EMPLOYEE (empName,empId,empSalary,empAge,empDept,companyName)VALUES('Lavi',5,10000,23,'ECE','HCL');
INSERT INTO EMPLOYEE (empName,empId,empSalary,empAge,empDept) VALUES('priya',1,20000,20,'IT');
INSERT INTO EMPLOYEE (empName,empId,empSalary,empAge,empDept) VALUES ('Aishu',2,30000,20,'CSE');
INSERT INTO EMPLOYEE (empName,empId,empSalary,empAge,empDept) VALUES('Madhu',3,25000,17,'EEE');
INSERT INTO EMPLOYEE (empName,empId,empSalary,empAge,empDept,companyName) VALUES('Sathya',8,25000,19,'Nano','Wipro56');


ALTER TABLE EMPLOYEE ADD companyName VARCHAR(20);

ALTER TABLE EMPLOYEE DROP COLUMN companyName;

CREATE INDEX idx_empId ON EMPLOYEE (empId);

DROP INDEX idx_empId ON EMPLOYEE;



BEGIN TRANSACTION

INSERT INTO [dbo].[Employee] (
   [EmpID], [empName], [empSalary], [empAge], [empDept])
     VALUES (19, 'Sanju', 10000, 20,'CSE')

UPDATE [dbo].[Employee]
SET [empDept] = 'IT',
[empSalary] = 98000
WHERE [EmpID] = 5
 
  INSERT INTO [dbo].[Employee] (
   [EmpID], [empName], [empSalary], [empAge], [empDept])
     VALUES (23, 'Joan', 10000, 20,'EEE')

UPDATE [dbo].[Employee]
SET [empDept] = 'IT',
[empSalary] = 98000
WHERE [EmpID] = 9

COMMIT TRANSACTION

ROLLBACK TRANSACTION




CREATE TABLE Persons (
    ID NUMERIC IDENTITY NOT NULL,
empId NUMERIC FOREIGN KEY References EMPLOYEE(empId),
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age NUMERIC,
    City VARCHAR(255) DEFAULT 'Sandnes'
);


SELECT * FROM Persons;


INSERT INTO PERSONS(empId,LastName,FirstName,Age,city) VALUES(1,'Ram','Kumar',20,'Pune');
INSERT INTO PERSONS(empId,LastName,FirstName,Age,city) VALUES(2,'Jay','Sai',18,'Chennai');