--USE P222

--ALTER TABLE Student
--ADD [Address] nvarchar(250) not null
--DROP COLUMN [Address]

--INSERT INTO Student ([Name], Surname, Age, Phone, Email, [Address])
--VALUES ('Rasim', 'Mamedov', 12, '7827', 'rasimm@gmail.com', 'Baku'),
--('Qasim', 'Akifov', 31, '65412', 'qasima@gmail.com', 'Ujar'),
--('Qasim', 'Abbaszade', 27, '6895161', 'qasim2@gmail.com', 'Ganja'),
--('Toofiq', 'Quliyev', 33, '24523465', 'toofiq@gmail.com', 'Baku');

--UPDATE Student
--SET [Name]='Qudret'
--WHERE Id=8

--DELETE FROM Student
--WHERE [Id]=5


--SELECT [Name] 'Ad', Surname 'Soyad', Phone AS 'Telefon' FROM Student
--SELECT DISTINCT Surname FROM Student
--SELECT * FROM Student
--WHERE Age>=18 AND (Address='Baku' OR Address='Agdash')
--WHERE Age>=18 AND NOT Address='Agdash'

--SELECT * FROM Student
--ORDER BY [Name], Surname

--SELECT TOP 3 * FROM Student
--WHERE [Name] IS NOT NULL
 
 --SELECT * FROM Student
 --SELECT MAX(Age) AS 'Max Age' FROM Student
 --SELECT COUNT(Age) AS 'Count of Age' FROM Student
 --WHERE Age>=18


 --SELECT SUM(Age) AS 'Sum of Age' FROM Student
 --SELECT AVG(Age) AS 'Average of Age' FROM Student

 --SELECT * FROM Student
 --WHERE [Name] LIKE 'Q_d%'

 --SELECT * FROM Student
 --WHERE [Address]='Baku' OR [Address]='Ujar' 
 --WHERE [Address] IN('Baku', 'Ujar')

 --SELECT * FROM Student
 --WHERE Age BETWEEN 18 AND 30
 --ORDER BY Age



 --CREATE DATABASE Turbo;

 USE Turbo;

 --CREATE TABLE Brand(
	--Id int PRIMARY KEY IDENTITY(1,1),
	--[Name] nvarchar(50) not null
 --)

 
 --CREATE TABLE Model(
	--Id int PRIMARY KEY IDENTITY(1,1),
	--[Name] nvarchar(50) not null,
	--BrandId int FOREIGN KEY REFERENCES Brand(Id)
 --)

  CREATE TABLE Movie(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(50) not null,
	[Date] datetime not null
 )

  CREATE TABLE Genre(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(50) not null
 )

  CREATE TABLE GenreToMovie(
	Id int PRIMARY KEY IDENTITY(1,1),
	MovieId int FOREIGN KEY REFERENCES Movie(Id),
	GenreId int FOREIGN KEY REFERENCES Genre(Id)
 )