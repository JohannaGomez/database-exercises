USE employees;


# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
SELECT CONCAT(e.last_name, ', ' , e.first_name) AS full_name
FROM employees AS e
LIMIT 10;

# Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(e.last_name,', ', e.first_name) AS full_name,
CONCAT(e.birth_date) AS DOB
FROM employees AS e
LIMIT 10;

# Luis's solution (they don't use AS for th aliases and no need use another concat for birth_date:
# SELECT
#        CONCAT(e.last_name,', ', e.first_name)  full_name,
#        e.birth_date  DOB
# FROM employees  e
# LIMIT 10;

# Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'.
SELECT CONCAT(e.emp_no, ' - ',e.last_name,', ', e.first_name) AS full_name,
       CONCAT(e.birth_date) AS DOB
FROM employees AS e
LIMIT 10;

# The final result should look like this:
# +-----------------------------+------------+
# | full_name                   | DOB        |
# +-----------------------------+------------+
# | 10001 - Facello, Georgi     | 1953-09-02 |
# | 10002 - Simmel, Bezalel     | 1964-06-02 |
# | 10003 - Bamford, Parto      | 1959-12-03 |
# | 10004 - Koblick, Chirstian  | 1954-05-01 |
# | 10005 - Maliniak, Kyoichi   | 1955-01-21 |
# | 10006 - Preusig, Anneke     | 1953-04-20 |
# | 10007 - Zielinski, Tzvetan  | 1957-05-23 |
# | 10008 - Kalloufi, Saniya    | 1958-02-19 |
# | 10009 - Peac, Sumant        | 1952-04-19 |
# | 10010 - Piveteau, Duangkaew | 1963-06-01 |
# +-----------------------------+------------+
# 10 rows in set (0.00 sec)