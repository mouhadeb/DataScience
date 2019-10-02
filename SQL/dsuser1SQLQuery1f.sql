
---Homework1 EX 2-f+g
---Creating table based on dbo.classroom
CREATE TABLE [dsuser1].[classroom_degree](
		Student_id int NOT NULL,
		Course_id int NOT NULL,
		Degree float 
);

SELECT * FROM [dsuser1].[classroom_degree]

INSERT INTO [dsuser1].[classroom_degree]
SELECT Student_id, 
	Course_id, 
	Degree
FROM [dbo].[classroom]


---Classify by department
ALTER TABLE [dsuser1].[classroom_degree] ADD 
DEPART VARCHAR (20) NULL


UPDATE [dsuser1].[classroom_degree] SET DEPART = 
		
		CASE  
				WHEN (Course_id <= 3) THEN ('1. English')
				WHEN (Course_id > 3) AND (Course_id <= 19) THEN ('2. Science')
				WHEN (Course_id > 19) AND (Course_id <= 25) THEN ('3. Arts')
				ELSE ('4. Sport')
		
		END

		
---Counting student degree Over 80
		SELECT DEPART , COUNT (Degree) AS Over_80 
		FROM [dsuser1].[classroom_degree]
		WHERE (Degree>80) 
		Group by DEPART

---Counting student degree Under 60
		SELECT DEPART , COUNT (Degree) AS Under_60 
		FROM [dsuser1].[classroom_degree]
		WHERE (Degree<60) 
		Group by DEPART


SELECT * FROM [dsuser1].[classroom_degree]



ALTER TABLE [dsuser1].[classroom_degree] ADD 
Total INT ,
Num INT,
Percentage INT 




