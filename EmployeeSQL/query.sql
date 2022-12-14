select * from department;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;


SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '01/01/1987';


select department.dept_no, department.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
from department
JOIN dept_emp
ON department.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no;


select dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, department.dept_name
from dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department
ON dept_emp.dept_no = department.dept_no;


select employees.first_name, employees.last_name, employees.sex
from employees
WHERE employees.first_name = 'Hercules' AND employees.last_name like 'B%';


select dept_emp.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = 'd006';


select dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
Join department
on dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';

select last_name, count(last_name)
FROM employees
Group by last_name
order by count(last_name) DESC;
