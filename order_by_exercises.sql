use employees;
-- -- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- SELECT emp_no, first_name, last_name
-- FROM employees
-- WHERE last_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Using OR).
--Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena'
OR first_name ='Vidya'
OR first_name = 'Maya')
AND gender = 'M'

-- EXERCISE 2
-- order by first_name;

-- EXERCISE 3
-- ORDER BY first_name ASC, last_name ASC;

-- EXERCISE 4
-- ORDER BY last_name ASC, first_name ASC;

-- EXERCISE 6
ORDER BY last_name DESC, first_name DESC;

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like 'E%'

-- EXERCISE 5
-- ORDER BY emp_no ASC;

-- EXERCISE 6
ORDER BY emp_no DESC;

-- Find all employees hired in the 90s — 135,214 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date between '1990-01-01' and '1999-12-31';

-- Find all employees born on Christmas — 842 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date like '%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like '%Q%';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like 'E%'
OR last_name like '%E';

-- # Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like 'E%'
AND last_name like '%E';

-- # Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE (hire_date between '1990-01-01' and '1999-12-31')
AND (birth_date like '%-12-25')

-- EXERCISE 7
ORDER BY hire_date DESC, birth_date ASC;


-- # Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE (last_name like '%Q%')
AND (last_name not like '%QU%');