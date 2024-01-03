
# MUST DO PROBLEMS


# THIRD HIGHEST SALARY
SELECT * FROM employee ORDER BY salary DESC LIMIT 2,1;


# NTH HIGHEST SALARY
SELECT salary FROM employee e1 where N-1 = (SELECT COUNT(DISTINCT SALARY) FROM employee e2 where e1.salary <e2.salary)

  
# FIND DUPLICATES ROW
  SELECT * ,COUNT(empid) from Employee GROUP BY empid;


# RETRIVE EVEN  ROWS FROM TABLE
  SELECT * from Employee WHERE MOD(empid ,2)=0;


# RETRIVE ODD ROWS FROM TABLE
  SELECT * from Employee WHERE MOD(empid ,2)=1;


# SELECT FIRST AND LAST ROW 
  SELECT * FROM Employee WHERE empid = (SELECT MIN(empid) from Employee);

  SELECT * FROM Employee WHERE empid = (SELECT MAX(empid) from Employee);


# COPY ALL ROWS OF TABLE TO ANOTHER TABLE
  CREATE TABLE Allemployee AS SELECT * from Employee;

  CREATE TABLE Detemployee AS SELECT * from Employee WHERE 3=4;


# RETRIVE LIST OF EMPLOYEES WORKING IN SAME DEPARTMENT
  SELECT DISTINCT E.empid , E.empname , E.department FROM Employee E , Employee E1
  WHERE E.department = E1.department AND E.empid = E1.empid;


# REMOVE DUPLICATES
DELETE E1
FROM Employee E1 , Employee E2
WHERE E1.email = E2.email
AND E1.id > E2.id;

DELETE E1
FROM Employee E1 , Employee E2
WHERE E1.email = E2.email
AND E1.name = E2.name
AND E1.id > E2.id;
  

# TOP 3 RECORDS
SELECT * FROM Employee LIMIT 3;


# BOTTOM 3 RECORDS
SELECT * FROM (SELECT * FROM Employee ORDER BY Empid DESC LIMIT 3)temp ORDER BY Empid ASC;
SELECT * FROM temp ORDER BY empid ASC;


# RETRIVE DETAILS OF EMPLOYEE LASTNAME CONTAINS 5 LETTERS ENDING WITH A 
SELECT * FROM Employee WHERE lastname LIKE '_____A';


# RETRIVE FIRST 4 CHARACTER FROM employee name from Table
SELECT SUBSTRING(name , 1, 4) FROM Employee;

