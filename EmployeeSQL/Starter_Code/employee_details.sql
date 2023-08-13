-- Create a view for the employees table that lists the employee's number, last name, first name, sex, and salary of each employee:
CREATE VIEW employee_details AS
SELECT
  employees.emp_no AS emp_no,
  last_name,
  first_name,
  sex,
  salaries.salary
FROM
  employees
  FULL JOIN salaries ON salaries.emp_no = employees.emp_no;

SELECT * from employee_details

DROP VIEW employee_details