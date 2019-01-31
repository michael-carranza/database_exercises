use titles;

-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
FROM titles;

-- Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY.
use employees;
SELECT distinct last_name
FROM employees
WHERE last_name like 'E%'
AND last_name like '%E'
GROUP BY last_name DESC;

-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
use employees;
SELECT distinct first_name, last_name
FROM employees
WHERE last_name like 'E%'
AND last_name like '%E';

-- Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT last_name, first_name
FROM employees
WHERE (last_name like '%Q%')
AND (last_name not like '%QU%');

-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT last_name, COUNT(last_name)
FROM employees
WHERE (last_name like '%Q%'
AND last_name not like '%QU%')
 GROUP BY last_name
 ORDER BY COUNT(last_name) DESC;

--  Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT gender, count(gender)
FROM employees
WHERE (first_name = 'Irena'
OR first_name ='Vidya'
OR first_name = 'Maya')
group by gender;