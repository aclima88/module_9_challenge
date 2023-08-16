-- Create a view that lists the department number for each employee along with that employee’s employee number, last name, first name, and department name
CREATE VIEW emp_dept_numbers AS
SELECT
  departments.dept_no,
  employees.emp_no,
  employees.last_name,
  employees.first_name,
  departments.dept_name
FROM
  departments
  
JOIN
	dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN
	employees ON dept_manager.emp_no = employees.emp_no
  
SELECT * from emp_dept_numbers

DROP VIEW emp_dept_numbers