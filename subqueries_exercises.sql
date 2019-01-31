use employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query.

select *
from employees
where hire_date IN (
  select hire_date
  from employees
  where emp_no = 101010
  );

--   Find all the titles held by all employees with the first name Aamod.
select title
from titles
where emp_no in(
  select emp_no
  from employees
  where first_name = "aamod"
  );

--   Find all the current department managers that are female.
select first_name, last_name
from employees
where emp_no IN (
  select emp_no
  from dept_manager
  where to_date >now()
  )
AND gender = 'F';

--  SAME PROBLEM AS A JOIN
select first_name, last_name
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
where to_date>now()
and gender = "F";


