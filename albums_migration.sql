
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(40) NOT NULL,
    name VARCHAR(40) NOT NULL,
    release_date SMALLINT NOT NULL,
    sales double NOT NULL,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);