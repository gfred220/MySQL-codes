-- Temporary Tables

CREATE TEMPORARY TABLE temp_table1
(
first_name varchar(50),
last_name varchar (50),
favorite_movie varchar(100)
)
;

SELECT *
FROM temp_table1;

INSERT INTO temp_table1
VALUES('Fred','Adjei','Game of Thrones');

SELECT *
FROM temp_table1;
-------------------------------

SELECT *
FROM employee_salary;


CREATE TEMPORARY TABLE salary_over_49k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary;
------------------------------

CREATE temporary table Memo
SELECT first_name, last_name, age, gender
FROM employee_demographics
WHERE gender = 'female';

SELECT *
FROM memo;

---------------------------------

CREATE temporary table ORDER_LIST
(
First_name VARCHAR(50),
Last_name varchar(50),
Food_order varchar(100),
Phone_number INT(20)
);

SELECT *
FROM Order_list;

INSERT INTO Order_list
VALUES('FRED','ADJEI','FUFU AND GOAT MEAT','0249211112')
;
SELECT *
FROM Order_list;

























































