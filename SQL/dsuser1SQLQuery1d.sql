---CREATE TABLE dsuser1.students based on dbo.students
CREATE TABLE dsuser1.students(
	Student_id int NOT NULL, 
	First_name VARCHAR (20) NOT NULL, 
	Last_name VARCHAR (20) NOT NULL, 
	Gender VARCHAR (1) NOT NULL
);

SELECT * FROM dsuser1.students

---INSERT data INTO dsuser1.students 
INSERT INTO dsuser1.students 
SELECT Student_id, 
	First_name, 
	Last_name, 
	Gender
FROM  dbo.students

---Counting student F vs. M in all classes

SELECT Gender, COUNT(Student_id) AS Student_by_gender
FROM dsuser1.students
GROUP BY Gender 

---The Feminist girl was wrong!!!