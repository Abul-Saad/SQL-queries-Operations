create database developer;
use collage;
CREATE TABLE full_stack_dev(

fsd_id INT PRIMARY KEY,
fsd_Name VARCHAR(150),
fsd_salary decimal(10,2),
fsd_Bonus decimal(10,2),
fsd_tax decimal(10,2),
fsd_hour_work varchar(20)


);

ALTER TABLE full_stack_dev ADD(fsd_hour_work VARCHAR(10));
ALTER TABLE full_stack_dev DROP COLUMN fsd_hour_work;

desc full_stack_dev;

DROP TABLE full_stack_dev;

-- Arithmetic Operators: 

INSERT INTO full_stack_dev (fsd_id, fsd_Name,fsd_salary,fsd_Bonus,fsd_tax,fsd_hour_work)
VALUES (724, 'SAAD','500000','500','200','0.3hr');

INSERT INTO full_stack_dev (fsd_id, fsd_Name,fsd_salary,fsd_Bonus,fsd_tax,fsd_hour_work)
VALUES (723, 'Rahul','600000','1000','300','0.3hr');

SELECT *FROM full_stack_dev;


SELECT fsd_id, fsd_Name,fsd_salary,fsd_Bonus,fsd_salary + fsd_Bonus AS total_salary
FROM full_stack_dev;

SELECT fsd_id, fsd_Name,fsd_salary,fsd_Bonus,fsd_tax,fsd_salary - fsd_tax AS total_salary
FROM full_stack_dev;

SELECT fsd_id, fsd_Name,fsd_salary,fsd_Bonus,fsd_tax,fsd_hour_work,fsd_salary * fsd_hour_work AS tota_Balance
FROM full_stack_dev;

SELECT fsd_id, fsd_Name,fsd_salary,fsd_Bonus,fsd_tax,fsd_hour_work,fsd_salary / 12 AS monthly_salary
FROM full_stack_dev;

DELETE FROM full_stack_dev
 WHERE fsd_id=724;
 
 -- Comparison Operators 
 
 CREATE TABLE zapnic(
 
  staff_id INT PRIMARY KEY,
  staff_Name VARCHAR(150),
  staff_salary DECIMAL(10,2),
  staff_department VARCHAR(50)
  
 );
 
 DESC zapnic;
 
 INSERT INTO zapnic (staff_id, staff_Name,staff_salary,staff_department)
VALUES (555, 'SAAD','50000','Software Architect');

 INSERT INTO zapnic (staff_id, staff_Name,staff_salary,staff_department)
VALUES (560, 'Faiz','60000','Software Architect');


 INSERT INTO zapnic (staff_id, staff_Name,staff_salary,staff_department)
VALUES (556, 'Rahul','65000','Finance Department');

 INSERT INTO zapnic (staff_id, staff_Name,staff_salary,staff_department)
VALUES (557, 'Razi','80000','Security Department');

 INSERT INTO zapnic (staff_id, staff_Name,staff_salary,staff_department)
VALUES (558, 'Akshay','40000','Sales department');

 INSERT INTO zapnic (staff_id, staff_Name,staff_salary,staff_department)
VALUES (559, 'Shaif','90000','UX Designer');

SELECT * FROM zapnic;

-- equal to

SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department = 'Software Architect';

-- Not equal to

SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department <> 'Software Architect';

-- Greater than Salary

SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_salary > 70000;

-- Less than or equal to Salary

SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_salary <= 70000;

-- Logical Operators -->

-- AND Greater than Salary with Department 

SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department = 'Software Architect' AND staff_salary > 50000;

-- OR
SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department = 'Software Architect' OR staff_department = 'UX Designer';

-- NOT
SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE NOT staff_department = 'UX Designer';

-- Concatenation Operator -->

-- Concatenation
SELECT CONCAT(emp_first_name, ' ', emp_last_name) AS full_name
FROM employees;

-- IN Operator

-- IN
SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department IN ('UX Designer', 'Software Architect');

-- LIKE Operator (Pattern Matching)

-- LIKE
SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_Name LIKE '__i%';

-- IS NULL and IS NOT NULL -->

-- IS NULL
SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department  IS NULL;

-- IS NOT NULL
SELECT staff_Name,staff_salary,staff_department
FROM zapnic
WHERE staff_department IS NOT NULL;

-- CASE Statement:-->

-- CASE
SELECT staff_Name,staff_salary,staff_department,
       CASE
           WHEN staff_salary > 75000 THEN 'Top-tier/Executive Salary'
           WHEN staff_salary > 60000 THEN 'Above Average/High Salary'
           WHEN staff_salary > 50000 THEN 'Average/Moderate Salary'
           ELSE 'Low Salary'
       END AS salary_category
FROM zapnic;





