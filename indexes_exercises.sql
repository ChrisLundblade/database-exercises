USE employees;

SHOW TABLES;
#Describe each table
DESCRIBE current_dept_emp;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_emp_latest_date;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

USE codeup_test_db;

SHOW TABLES;

DESCRIBE albums;

ALTER TABLE albums
    ADD UNIQUE unique_artist_and_name (artist, name);
#This doesn't work
INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982,'Pop, post-disco, funk, rock', 48.9);
#This works
INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Not-Thriller', 1982,'Pop, post-disco, funk, rock', 48.9);