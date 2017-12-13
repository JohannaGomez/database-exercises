USE employees;
#  ========================================  Group lecture  ===================================================
#  Aggregate functions (functions with memory) like sum(), count(), avg(), max(), min()
# SELECT
#   count(*),
#   e.first_name,
#   e.last_name
# FROM employees e
# WHERE e.first_name LIKE '%z%'
# GROUP BY e.first_name, e.last_name ASC;

# SELECT
#   sum(s.salary),
#   s.to_date
# FROM salaries s
# WHERE s.to_date = '9999-01-01'
# GROUP BY s.to_date;



# 2.-  ===================  In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT t.title
FROM titles AS t;



# 3.-  ==================  Find your query for employees whose last names start and end with 'E'.
# Update the query find just the unique last names that start and end with 'E' using GROUP BY.
SELECT e.last_name
FROM employees AS e
WHERE e.last_name LIKE 'e%e'
GROUP BY e.last_name;



# 4.-  ===================  Update your previous query to now find unique combinations of first and last
# name where the last name starts and ends with 'E'. You should get 846 rows.
# Using distinct:
SELECT DISTINCT CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
WHERE e.last_name LIKE 'e%e'
ORDER BY full_name;

# Using group by:
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
WHERE e.last_name LIKE 'e%e'
GROUP BY full_name;



# 5.-  ====================  Find the unique last names with a 'q' but not 'qu'.
# Using distinct:
SELECT DISTINCT e.last_name
FROM employees AS e
WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%';

# Using group by:
SELECT count(*), e.last_name
FROM employees AS e
WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name;


# 6.-  Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual
# name is shared with others.
SELECT COUNT(*), e.last_name
FROM employees AS e
WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name
ORDER BY e.last_name;
--  OR THIS LINE:   ORDER BY count(*) DESC;


# 7.-  ===================  Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to
# find the number of employees for each gender with those names.
SELECT CONCAT(COUNT(e.gender), ' ', e.gender) as 'number of Femele and Male' -- In count(column_name) wont bring the nulls
FROM employees AS e
WHERE e.first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY e.gender;

SELECT CONCAT(COUNT(*), ' ', e.gender) as 'number of Femele and Male'
FROM employees AS e
WHERE e.first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY e.gender;


