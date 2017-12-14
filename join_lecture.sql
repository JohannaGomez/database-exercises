USE codeup_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);


TRUNCATE TABLE roles;
TRUNCATE TABLE users;


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

# 2.-  Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

INSERT INTO users (name, email, role_id) VALUES
  ('pao', 'pao@example.com', 2),
  ('rj', 'rj@example.com', 2),
  ('roy', 'roy@example.com', NULL );

SELECT * FROM users as u;

# 3.-  Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson.
# Before you run each query, guess the expected number of results.

-- Inner join: Is showing only the users that have a role.
SELECT u.name as user_name, r.name as rol_name
FROM users AS u
JOIN roles AS r ON r.id = u.role_id;


-- Left join: Is showing all the users that have a role and those tha rest of the users without a role.
-- in alphabetical order according the role.
SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
LEFT JOIN roles AS r ON u.role_id = r.id
ORDER BY r.name;

-- Right join: is showing all the roles on the right including those without a user assigned.
SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
RIGHT JOIN roles AS r ON u.role_id = r.id;


-- Count(*) with GROUP BY is showing how many roles assigned to users and users with null
SELECT COUNT(*), r.name AS role_name
FROM users AS u
LEFT JOIN roles AS r ON u.role_id = r.id
GROUP BY  r.name;