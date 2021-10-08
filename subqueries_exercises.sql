USE employees;
SELECT * FROM employees;

SELECT * FROM titles;

SELECT* FROM dept_manager;

SELECT * FROM departments;

SELECT e.first_name, e.last_name FROM employees e
WHERE hire_date = (SELECT hire_date FROM employees
                    WHERE emp_no = 101010);

SELECT t.title FROM titles t
WHERE emp_no IN (SELECT emp_no FROM employees
                WHERE first_name = 'Aamod');

SELECT first_name, last_name FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager
                 WHERE to_date > NOW())
AND gender = 'F';


SELECT d.dept_name FROM departments d
WHERE d.dept_no IN (SELECT dm.dept_no FROM dept_manager dm
                JOIN employees e ON dm.emp_no = e.emp_no
                 WHERE d.dept_no IN (SELECT emp_no FROM dept_manager
                                   WHERE to_date > NOW())
                    AND gender = 'F');

# SELECT d.dept_name FROM departments d
# WHERE d.dept_no IN ()
# SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F' AND from_date > NOW());
