USE employees;

# =================  1.-  Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows
SELECT
  concat(e.first_name, ' ', e.last_name) AS 'Employee Name',
  e.hire_date
FROM employees AS e
WHERE e.hire_date IN (SELECT e.hire_date
                      FROM employees e
                      WHERE e.emp_no = 101010);

-- Fer's solution:
# SELECT * FROM employees WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);
  # ****  He uses = instead of in because inside the subquery there is not a list,
  # it's just one comparison 101010
  # He starts with the subquery first, and then the mail select.



# ================  2.-  Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

--  Using join:
# SELECT
#   e.first_name, e.last_name, t.title
# FROM employees AS e
#   JOIN titles t ON t.emp_no = e.emp_no
# WHERE e.first_name = 'Aamod';

SELECT
  t.title AS 'Employee title',
  count(*)
FROM titles AS t
WHERE t.emp_no IN (SELECT e.emp_no
                   FROM employees AS e
                   WHERE e.first_name = 'Aamod')
GROUP BY t.title;

-- Fer's solution:
# First:
#   SELECT e.emp_no FROM employees e WHERE e.first_name = 'Aamod';
# Second:
#   SELECT t.title FROM titles AS t WHERE t.emp_no IN ();
# Third:  move the 1st to select to the parenthesis in the second select;
#   SELECT t.title FROM titles AS t WHERE t.emp_no IN (SELECT e.emp_no FROM employees e WHERE e.first_name = 'Aamod') GROUP BY t.title;



# ================  3.-  Find all the current department managers that are female.

SELECT
  e.first_name AS 'First Name',
  e.last_name  AS 'Last Name'
FROM employees AS e
WHERE e.gender = 'F' AND e.emp_no
IN (SELECT dm.emp_no FROM dept_manager AS dm WHERE dm.emp_no = e.emp_no AND dm.to_date = '9999-01-01');

-- Fer's solution:
# 1st: (the subquery)
# SELECT dm.emp_no FROM dept_manager AS dm WHERE dm.to_date >= now();
#  2nd: the main select with the subquery included in the IN
# SELECT e.first_name, e.last_name, e.gender FROM employees e WHERE e.gender = 'F' AND e.emp_no IN (SELECT dm.emp_no FROM dept_manager AS dm WHERE dm.to_date >= now());




# ========== BONUS
# Find all the department names that currently have female managers.
SELECT
  d.dept_name AS 'Department Name with female Managers',
  count(*)
FROM departments AS d
WHERE d.dept_no IN
      (SELECT dm.dept_no FROM dept_manager AS dm WHERE dm.to_date = '9999-01-01' AND dm.emp_no IN
      (SELECT e.emp_no FROM employees AS e WHERE e.gender = 'F'))
GROUP BY d.dept_name;


