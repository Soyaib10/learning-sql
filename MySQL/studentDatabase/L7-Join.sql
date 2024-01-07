-- find all branches and names of the managers
-- Join is used to combine rows between two or more tables on the related 
-- collumns. Only happens when two tables have foreign_key connection.

SELECT employee.emp_id, employee.first_name, branch.branch_name 
FROM employee 
JOIN branch 
ON employee.emp_id = branch.mgr_id;

-- line1 - select whatever you want
-- line2 & 3 - connect branch with employee
-- line4 - this has to be same collums between two tables.


-- left part if FROM employee, right part is branch. 
SELECT employee.emp_id, employee.first_name, branch.branch_name 
FROM employee 
LEFT JOIN branch 
ON employee.emp_id = branch.mgr_id;

-- left part if FROM employee, right part is branch. 
SELECT employee.emp_id, employee.first_name, branch.branch_name 
FROM employee 
RIGHT JOIN branch 
ON employee.emp_id = branch.mgr_id;





