
---Homework1 EX 2-h
---Creating table based on dbo.classroom
CREATE TABLE [dsuser1].[classroom_teacher](
		Student_id int NOT NULL,
		Course_id int NOT NULL,
		Degree float 
);

SELECT * FROM [dsuser1].[classroom_teacher]

INSERT INTO [dsuser1].[classroom_teacher]
SELECT Student_id, 
	Course_id, 
	Degree
FROM [dbo].[classroom]

---Adding teacher ids and names

ALTER TABLE [dsuser1].[classroom_teacher] ADD Teacherid INT

UPDATE [dsuser1].[classroom_teacher] SET Teacherid = 
CASE 
WHEN (Course_id = 1) THEN ('15')
WHEN (Course_id = 2) THEN ('15')
WHEN (Course_id = 3) THEN ('15')
WHEN (Course_id = 4) THEN ('2')
WHEN (Course_id = 5) THEN ('13')
WHEN (Course_id = 6) THEN ('13')
WHEN (Course_id = 7) THEN ('13')
WHEN (Course_id = 8) THEN ('14')
WHEN (Course_id = 9) THEN ('13')
WHEN (Course_id = 10) THEN ('3')
WHEN (Course_id = 11) THEN ('19')
WHEN (Course_id = 12) THEN ('19')
WHEN (Course_id = 13) THEN ('5')
WHEN (Course_id = 14) THEN ('1')
WHEN (Course_id = 15) THEN ('10')
WHEN (Course_id = 16) THEN ('20')
WHEN (Course_id = 17) THEN ('19')
WHEN (Course_id = 18) THEN ('17')
WHEN (Course_id = 19) THEN ('22')
WHEN (Course_id = 20) THEN ('8')
WHEN (Course_id = 21) THEN ('9')
WHEN (Course_id = 22) THEN ('16')
WHEN (Course_id = 23) THEN ('6')
WHEN (Course_id = 24) THEN ('21')
WHEN (Course_id = 25) THEN ('18')
WHEN (Course_id = 26) THEN ('4')
WHEN (Course_id = 27) THEN ('11')
WHEN (Course_id = 28) THEN ('7')
WHEN (Course_id = 29) THEN ('24')
WHEN (Course_id = 30) THEN ('12')
WHEN (Course_id = 31) THEN ('23')
END 

ALTER TABLE [dsuser1].[classroom_teacher] ADD Teachername VARCHAR (50) 

UPDATE [dsuser1].[classroom_teacher] SET Teachername =
CASE 
WHEN (Course_id = 1) THEN (' Kaylea_Monzingo')
WHEN (Course_id = 2) THEN (' Amanda_Dworkin')
WHEN (Course_id = 3) THEN (' Jordyn_Baron')
WHEN (Course_id = 4) THEN (' Katherine_Dibari')
WHEN (Course_id = 5) THEN (' Heather_Metcalf')
WHEN (Course_id = 6) THEN (' Madison_Batan')
WHEN (Course_id = 7) THEN (' Cortnee_Kinderknecht')
WHEN (Course_id = 8) THEN (' Caroline_Knuesel')
WHEN (Course_id = 9) THEN (' Katerina_Young')
WHEN (Course_id = 10) THEN (' Mackenzie_Olsen')
WHEN (Course_id = 11) THEN (' Kaitlin_Delude')
WHEN (Course_id = 12) THEN (' Mikayla_Russell')
WHEN (Course_id = 13) THEN (' Alexander_Watts')
WHEN (Course_id = 14) THEN (' Jeffrey_Batzel')
WHEN (Course_id = 15) THEN (' Conor_Mckittrick')
WHEN (Course_id = 16) THEN (' Robert_Aivazian')
WHEN (Course_id = 17) THEN (' Tanner_Fitzsimons')
WHEN (Course_id = 18) THEN (' Daniel_Bland')
WHEN (Course_id = 19) THEN (' Terran_Beaty')
WHEN (Course_id = 20) THEN (' Zachary_Healy')
WHEN (Course_id = 21) THEN (' Ernest_Stoyanov')
WHEN (Course_id = 22) THEN (' Darick_Hess')
WHEN (Course_id = 23) THEN (' Maxwell_Romkee')
WHEN (Course_id = 24) THEN (' Keegan_Price')

END

---Selecting the best teacher by degree
		SELECT Teachername ,  AVG (Degree) AS Good_Teacher 
			FROM [dsuser1].[classroom_teacher]
			Group by Teachername
			ORDER BY  Good_Teacher DESC

