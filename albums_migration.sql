USE codeup_test_db;

DROP TABLE IF EXISTS albums;

create table IF not EXISTS album (
  id int unsigned NOT NULL AUTO_INCREMENT,
  artist varchar(50) DEFAULT NULL,
  name varchar(50) DEFAULT NULL,
  release_date DATE,
  sales float,
  genre varchar(50),

  PRIMARY KEY (id)
);