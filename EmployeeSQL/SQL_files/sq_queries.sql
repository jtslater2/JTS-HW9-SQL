--Select * from departments
--Select * from dept_emp
--Select * from dept_manager
--Select * from employees
--Select * from salaries
--Select * from titles

-- Data Analysis #1

CREATE VIEW "employee_info" AS
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT * from "employee_info"

-- Data Analysis #2

CREATE VIEW "hire_1986" AS
SELECT employees.first_name, last_name, hire_date
FROM employees
WHERE hire_date Between '1986-01-01' AND '1986-12-31'

SELECT * from "hire_1986"

-- Data Analysis #3

CREATE VIEW "mgr_info" AS
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

SELECT * from "mgr_info"

