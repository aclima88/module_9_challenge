-- Create a view that lists the frequency counts, in descending order, of all the employee last names
CREATE VIEW last_name_frequency AS
SELECT
  last_name,
  COUNT(*) AS frequency
FROM
  employees
GROUP BY
  last_name
ORDER BY
  frequency DESC;
  
SELECT * from last_name_frequency

DROP VIEW last_name_frequency