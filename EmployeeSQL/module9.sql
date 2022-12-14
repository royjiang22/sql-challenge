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








