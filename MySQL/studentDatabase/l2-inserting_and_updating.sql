-- create a table
CREATE TABLE student (
  student_id INT PRIMARY KEY, 
  name VARCHAR(20),
  major VARCHAR(20)
);


-- INSERT- method1
INSERT INTO student VALUES(1, 'Jack', 'Biology');

-- INSERT- method2
INSERT INTO student(student_id, name, major)
VALUES
(2, 'Kate', 'Socialogy');

-- INSERT- mehod3
-- If i don't know any field about someone then I can keep this void. Here I don't know
-- major of 'Clair'. So, I keep that void
INSERT INTO student(student_id, name) VALUES(3, 'CLair');

INSERT INTO student(student_id, name, major)
VALUES
(4, 'Jack', 'Biology'),
(5, 'Mike', 'CSE');

-- DELETE a row. If WHERE is not used then all the rows will be deleted.
DELETE FROM student
WHERE student_id = 4;

-- UPDATE a row. If WHERE is not used then all the rows will have same thing you set.
UPDATE student
SET name = 'Clair'           
WHERE student_id = 3;

UPDATE student
SET major = 'BioChemistry'
WHERE major = 'Bio' OR major = 'Chemistry';


SELECT * FROM student;
