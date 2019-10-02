
---Homework1 EX 2-a
---Creating table based on dbo.classroom
	CREATE TABLE [dsuser1].[science_class](
		Course_id int NOT NULL,
		Student_id int NOT NULL
	); 

	SELECT * FROM [dsuser1].[science_class]

---Insert data of science class from dbo.classroom
	INSERT INTO [dsuser1].[science_class]
	SELECT Course_id, Student_id 
	FROM dbo.classroom
	WHERE (Course_id > 3 ) AND (Course_id <=19) 

---Counting student num in each class
	
	
ALTER TABLE [dsuser1].[science_class] ADD 
 Student_per_class int NULL

	
	SELECT Course_id , COUNT (Student_id) AS Student_per_class
	FROM [dsuser1].[science_class]
	GROUP BY Course_id

---Making new table from our aggregat

CREATE TABLE dsuser1. [Student in science]( 
Courseid int NOT NULL,	Studentperclass int NULL); 

INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(4,  18);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(5,	10);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(6,	12);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(7,	14);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(8,	24);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(9,	12);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(10,	36);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(11,	38);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(12,	24);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(13,	24);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(14,	38);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(15,	30);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(16,	24);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(17,	24);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(18,	34);
INSERT INTO dsuser1. [Student in science] (Courseid,Studentperclass) VALUES(19,	16);


SELECT * FROM dsuser1. [Student in science]


ALTER TABLE dsuser1. [Student in science] ADD 
Class_size VARCHAR (20) NULL 


UPDATE dsuser1. [Student in science] SET Class_size = 
	CASE
		WHEN (Studentperclass <22) THEN ('Small')
		ELSE ('Big')
	END

---Counting small and big classes
	SELECT Class_size , COUNT (Studentperclass) AS Total_Class_Size
	FROM [dsuser1].[Student in science]
	GROUP BY Class_size
