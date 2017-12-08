USE codeup_test_db;

DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS albums;

create table IF not EXISTS albums (
  id int unsigned NOT NULL AUTO_INCREMENT,
  artist varchar(50) NOT NULL,
  name varchar(50) not NULL,
  release_date INT not NULL,
  sales float not null,
  genre varchar(50) not NULL,

  PRIMARY KEY (id)
);