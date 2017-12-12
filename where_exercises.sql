USE employees;


# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';

# Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';

# Employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%%%%-12-25';

# Employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male
# — 441 rows.
SELECT * FROM employees WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE (last_name LIKE 'e%') OR (last_name LIKE '%e');

# Duplicate the previous query and update it to find all employees whose
# last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees  WHERE last_name LIKE 'e%e';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%%%%-12-25';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';