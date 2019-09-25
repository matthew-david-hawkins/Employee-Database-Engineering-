/*List the following details of each employee: employee number, last name, first name, gender, and salary.*/
Select e.emp_no, 
	e.last_name, 
	e.first_name,
	e.gender, 
	s.salary 
FROM employees As e
Inner JOIN salaries as s On e.emp_no = s.emp_no;

/*List employees who were hired in 1986.*/
Select first_name, 
	last_name, 
	hire_date 
from employees 
WHERE hire_date like '1986%';

/*List the manager of each department with the following information: department number, 
department name, the manager's employee number, last name, first name, and start and 
end employment dates.*/
SELECT d.dept_no, 
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
FROM dept_manager as dm
Inner JOIN departments as d ON dm.dept_no = d.dept_no
Inner JOIN employees as e ON dm.emp_no = e.emp_no; 
	
/* List the department of each employee with the following information: employee number, 
last name, first name, and department name. */
SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no;

/*List all employees whose first name is "Hercules" and last names 
begin with "B."*/
SELECT first_name,
	last_name
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

/*List all employees in the Sales department, including their employee number,
last name, first name, and department name.*/
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no
WHERE d.dept_name LIKE 'Sales';

/*List all employees in the Sales and Development departments, including their 
employee number, last name, first name, and department name.*/
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no
WHERE d.dept_name LIKE 'Sales' OR d.dept_name LIKE 'Development';

/* In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.*/
SELECT COUNT(last_name) AS "Name Freq",
	last_name
FROM employees
GROUP BY last_name
ORDER BY "Name Freq" DESC;