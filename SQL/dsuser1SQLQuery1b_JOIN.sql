---Exercise 2b
---Creating Table base on dbo.classroom

CREATE TABLE [dsuser1].[engliah_class](
			Course_id int NOT NULL,
			Student_id int NOT NULL	
	);    
		SELECT * FROM [dsuser1].[engliah_class]
		
---Insert data from dbo.classroom
		INSERT INTO [dsuser1].[engliah_class]
		SELECT Course_id, Student_id 
		FROM dbo.classroom
		WHERE (Course_id <=3)

---Creating table based on dbo.courses
CREATE TABLE [dsuser1].[courses_classify](
			Course_id int NOT NULL,
			Course_name VARCHAR (20) 
	);

INSERT INTO [dsuser1].[courses_classify]
SELECT Course_id, Course_name
FROM dbo.courses

SELECT * FROM [dsuser1].[courses_classify] 

---Join table [dsuser1].[engliah_class] + [dsuser1].[courses_classify]
SELECT b.Course_name, a.Student_id
FROM [dsuser1].[engliah_class] AS a
INNER JOIN [dsuser1].[courses_classify] AS b
ON a. Course_id = b. Course_id 

---Counting nuber of student in each english class
SELECT b.Course_name, COUNT (Student_id) AS Student_num_in_english_class
FROM [dsuser1].[engliah_class] AS a
INNER JOIN [dsuser1].[courses_classify] AS b
ON a. Course_id = b. Course_id 
GROUP BY Course_name 

---Counting nuber of student in total english class
SELECT COUNT (Student_id) AS Student_num_in_english_class
FROM [dsuser1].[engliah_class] 

