--Select * from departments
--Select * from dept_emp
--Select * from dept_manager
--Select * from employees
--Select * from salaries
--Select * from titles

-- Data Analysis #1 - Employee info

CREATE VIEW "employee_info" AS
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT * from "employee_info"

-- Data Analysis #2 - Hired in 1986

CREATE VIEW "hire_1986" AS
SELECT employees.first_name, last_name, hire_date
FROM employees
WHERE hire_date Between '1986-01-01' AND '1986-12-31'

SELECT * from "hire_1986"

-- Data Analysis #3 - Manager info

CREATE VIEW "mgr_info" AS
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

SELECT * from "mgr_info"

-- Data Analysis #4 - Department by employee

CREATE VIEW "dept_empl" AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
INNER JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

SELECT * from "dept_empl"

-- Data Analysis #5 - Finding Hercules

CREATE VIEW "find_herc" AS
SELECT first_name, last_name, Sex
FROM employees
WHERE first_name = 'Hercules'
and last_name LIKE 'B%'

SELECT * from "find_herc"

-- Data Analysis #6 - Sales dept employees

CREATE VIEW "sales_emp" AS
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


SELECT * from "sales_emp"
