--  Create a view that lists the first name, last name, and hire date for the employees who were hired in 1986.
CREATE VIEW emp_hire_date_1986 AS
SELECT
  last_name,
  first_name,
  hire_date
FROM
  employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT * from emp_hire_date_1986

DROP VIEW emp_hire_date_1986