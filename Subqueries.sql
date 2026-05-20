-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN 
                   (SELECT employee_id
                    FROM employee_salary
                    WHERE dept_id = 1)
;

-- Using a subquery in the SELECT statement

SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

-- Using a subquery in FROM statement

SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT AVG(MAX_age)
FROM 
(SELECT gender, 
	AVG(age) AS 'avg_age',
	MIN(age) AS 'min_age', 	
    MAX(age) AS 'max_age', 
    COUNT(age) AS 'count_age'
FROM employee_demographics
GROUP BY gender) AS Agg_table
;	  




