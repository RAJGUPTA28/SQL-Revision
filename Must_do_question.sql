
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

# REMOVE DUPLICATES


# TOP 3 SALARY 


# BOTTOM 3 SALARY
