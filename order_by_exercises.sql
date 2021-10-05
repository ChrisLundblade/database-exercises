USE employees;

SHOW TABLES;

DESCRIBE employees;

#This is one I actually changed for this assignment
SELECT * FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    ORDER BY  first_name;
#and this
SELECT * FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    ORDER BY first_name, last_name;
#and this
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;
#and this
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees
WHERE last_name LIKE ('E%')
   OR last_name LIKE '%E';


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