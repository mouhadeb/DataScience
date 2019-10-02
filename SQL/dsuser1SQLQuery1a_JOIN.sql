---Exercise 2a
---Creating Table base on dbo.classroom 
CREATE TABLE dsuser1.classroom1(
	Course_id INT NULL, 
	Student_id INT NOT NULL,

);

INSERT INTO dsuser1.classroom1 
SELECT Course_id, Student_id 
FROM dbo.classroom 
SELECT * FROM dsuser1.classroom1

---Creating Table base on dbo.department
CREATE TABLE dsuser1.department1(
	Department_id INT NULL,
	Department_name VARCHAR (20) NULL

);

INSERT INTO dsuser1.department1 
SELECT Department_id, Department_name
FROM dbo.departments
SELECT * FROM dsuser1.department1

---Creating Table base on dbo.courses
CREATE TABLE dsuser1.courses1(
	Course_id INT NULL, 
	Department INT NULL,

);

INSERT INTO dsuser1.courses1 
SELECT Course_id, Department
FROM dbo.courses
SELECT * FROM dsuser1.courses1

---Join of table dsuser1.departmetn1 + dsuser1.classroom1 + dsuser1.courses1  


SELECT a.Course_id, b.Department_name, c.Student_id 
FROM dsuser1.courses1 AS a
INNER JOIN dsuser1.department1 AS b ON a.Department = b.Department_id
INNER JOIN dsuser1.classroom1 AS c ON a.Course_id = c.Course_id

---Counting number of student in each department

SELECT b.Department_name, COUNT(Student_id) AS Total_Student_indepartment
FROM dsuser1.courses1 AS a
INNER JOIN dsuser1.department1 AS b ON a.Department = b.Department_id
INNER JOIN dsuser1.classroom1 AS c ON a.Course_id = c.Course_id
GROUP BY Department_name