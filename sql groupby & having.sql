/*

			GROUP BY AND HAVING	

*/

SELECT *
FROM employee
ORDER BY JOB_ROLE;

SELECT JOB_ROLE,AVG(SALARY) SALARY
FROM employee
GROUP BY JOB_ROLE;

-- it will add the group of average salary


SELECT JOB_ROLE,COUNT(EMP_ID)
FROM employee
GROUP BY JOB_ROLE;

-- it will display the group of members how many peoples

/*
CEO - 2
HR - 5
MANAGER -6
ADMIN - 2
TRAINEE - 50
INTERN - 100
LIKE THAT,...
*/

SELECT JOB_ROLE,COUNT(EMP_ID) `EMP ID`
FROM employee
GROUP BY JOB_ROLE
HAVING COUNT(EMP_ID) > 1;

-- it will display more than the count of 1 member of job role group



-- where filters rows
-- having filters group

SELECT JOB_ROLE,COUNT(EMP_ID) `EMP ID`
FROM employee
WHERE SALARY >= 150000
GROUP BY JOB_ROLE
HAVING COUNT(EMP_ID) > 1
ORDER BY JOB_ROLE;


-------------------------------------------------------------------

