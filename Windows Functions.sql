-- Window functions

SELECT dem.first_name, dem.last_name, gender, AVG(salary) Avg_salary
FROM employee_demographics Dem
JOIN employee_salary Sal 
	ON Dem.employee_id = Sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender
;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender) 
FROM employee_demographics Dem
JOIN employee_salary Sal 
	ON Dem.employee_id = Sal.employee_id
;


-- Rolling Total

SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender  ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics Dem
JOIN employee_salary Sal 
	ON Dem.employee_id = Sal.employee_id
;


-- ROW NUMBER

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) 
FROM employee_demographics Dem
JOIN employee_salary Sal 
	ON Dem.employee_id = Sal.employee_id;

    
-- RANK

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num
FROM employee_demographics Dem
JOIN employee_salary Sal 
	ON Dem.employee_id = Sal.employee_id;
    
-- DENSE RANK

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics Dem
JOIN employee_salary Sal 
	ON Dem.employee_id = Sal.employee_id;
    