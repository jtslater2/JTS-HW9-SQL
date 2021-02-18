--Select * from departments
--Select * from dept_emp
--Select * from dept_manager
--Select * from employees
--Select * from salaries
--Select * from titles

--  Q1

CREATE VIEW "employee information" AS
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT * from "employee information"