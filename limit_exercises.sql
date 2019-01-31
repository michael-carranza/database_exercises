use employees;
# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees order by last_name DESC limit 10;

# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees
SELECT emp_no, first_name, last_name
FROM employees
WHERE (hire_date between '1990-01-01' and '1999-12-31')
  AND (birth_date like '%-12-25')
ORDER BY birth_date ASC, hire_date DESC limit 5;

# Update the query to find the tenth page of results.
SELECT emp_no, first_name, last_name
FROM employees
WHERE (hire_date between '1990-01-01' and '1999-12-31')
  AND (birth_date like '%-12-25')
ORDER BY birth_date ASC, hire_date DESC limit 5 offset 45;