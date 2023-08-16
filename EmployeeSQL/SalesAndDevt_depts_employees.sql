-- Create a view that lists each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
CREATE VIEW sales_devt_depts AS
SELECT
  employees.emp_no,
  employees.last_name,
  employees.first_name,
  departments.dept_name
FROM
  departments
  
JOIN
	dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN
	employees ON employees.emp_no = dept_emp.emp_no
WHERE
  departments.dept_name = 'Sales' OR departments.dept_name = 'Development';
  
SELECT * from sales_devt_depts

DROP VIEW sales_devt_depts