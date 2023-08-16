-- Create a view that lists seach employee in the Sales department, including their employee number, last name, and first name
CREATE VIEW sales_dept_emps AS
SELECT
  employees.emp_no,
  employees.last_name,
  employees.first_name
FROM
  departments
  
JOIN
	dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN
	employees ON employees.emp_no = dept_emp.emp_no
WHERE
  departments.dept_name = 'Sales';
  
SELECT * from sales_dept_emps

DROP VIEW sales_dept_emps
