/*

		SQL ( Functions )

*/

-- functions - to perform a specific task.

-- link : techonthenet.com/mysql (functions list )

-----------------------------------------------------------------

-- if we want to count the total no.of . employees

SELECT COUNT(*) 
from employee;

-- it wiil display count of employees [ for  e.g., 25 like that ]

SELECT COUNT(*) TOTAL
from employee;

-- it will display the TOTAL 25 . like that

SELECT COUNT(*) MANAGER
FROM employee
WHERE JOB_ROLE="MANAGER";

-- it will display the manager role count and it will be display [ for e.g., MANAGERS 5 like that ]

SELECT AVG(SALARY) 
FROM employee
WHERE JOB_ROLE="INTERN";

-- it will display the average salary of total interns

SELECT SUM(SALARY) 
FROM employee
WHERE JOB_ROLE="HR";

-- it will display the total sum of salary for HR 
/*
FOR E.G.,

HR - 5000
HR - 6000
HR - 6700

IT WILL DISPLAY THE SUM OF SALARY FRO HR = 17700
LIKE THAT..,

*/

SELECT MAX(SALARY)
FROM employee;


SELECT MIN(SALARY)
FROM employee;

-- it will display the max and min salary of total employees list


-- these are aggregate funtions, which are used most commonly.

--------------------------------------------------------------------

-- STRING 

SELECT NAME,SALARY
FROM employee;

-- it will print normally name and salary list

-- if i want the name as uppercase means , we can use this

SELECT UCASE(NAME),SALARY
FROM employee;

SELECT UCASE(NAME) EMP_NAME,SALARY
FROM employee;

-- it will display the name as EMP_NAME that called as ALIAS NAME

SELECT NAME,CHAR_LENGTH(NAME) CHAR_COUNT_NAME
FROM employee;

-- it will display the name of the character count in another column


-- concatenate --

SELECT NAME,CONCAT('Rs.',FORMAT(SALARY,0)) SALARY
FROM employee;

SELECT NAME,LEFT(JOB_ROLE,3)
FROM employee;

-- it will display the job role first 3 letter for e.g., manager means MAN

-------------------------------------------------------------------

