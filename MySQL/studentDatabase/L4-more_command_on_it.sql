CREATE TABLE student (
  student_id INT PRIMARY KEY, 
  name VARCHAR(20),
  major VARCHAR(20)
);


-- ORDER BY means sorting
SELECT *
FROM student
ORDER BY major, student_id;
ORDER BY name DESC;

-- <> means !=
SELECT *
FROM student
WHERE major <> 'BioChemistry';
WHERE major IN('BioChemistry', 'CSE') AND student_id > 2;

SELECT * FROM student;







