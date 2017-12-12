USE employees;

# 2.-  Update your queries for employees whose names start and end with 'E'. Use concat() to combine
# their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name)
AS full_name
FROM employees
WHERE last_name LIKE 'e%e';

# 3.-  For your query of employees born on Christmas and hired in the 90s, use datediff() to find
# how many days they have been working at the company (Hint: You will also need to use now() or curdate())

SELECT CONCAT(first_name, ' ', last_name) AS fullnanme, DATEDIFF(CURTIME(), hire_date) AS days_working
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%%%%-12-25'
ORDER BY birth_date, hire_date DESC;

