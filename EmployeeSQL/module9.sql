drop table department;

CREATE TABLE "department" (
    "dept_no" varchar(50) PRIMARY KEY  NOT NULL,
    "dept_name" varchar(50)   NOT NULL);

drop table department;
drop table dept_emp;
drop table salaries;
drop table employees;
drop table titles;
drop table dept_manager;


CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" varchar(50) NOT NULL,
	primary key (emp_no, dept_no)
	
);

CREATE TABLE "employees" (
    "emp_no" int NOT NULL,
    "emp_title_id" varchar(50) NOT NULL,
    "birth_date" varchar(50)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(50)   NOT NULL,
    "hire_date" date   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" varchar(50)   NOT NULL
	
);

CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar(50)   NOT NULL
	
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(50)   NOT NULL,
    "emp_no" int   NOT NULL
	
);

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







