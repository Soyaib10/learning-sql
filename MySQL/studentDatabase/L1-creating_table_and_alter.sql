-- create a table
CREATE TABLE student (
  student_id INT PRIMARY KEY, 
  name VARCHAR(20),
  major VARCHAR(20)
);

-- show table in the output console
DESCRIBE student;

-- delete the whole table
DROP TABLE student;

-- ALTER is needed when to change something
-- ADD means adding a column in the table, DROP for delete
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;
