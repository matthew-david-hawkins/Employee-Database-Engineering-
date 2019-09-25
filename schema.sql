
Drop Table salaries;
DROP table dept_emp;
drop table titles;
drop table department_manager;
Drop Table departments;
drop table employees;

Create Table employees(
	emp_no Int NOT NULL Primary Key, 
	birth_date VARCHAR(10),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender varchar(1),
	hire_date varchar(10)
);

Select * From employees;

CREATE Table departments(
	dept_no VARCHAR(4) Not Null Primary Key,
	dept_name VARCHAR(255)
);

Select * From departments;

Create Table dept_emp(
	id Serial PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date VARCHAR(10),
	to_date VARCHAR(10),
	foreign Key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

Select * From dept_emp;

Create Table salaries(
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT,
	from_date VARCHAR(10),
	to_date VARCHAR(10),
	foreign Key(emp_no) references employees(emp_no)
);

Select * From salaries;

CREATE Table titles(
	id SERIAL Primary Key,
	emp_no INT NOT NUll,
	title VARCHAR(255),
	from_date VARCHAR(10),
	to_date VARCHAR(10),
	foreign key(emp_no) references employees(emp_no)
);

Select * From titles;

CREATE TABLE dept_manager(
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NUll,
	from_date VARCHAR(10),
	to_date VARCHAR(10),
	foreign Key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

SELECT * FROM dept_manager;
