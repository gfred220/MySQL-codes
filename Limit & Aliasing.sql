-- Limit & Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
Limit 5, 3
;


-- Aliaisng

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;


