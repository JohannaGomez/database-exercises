CREATE DATABASE adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS ad_category;

CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  PRIMARY KEY (id)
);

  CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    description VARCHAR(255),
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
  );

  CREATE TABLE ad_category (
    ads_id INT UNSIGNED NOT NULL,
    cat_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads (id),
    FOREIGN KEY (cat_id) REFERENCES categories (id)
  );



# TRUNCATE TABLE categories;
# TRUNCATE TABLE users;
# TRUNCATE TABLE  ads;
# TRUNCATE TABLE ad_category;



INSERT INTO users (first_name, last_name, email, password) VALUES
  ('bob', 'bob','bob@example.com', 'bob1'),
  ('joe', 'joe', 'joe@example.com', 'joe1'),
  ('sally', 'sally', 'sally@example.com', 'sally1'),
  ('adam', 'adam','adam@example.com', 'adam1'),
  ('jane', 'jane', 'jane@example.com', 'jane1'),
  ('mike', 'mike', 'mike@example.com', 'mike1');

INSERT Into categories (name)
VALUES ('appliances'),
('arts+crafts'),
('atv/utv/sno'),
('auto parts'),
('baby+kid'),
('barter'),
('beauty+hlth'),
('bikes'),
('boats'),
('books'),
('business'),
('cars+trucks'),
('cds/dvd/vhs'),
('cell phones'),
('clothes+acc'),
('collectibles'),
('computers'),
('electronics'),
('farm+garden'),
('free'),
('furniture'),
('garage sale'),
('general'),
('heavy equip'),
('household'),
('jewelry'),
('materials'),
('motorcycles'),
('music instr'),
('photo+video'),
('rvs+camp'),
('sporting'),
('tickets'),
('tools'),
('toys+games'),
('trailers'),
('video gaming'),
('wanted');

INSERT INTO ads (title, description, user_id)
    VALUES
      ('Photo Session', 'Get your Christmas pictures with us', 1),
      ('PlayStation', 'PS2 in great condition', 1),
      ('Mini Photo Session', 'Family pictures for everyone', 2),
      ('Web Developer', 'Work with us for free and get a lot of experience', 3),
      ('SawTable101', 'like new, you can get it toda!', 4);

INSERT INTO ads (title, description, user_id)
    VALUES
      ('Pillow','Silk fabric and 2 accent pillows', 6),
      ('Arcade', 'ARCADE BOXING MACHINE $2800 Medial Center', 5);

INSERT INTO ad_category (ads_id, cat_id) VALUES
  (1, 30),
  (2, 35),
  (3, 30),
  (4, 38),
  (5, 34),
  (6, 35);

