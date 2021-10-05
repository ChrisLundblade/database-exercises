USE employees;

SHOW TABLES;

DESCRIBE employees;


SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  first_name;
#
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

#Function Time
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name' FROM employees
WHERE last_name LIKE ('E%')
   OR last_name LIKE '%E';
#3
SELECT * FROM employees
    WHERE month(birth_date) = 12
    AND day(birth_date) = 25;
#4
SELECT * FROM employees
    WHERE (month(birth_date) = 12
    AND day(birth_date) = 25)
    AND year(hire_date) BETWEEN 1990 AND 1999;

#5
SELECT * FROM employees
    WHERE (month(birth_date) = 12
    AND day(birth_date) = 25)
    AND year(hire_date) BETWEEN 1990 AND 1999
    ORDER BY birth_date ASC, hire_date DESC;

#6
SELECT datediff(CURDATE(), hire_date) AS 'Days Worked', hire_date, emp_no, birth_date, first_name, last_name, gender FROM employees
WHERE (month(birth_date) = 12
    AND day(birth_date) = 25)
  AND year(hire_date) BETWEEN 1990 AND 1999;


SELECT * FROM employees
WHERE last_name LIKE ('E%')
  AND last_name LIKE '%E';
#And this... i think. Instructions were confusing and numerous
SELECT * FROM employees
WHERE last_name LIKE ('%E%')
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE ('%q%');

SELECT * FROM employees
WHERE last_name LIKE ('%q%')
  AND last_name NOT LIKE ('%qu%');