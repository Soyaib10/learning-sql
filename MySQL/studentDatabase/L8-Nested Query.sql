-- find names of employee who have sold over 30000


SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN(
  SELECT works_with.emp_id
  FROM works_with
  WHERE works_with.total_sales > 30000
);

-- Find all clients who are handles by the branch that Michael Scott manages
-- Assume you know Michael's ID

SELECT client.client_name
FROM client
WHERE branch_id IN(
  SELECT branch.branch_id
  FROM branch
  WHERE branch.mgr_id = 102
);

-- Find all clients who are handles by the branch that Michael Scott manages
 -- Assume you DONT'T know Michael's ID
 
 
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
 SELECT works_with.emp_id
 FROM works_with
)
AND employee.branch_id = 2;
 
 
 -- Find the names of employees who work with clients handled by the scranton branch
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
 SELECT works_with.emp_id
 FROM works_with 
)
AND employee.branch_id = 2;

-- Find the names of all clients who have spent more than 100,000 dollars
SELECT client.client_name
FROM client
WHERE client.client_id IN (
 	SELECT client_id
 	FROM (
    SELECT SUM(works_with.total_sales) AS totals, client_id
    FROM works_with
    GROUP BY client_id) AS total_client_sales
    WHERE totals > 100000
);
 
 
 
 
 
