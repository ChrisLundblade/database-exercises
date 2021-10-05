USE employees;

DESCRIBE titles;

DESCRIBE salaries;
#MiniExercise
SELECT salary, COUNT(*) FROM salaries
    GROUP BY salary
    ORDER BY COUNT(*) DESC;

#2
SELECT DISTINCT title FROM titles;
#3
SELECT last_name FROM employees
    WHERE last_name LIKE ('E%')
    AND last_name LIKE '%E'
    GROUP BY last_name;
#4
SELECT last_name FROM employees
    WHERE last_name LIKE ('E%')
    AND last_name LIKE '%E'
    GROUP BY first_name, last_name;

#5
SELECT last_name FROM employees
    WHERE last_name LIKE ('%q%')
    AND last_name NOT LIKE ('%qu%')
    GROUP BY last_name;

#6
SELECT COUNT(*), last_name FROM employees
    WHERE last_name LIKE ('%q%')
    AND last_name NOT LIKE ('%qu%')
    GROUP BY last_name;

#7
SELECT gender, COUNT(*) FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    GROUP BY gender;