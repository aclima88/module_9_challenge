-- Create a view that lists the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
CREATE VIEW emp_hercules AS
SELECT
  last_name,
  first_name,
  sex
FROM
  employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT * from emp_hercules

DROP VIEW emp_hercules