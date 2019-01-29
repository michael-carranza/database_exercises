use employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
OR first_name ='Vidya'
OR first_name = 'Maya';

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like 'E%';

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