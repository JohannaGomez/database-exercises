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
SELECT * FROM employees WHERE last_name like '%q%';