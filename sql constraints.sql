/*

			CONSTRAINTS

*/

CREATE DETAILS(
	ID INT PRIMARY KEY AUTO_INCREMENT,  -- id auto incrementing
	NAME VARCHAR(20) NOT NULL, -- it won't be null value
	JOB VARCHAR(20) DEFAULT "UNASSIGNED", -- if we didn't give any value , it will be save as unassigned by default
	SALARY INT ,
	PAN VARCHAR(10) UNIQUE, -- if we add someone pan id for 2nd time it will show error unique
	CHECK (SALARY > 10000) -- it won't be add if the salary is less than 10k .
);

INSERT INTO DETAILS (NAME,JOB,SALARY,PAN) VALUES ("ABC","HR",500000,"12RH459V30");

INSERT INTO DETAILS (NAME,SALARY) VALUES ("ABD",1000000);

---------------------------------------------------------------------

CREATE DETAILS(
	ID INT PRIMARY KEY ,
	NAME VARCHAR(20),
	JOB VARCHAR(20),
	SALARY INT
);

-- if we didn't add the constraints first time , 
-- now we want to add the constraints ...

ALTER TABLE DETAILS 
MODIFY NAME VARCHAR(20) NOT NULL;

-- we can add modify functions and values with modify ... [ add not null constraints ]

----------------

-- if we not want the constraints we can delete that [ drop not null constraints ]

ALTER TABLE DETAILS
MODIFY NAME VARCHAR(20);

-- adding default constraints --

ALTER TABLE DETAILS
ALTER JOB SET DEFAULT "UNASSIGNED" ;

-- droping default constraints --

ALTER TABLE DETAILS
ALTER JOB DROP DEFAULT;

-- add check constraints --
ALTER TABLE DETAILS
ADD CONSTRAINT CHECK_SALARY CHECK ( SALARY>50000);

-- drop check constraints --
ALTER TABLE DETAILS 
DROP CHECK CHECK_SALARY;


-- for autoo increment we can give the value as where from start ...

AUTO INCREMENT = 100

-- it will start from 100 
-- if we didn't give any value it will be start from 1


----------------------------------------------------------------------







