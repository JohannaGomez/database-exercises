USE employees;
# 2.-  Using the example in the Associative Table Joins section as a guide, write a query that shows each department
# along with the name of the current manager for that department.
SELECT d.dept_name AS  'Department Name', CONCAT(e.first_name, ' ' ,  e.last_name) AS 'Department manager'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# 3.-  Find the name of all departments currently managed by women.
SELECT d.dept_name AS  'Department Name', CONCAT(e.first_name, ' ' ,  e.last_name) AS 'Manager Name'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# 4.- Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS Title, COUNT(*) AS 'Count'
FROM  employees AS e
JOIN titles AS t
    ON t.emp_no = e.emp_no
JOIN dept_emp as de
    ON de.emp_no = t.emp_no
JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY t.title;


# 5.-  Find the current salary of all current managers.
SELECT d.dept_name AS  'Department Name', CONCAT(e.first_name, ' ' ,  e.last_name) AS 'Department manager', s.salary AS 'Salary'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN salaries AS s
    ON s.emp_no = dm.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


# =====Bonus =======
# Find the names of all current employees, their department name, and their current manager's name.
SELECT concat(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ' ,  e.last_name) AS 'Department manager'
FROM employees AS e


# 240,124 Rows
#
# Employee Name | Department Name  |  Manager Name
# --------------|------------------|-----------------
# Huan Lortz   | Customer Service | Yuchang Weedman

