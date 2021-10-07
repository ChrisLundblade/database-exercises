CREATE DATABASE join_test_db;

USE join_test_db;

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

SELECT * FROM roles;

SELECT users.name, roles.name FROM users LEFT JOIN roles ON roles.id = users.role_id;

INSERT INTO users (name, email, role_id) VALUES
     ('jeff', 'jeff@example.com', 2),
     ('notjeff', 'notjeff@example.com', 1),
     ('lumi', 'lumi@example.com', 3),
     ('joni', 'joni@example.com', null);

SELECT users.name AS user_name, roles.name AS role_name
FROM users
     RIGHT JOIN roles ON users.role_id = roles.id;

SELECT COUNT(users.name) AS users_with_role, roles.name FROM users
     RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

SELECT roles.name, users.name FROM roles JOIN users ON roles.id = users.role_id GROUP BY roles.name;

USE codeup_test_db;

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT * FROM persons;

SELECT first_name, name AS 'favorite album' FROM persons JOIN albums ON persons.album_id = albums.id;

CREATE TABLE preferences (
                             person_id INT UNSIGNED NOT NULL,
                             album_id INT UNSIGNED NOT NULL,
                             FOREIGN KEY (person_id) REFERENCES persons(id),
                             FOREIGN KEY (album_id) REFERENCES albums(id)
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT * from preferences;

SELECT p.first_name, a.name AS 'favorite album'
    FROM persons AS p
    JOIN preferences pref ON p.id = pref.person_id
    JOIN albums AS a ON a.id = pref.album_id;
