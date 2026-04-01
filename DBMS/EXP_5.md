
### 1.Display the total number of employee working in the company.
~~~sql
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE;
~~~

### 2.Display the total salary being paid to all employees.
~~~sql
SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE;
~~~

### 3.Display the maximum salary from employee table.
~~~sql
SELECT MAX(SAL) AS MAXIMUM_SALARY
FROM EMPLOYEE;
~~~

### 4.Display the minimum salary from employee table.
~~~sql
SELECT MIN(SAL) AS MINIMUM_SALARY
FROM EMPLOYEE;
~~~

### 5.Display the average salary from employee table
~~~sql
SELECT AVG(SAL) AS AVERAGE_SALARY
FROM EMPLOYEE;
~~~

### 6.Display the maximum salary being paid to clerk.
~~~sql
SELECT MAX(SAL) AS MAX_CLERK_SALARY
FROM EMPLOYEE
WHERE JOB = 'CLERK';
~~~

### 7.Display the maximum salary being paid in dept no 20.
~~~sql
SELECT MAX(SAL) AS MAX_DEPT20_SALARY
FROM EMPLOYEE
WHERE DEPTNO = 20;
~~~

### 8.Display the minimum salary paid to any salesman.
~~~sql
SELECT MIN(SAL) AS MIN_SALESMAN_SALARY
FROM EMPLOYEE
WHERE JOB = 'SALESMAN';
~~~

### 9.Display the average salary drawn by managers.
~~~sql
SELECT AVG(SAL) AS AVG_MANAGER_SALARY
FROM EMPLOYEE
WHERE JOB = 'MANAGER';
~~~

### 10.Display the total salary drawn by analyst working in dept no 40.
~~~sql
SELECT SUM(SAL) AS TOTAL_ANALYST_SALARY
FROM EMPLOYEE
WHERE JOB = 'ANALYST'
AND DEPTNO = 40;
~~~

### 11.Display the names of the employee in Uppercase.
~~~sql
SELECT UPPER(ENAME) AS EMPLOYEE_NAME_UPPER
FROM EMPLOYEE;
~~~

### 12.Display the names of the employee in Lowercase.
~~~sql
SELECT LOWER(ENAME) AS EMPLOYEE_NAME_LOWER
FROM EMPLOYEE;
~~~

### 13.Display the names of the employee in Proper case.
~~~sql
SELECT CONCAT(UPPER(LEFT(ENAME,1)),LOWER(SUBSTRING(ENAME,2))) AS EMPLOYEE_NAME
FROM EMPLOYEE;
~~~

### 14.Display the length of Your name using appropriate function.
~~~sql
SELECT LENGTH('DEEPAK') AS NAME_LENGTH;
~~~

### 15.Display the length of all the employee names.
~~~sql
SELECT ENAME,
LENGTH(ENAME) AS NAME_LENGTH
FROM EMPLOYEE;
~~~
