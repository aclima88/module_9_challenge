-- Ceate a view that lists the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
CREATE VIEW manager_details AS
SELECT
  departments.dept_no,
  departments.dept_name,
  employees.emp_no,
  employees.last_name,
  employees.first_name
FROM
  departments
  
JOIN
	dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN
	employees ON dept_manager.emp_no = employees.emp_no
JOIN
	titles ON employees.emp_title_id = titles.title_id
WHERE
  titles.title = 'Manager';
  
SELECT * from manager_details

DROP VIEW manager_details
