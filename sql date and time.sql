/*

	SQL	DATE AND DATE FUNCTIONS

*/

-- DATE

ALTER TABLE employee ADD HIRE_DATE DATE;

UPDATE employee SET HIRE_DATE="2020-07-05" --YYYY-MM-DD

UPDATE employee SET HIRE_DATE="2021-01-05" 
WHERE JOB_ROLE="INTERN";


--YYYY-MM-DD   /date with year
-- YYYY-MM-DD HH:MM:SS /date with time
-- YYYY   /year
-- HH:MM:SS  /time

-- link: techonthenet/mysql/dateandtime

------------------------------------------------------------------

SELECT NOW();

-- it will display date with time

SELECT DATE(NOW());

-- it will display date only

SELECT CURDATE(NOW()) `CURRENT_DATE` ;

-- we can use as or ` ` this for name , becoz the if u giving the name is a function , you can give like this..

SELECT DATE_FORMAT(CURDATE(),"%d,%m,%y") AS `DATE` ;

SELECT DATEDIFF(CURDATE(),"2021-05-04" AS `DAYS`;

SELECT DATE_ADD(CURDATE(),INTERVAL 1 DAY) AS `AFTER DAYS`;

-- we can give like days week month on interval

--------------------------------------------------------------------
