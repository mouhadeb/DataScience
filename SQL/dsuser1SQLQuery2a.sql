---Exercise 3a 
---Creating Table based on dbo.teachers
	CREATE TABLE dsuser1.vteachers(
		Teacher_id INT, 
		First_name VARCHAR (20) NOT NULL,
		Last_name VARCHAR (20) NOT NULL
);

	INSERT INTO dsuser1.vteachers 
	SELECT Teacher_id, First_name, Last_name 
	FROM dbo.teachers

	SELECT * FROM dsuser1.vteachers 

---Creating Table based on dbo.courses
	CREATE TABLE dsuser1.vcourses(
		Teacher_id INT NOT NULL, 
		Course_id INT NOT NULL,
		Course_name VARCHAR (20)  NULL,
		Department_id INT 
);

	INSERT INTO dsuser1.vcourses 
	SELECT Teacher_id, Course_id, Course_name, Department
	FROM dbo.courses

	SELECT * FROM dsuser1.vcourses

---Creating Table based on dbo.classroom
	CREATE TABLE dsuser1.vclassroom(
		Course_id INT NOT NULL,
		Student_id INT NOT NULL
		
);

	INSERT INTO dsuser1.vclassroom
	SELECT Course_id, Student_id
	FROM dbo.classroom

	SELECT * FROM dsuser1.vclassroom