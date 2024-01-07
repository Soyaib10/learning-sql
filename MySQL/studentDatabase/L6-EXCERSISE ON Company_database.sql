-- EXCERSISE ON Company_database

-- find employee
SELECT * 
FROM employee;

-- find employee order by salary decending order
SELECT * 
FROM employee
ORDER BY salary DESC;

-- find employee order by sex and name
SELECT *
FROM employee
ORDER BY sex, first_name;

-- find all different gender
SELECT DISTINCT sex
FROM employee;

-- find number of employee
SELECT COUNT(emp_id)
FROM employee;

-- find number of female employee born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_date > '1971-01-01';

-- avg of all employee's salary
SELECT AVG(salary)
FROM employee;

-- find how many males and females are there
SELECT sex, COUNT(sex)
FROM employee
GROUP BY sex;

-- find total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- WILDCARDS
-- % means any char, _ means one char
-- find any client who are an LLC
SELECT *
FROM client
WHERE client_name like '%LLC';

SELECT *
FROM employee
WHERE birth_date like '____-02%';

-- Union
-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order

-- find a list of employee and branch names
SELECT first_name AS collmn1, branch_id AS collumn2
FROM employee
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;

-- same as above
SELECT employee.first_name AS collmn1, employee.branch_id AS collumn2
FROM employee
UNION
SELECT branch_supplier.supplier_name, branch_supplier.branch_id
FROM branch_supplier;

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT * FROM branch;







