USE employees;
SHOW DATABASES;
SHOW TABLES FROM employees;
DESCRIBE departments; -- dept_no is primary key
DESCRIBE dept_emp;  -- dept_no and emp_no are primary keys
DESCRIBE dept_manager;  -- dept_no and emp_no are primary keys
DESCRIBE employees; -- no primary keys
DESCRIBE salaries; -- emp_no and from_date are primary keys
DESCRIBE titles; -- emp_no, title, from_date are primary keys

USE codeup_test_db;
SHOW TABLES FROM codeup_test_db;
DESCRIBE albums;
# Add an index to make sure all album names combined with the artist are unique.
# Try to add duplicates to test the constraint.
ALTER TABLE albums ADD UNIQUE (name, artist);
DESCRIBE albums;
insert into albums (artist, name, release_date, sales, genre)
VALUES
  ('Peter Jackson','Thriller',1982,46,'Pop, rock, R&B'),
  ('AC/DCs','Back in Black',1980,26.1,'Hard rock');
SELECT * from albums ORDER BY artist;