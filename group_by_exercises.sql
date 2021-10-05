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
    GROUP BY last_name
    ORDER BY COUNT(*);

#7
SELECT gender, COUNT(*) FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    GROUP BY gender;

#================================= GROUP BY BONUSES
# what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)
SELECT first_name, last_name FROM employees
    WHERE gender = 'F'
    ORDER BY hire_date desc
    LIMIT 10;

SELECT first_name, last_name FROM employees
    WHERE gender = 'F'
    ORDER BY hire_date ASC
    LIMIT 10;

# what are the top three most common job titles?
SELECT title, COUNT(*) FROM titles
    GROUP BY title
    ORDER BY COUNT(*) DESC
    LIMIT 3;

# what is the most common ‘from date’ for job titles? for staff only?
SELECT from_date, COUNT(*) FROM titles
    GROUP BY from_date
    ORDER BY COUNT(*) DESC;

SELECT from_date, COUNT(*) FROM titles
    WHERE title = 'Staff'
    GROUP BY from_date
    ORDER BY COUNT(*) DESC;