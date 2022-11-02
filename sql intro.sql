/*

-------------------------------------------------
						SQL 
-------------------------------------------------		
		
*/


-- collection of data
-- sql is not a case sensitive .


/*

DATA TYPES 
1 . CHARACTER - CHAR(10) , VARCHAR(100) , TEXT , BLOB
2 . NUMERIC - INT , DECIMAL(5,3) -- 34.234 / DECIMAL(5,1) -- 4562.1 , FLOAT , DOUBLE
*/


-- showing character set --

SHOW CHARACTER SET;

-- it will show charset of sql laten1 is default charset for sql

-------------------------------------------------------------------

-- showing databases --

SHOW DATABASES ;

-- it will show all the databases.

-------------------------------------------------------------------

-- creating databases --

CREATE DATABASE rock ;

-- it will create database as rock

-------------------------------------------------------------------

-- delete a database --

-- if we want to delete a database

DROP DATABASE rock ;

-- it will destroy the database rock

-- we can use SCHEMA to drop

DROP SCHEMA rock ;

-- it will delete

DROP DATABASE if exists rock ;

-- if exists it will destroy or it will give warning or alert.

-------------------------------------------------------------------

-- using database --


USE rock ;

-- using the rock database

-------------------------------------------------------------------

-- showing the tables --
 
SHOW TABLES; 

-- it will  showing the tables as you in the selected database .


-------------------------------------------------------------------

-- creating a table --

CREATE TABLE student ;

-- creating table in the rock database and  student as table

/*
create table student(
	ID INT PRIMARY KEY,
	NAME VARCHAR(20),
	MARKS decimal(3,2)
);
*/

-------------------------------------------------------------------

-- describing the table --

DESCRIBE student ;

-- it will shows the table description

-- if we want to delete a table means we can use drop

DROP TABLE student ;

-------------------------------------------------------------------

-- want to add a column or want to delete --


-- if we want to add a column 

ALTER TABLE student ADD department VARCHAR(10);

-- it will add department in column in table student

-- if we want to delete a colum 

ALTER TABLE student DROP department;

-- we can specify it as column

ALTER TABLE student ADD COLUMN department VARCHAR(10);

-------------------------------------------------------------------

-- inserting the values in the table

INSERT INTO student VALUES(1,"rock",10);

-- or we can insert like this too

INSERT INTO student (ID,NAME,MARKS,DEPARTMENT) VALUES(1,"rock",10,"ECE");

-- if we want to give more data we can give like this 

INSERT INTO student VALUES(2,"sam",8.23,"MECH"),
(3,"Raaj",8.95,,"ECE"),
(4,"Rahul",9.98,"ECE");

-------------------------------------------------------------------

-- selecting or showing the data --

SELECT * FROM student;

-- * means all 
-- it will show the student database 

-- if we want particular data want to display ,we can give like this

SELECT id,name from student;

-------------------------------------------------------------------

-- inserting if we don't know about some data --

INSERT INTO student(id,name,cgpa) values(5,"Arul",8.89);


--------------------------------------------------------------------

-- where clause and conditions 

CREATE TABLE employee(
	EMP_ID PRIMARY KEY ,
	NAME VARCHAR(25),
	JOB_ROLE VARCHAR(20),
	SALARY INT
);

/*
-- where clause and condition -- 
SELECT column1, column2, ...
FROM table_name
WHERE condition;

= - equal
> - greater
< - lesser
>= = greater than or equal
<= = less than or equal
<> = not equal or != not equal
BETWEEN - between a certain range
AND & OR - for satisfies 
LIKE - search for a pattern
*/

SELECT * FROM employee
WHERE SALARY > 200000;

SELECT * FROM employee
WHERE SALARY < 25000 AND JOB_ROLE="TRAINEE";

SELECT * FROM employee
WHERE JOB_ROLE IN ("HR","MANAGER");

SELECT * FROM employee
WHERE JOB_ROLE = "HR" AND JOB_ROLE = "MANAGER" ;

SELECT * FROM employee
WHERE JOB_ROLE NOT IN ("CEO","MANAGER");

SELECT * FROM employee
WHERE SALARY BETWEEN 50000 AND 35000
LIMIT 10 ;	

-- this will limit 10 of the records


-- LIKE 
-- WILDCARDS [ % = ZERO OR MORE CHAR ] [ _ = ONE CHAR ]

SELECT * FROM employee 
WHERE NAME LIKE "A%";

-- it will display the alphabet of starting letter A.

SELECT * FROM employee 
WHERE NAME NOT LIKE "A%";

-- it won't display the alphabet of starting letter A.

SELECT * FROM employee 
WHERE NAME LIKE "A%A";

-- it will display the alphabet as starting from A and ending to A.

SELECT * FROM employee 
WHERE NAME LIKE "%i%";

-- it will display in between the name of i letter

SELECT * FROM employee 
WHERE NAME LIKE "__A%";

-- for how many underscore we put , it will take after the char wants to check or show the data 
-- for e.g., 3 rd letter of A name will be shown..

SELECT * FROM employee 
WHERE NAME LIKE "__A\%";

-- backslash for it won't recognize the %  as function , if we didn't put the backslash it will be recognize as % so some error will occur.

-------------------------------------------------------------------

-- UPDATING --

UPDATE employee 
SET JOB_ROLE = "INTERN"
WHERE JOB_ROLE = "TRAINEE"

-- it will set intern job to where who are trainee like that

update employee set NAME=?,JOB_ROLE=?,SALARY=? where EMP_ID =?;

------------------------------------------------------------------

-- DELETING --

DELETE FROM employee
WHERE ID = 12;

-- it will delete the id and data of it.

------------------------------------------------------------------

-- DISTINCT & ORDER BY --

SELECT JOB_ROLE FROM employee;

-- it will repeat the roles as who are have...

SELECT DISTINCT JOB_ROLE FROM employee;

-- it will won't repeat the roles from employee

-------------------------------------------------------------------


-- ORDER BY --

SELECT * FROM employee
ORDER BY NAME;

-- it will display the order of alphabet

SELECT * FROM employee 
ORDER BY SALARY;

-- it will display the order of salary high to low

SELECT * FROM employee 
ORDER BY SALARY DESC; 

-- it will show low to high

SELECT * FROM employee 
ORDER BY SALARY ASC;

-- it is default for ascending ... 

SELECT * FROM employee 
ORDER BY SALARY,NAME;

-- if salary is equal and after name will sorting ...

SELECT * FROM employee 
WHERE JOB_ROLE ="INTERN"
ORDER BY SALARY;

SELECT * 
FROM employee
ORDER BY (CASE JOB_ROLE
WHEN "CEO" THEN 1
WHEN "HR" THEN 2
WHEN "MANAGER" THEN 3
WHEN "INTERN" THEN 4
ELSE 6
),NAME;

-- for alphabet order we adding NAME .
-- order by case our custom preference

------------------------------------------------------------------

