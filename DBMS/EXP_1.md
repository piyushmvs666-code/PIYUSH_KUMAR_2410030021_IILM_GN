### 1.Create employee_master table with data using employee table
~~~sql
CREATE TABLE EMPLOYEE_MASTER AS SELECT * FROM EMPLOYEE;
~~~

### 2.Delete all record into Employee_master whose DeptNo is 10
~~~sql
DELETE FROM EMPLOYEE_MASTER
WHERE DEPTNO = 10;
~~~

### 3.Update 10% in his salary of DEPTNO 20 into Employee_Master
~~~sql
UPDATE EMPLOYEE_MASTER
SET SAL = (SAL + IFNULL(COMM,0))* 1.10
WHERE deptno = 20;
~~~

### 4.Alter SAL with size 10,2 in Employee_Master
~~~sql
ALTER TABLE EMPLOYEE_MASTER
MODIFY SAL DECIMAL(10,2);
~~~

### 5.Drop Employee_master Table
~~~sql
DROP EMPLOYEE_MASTER;
~~~
