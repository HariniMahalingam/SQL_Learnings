-- Create Database
CREATE DATABASE PRACTICE_SQL

--Create Table_Name
CREATE TABLE SAMPLE_TABLE(
EMP_ID INT,
EMP_NAME VARCHAR,
EMP_AGE INT,
EMP_SALARY INT);

-- Insert Values in a table
INSERT INTO SAMPLE_TABLE VALUES(4183,'MAHA',58,5000000),
(55555,'SHAN',57,5555555),(160896,'DURGESH',28,1000000)

INSERT INTO SAMPLE_TABLE VALUES(12345,'ABCD',33,3628)

-- Update values of records in a table
UPDATE SAMPLE_TABLE
SET EMP_ID = '45642',EMP_NAME ='GHIJK'
WHERE EMP_ID = '12345'

--Delete Record from a table
DELETE FROM SAMPLE_TABLE
WHERE EMP_ID='45642'

-- Show all records in a table
SELECT * FROM SAMPLE_TABLE

-- Show specific column in a table.
SELECT EMP_ID,EMP_NAME FROM SAMPLE_TABLE

-- Rename Table name and Column Name
ALTER TABLE SAMPLE_TABLE
RENAME TO SAMPLE

ALTER TABLE SAMPLE
RENAME COLUMN EMP_SALARY TO SAL

-- Alter Column Data type
ALTER TABLE SAMPLE
ALTER COLUMN SAL TYPE BIGINT

-- Add Primary Key to existing table
ALTER TABLE SAMPLE
ADD PRIMARY KEY(EMP_ID)

-- Use of Distinct Clause
SELECT DISTINCT EMP_ID FROM SAMPLE

-- Use of limit Clause
SELECT EMP_ID,EMP_NAME FROM SAMPLE LIMIT 2

-- Use of AND and OR clause
SELECT EMP_ID,EMP_NAME FROM SAMPLE WHERE SAL > 500000 AND EMP_AGE > 57

-- Use of ORDER BY clause
SELECT EMP_ID,EMP_NAME,EMP_AGE FROM SAMPLE ORDER BY EMP_AGE;

-- Use of ORDER BY clause for multiple columns
SELECT EMP_ID,EMP_NAME,EMP_AGE FROM SAMPLE ORDER BY EMP_AGE,EMP_ID DESC;

-- Use of IS NULL or IS NOT NULL
SELECT EMP_ID,EMP_NAME FROM SAMPLE WHERE SAL IS NULL
SELECT EMP_ID,EMP_NAME FROM SAMPLE WHERE SAL IS NOT NULL

-- Use of LIKE operator
SELECT EMP_NAME from SAMPLE WHERE EMP_NAME LIKE 'M%'

-- Use of UNION OPERATOR
(SELECT EMP_ID,EMP_NAME FROM SAMPLE WHERE SAL > 500000 AND EMP_AGE > 57)
UNION
(SELECT EMP_ID,EMP_NAME FROM SAMPLE WHERE SAL > 500000 AND EMP_AGE = 28)

-- Use of CASE statment
SELECT EMP_ID,EMP_NAME,
CASE
WHEN EMP_AGE = 58 THEN 'SUPER-SENIOR'
WHEN EMP_AGE = 57 THEN 'SENIOR'
WHEN EMP_AGE = 28 THEN 'JUNIOR'
END AS "Level"
FROM SAMPLE