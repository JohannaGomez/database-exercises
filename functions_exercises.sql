USE employees;

# 2.-  Update your queries for employees whose names start and end with 'E'. Use concat() to combine
# their first and last name together as a single column in your results.

SELECT CONCAT(e.first_name, ' ', e.last_name)
AS full_name
FROM employees AS e
WHERE e.last_name LIKE 'e%e';

# 3.-  For your query of employees born on Christmas and hired in the 90s, use datediff() to find
# how many days they have been working at the company (Hint: You will also need to use now() or curdate())

SELECT CONCAT(e.first_name, ' ', e.last_name) AS fullnanme,
DATEDIFF(CURTIME(), e.hire_date) AS days_working,
(DATEDIFF(CURTIME(), e.hire_date)/365) AS years_working
FROM employees AS e
WHERE e.hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND e.birth_date LIKE '%%%%-12-25'
ORDER BY e.birth_date, e.hire_date DESC;

