USE employees;

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM dept_manager;

SELECT * FROM titles;

SELECT * FROM dept_emp;

SELECT * FROM salaries;

SELECT * FROM dept_manager;

SELECT d.dept_name AS 'Department Name', Concat(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM departments d
JOIN dept_manager dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW();

SELECT d.dept_name AS 'Department Name', Concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
AND e.gender = 'F';

#departments, titles, dept_emp
SELECT t.title, COUNT(t.title) AS Total FROM departments d
JOIN dept_emp de
ON d.dept_no = de.dept_no
JOIN titles t
ON t.emp_no = de.emp_no
WHERE d.dept_no = 'd009'
AND t.to_date > NOW()
AND de.to_date > NOW()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', Concat(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary
FROM departments d
JOIN dept_manager dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
JOIN salaries s
ON e.emp_no = s.emp_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) AS Manager FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
JOIN dept_manager dm ON dm.dept_no = d.dept_no
JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > NOW()
AND dm.to_date > NOW()
ORDER BY d.dept_name, e.emp_no;

#What is the name of everyone who has worked or is working as an ‘Assistant Engineer’?
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Name, t.title AS Name
FROM employees e
JOIN titles t
ON e.emp_no = t.emp_no
WHERE t.title = 'Assistant Engineer';

# What are the DOBs of all current senior engineers?
SELECT e.birth_date AS 'Date of Birth', CONCAT(e.first_name, ' ', e.last_name), t.title FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE t.to_date > NOW() AND
      t.title = 'Senior Engineer'
ORDER BY e.emp_no;

# What is the most common title in the ‘Marketing’ department?
#This is not finished
SELECT t.title, COUNT(t.emp_no) AS 'Number of Employees'
FROM titles t
Where t.to_date > NOW()

GROUP BY t.title
ORDER BY COUNT(t.emp_no) DESC;

# What is the most common birthday in the company? least common?

# How many male and female employees currently work in the ‘Finance’ department?

# What is the average current salary for each department?

# What was the average salary in the 80s (a salary that started and ended in the 80s)? By department?

# What are the names of all ‘Staff’ employees in the ‘Research’ department?

# What is name of the lowest paid ‘Staff’ members in the ‘Research’ department (make sure the salary and employment in the department is current).
