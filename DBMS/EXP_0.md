<center><h2>Experiment 0</h2></center>

### How to show database?
~~~sql
SHOW DATABASES;
~~~

### How to create database?
~~~sql
CREATE DATABASE 2CSE18_2410030021;
~~~

### How to use database?
~~~sql
USE 2CSE18_2410030021;
~~~

### How to create table?
~~~sql
CREATE TABLE DEPARTMENT(
    DEPTNO INT(2) PRIMARY KEY,
    DNAME VARCHAR(15) NOT NULL
);
~~~

### How to describe a department?
~~~sql
DESC DEPARTMENT;
~~~

### How to create a table employee?
~~~sql
CREATE TABLE EMPLOYEE(
    EMPNO INT(4) PRIMARY KEY,
    ENAME VARCHAR(20) NOT NULL,
    JOB VARCHAR(20),
    MGR INT(4),
    HIREDATE DATE,
    SAL INT(10),
    COMM INT(7),
    DEPTNO INT(2),
    CONSTRAINT FK_EMP_DEPT
    FOREIGN KEY(DEPTNO)
    REFERENCES DEPARTMENT(DEPTNO)
);
~~~

### How to describe employee?
~~~sql
DESC EMPLOYEE;
~~~

### How to show tables?
~~~sql
SHOW TABLES;
~~~

### How to insert value?
~~~sql
INSERT INTO DEPARTMENT VALUES(10,"RESEARCH"),
(20,"ACCOUNTING"),
(30,"SALES"),
(40,"OPERATIONS");
~~~

### How to display all records?
~~~sql
SELECT * FROM DEPARTMENT;
~~~

### How to insert value into employee table?
~~~sql
INSERT INTO EMPLOYEE VALUES
    -> (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
    -> (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
    -> (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,300,30),
    -> (7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
    -> (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
    -> (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
    -> (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,20),
    -> (7788,'SCOTT','ANALYST',7566,'1982-12-09',3000,NULL,40),
    -> (7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,20),
    -> (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
    -> (7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20),
    -> (7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
    -> (7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
    -> (7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
~~~

### How to display all records?
~~~sql
SELECT * FROM EMPLOYEE;
~~~
