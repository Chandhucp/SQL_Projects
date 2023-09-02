/*********************************************
Name : Code for School DB
Author :  Chandrashekar R

Purpose: This Script will create DB and Few table in it to store info about the school

**********************************************/

create database School
go

use School

-- Course Master table

create table CourseMaster
(
   CID			int				primary key,
   CourseName	varchar(40)		NOT NULL,
   Category		Char(1)			Null check (Category ='B' or Category = 'M' or Category = 'A'),
   Fee			Smallmoney		NOT NULL check (Fee > 0)
)
go

sp_help CourseMaster

-- Read the table data
select * from CourseMaster

-- Insert the data

insert into CourseMaster values (10,'Advanced_Java','B',5000)
insert into CourseMaster values (20,'Java','A',7000)
insert into CourseMaster values (30,'Python','A',15000)
insert into CourseMaster values (40,'SQL Server','M',25000)
insert into CourseMaster values (50,'Machine Learning','A',35000)
insert into CourseMaster values (60,'MSBI','B',75000)
insert into CourseMaster values (70,'Big Data','A',17000)
insert into CourseMaster values (80,'DataScience','A',50000)
insert into CourseMaster values (90,'MySQL','B',22000)
insert into CourseMaster values (100,'Deep Learning','A',40000)

go

select * from CourseMaster

--Create Student Master Table

create table StudentMaster
(
	SID		Tinyint			Primary key,
	Name	Varchar(40)		NOT NULL,
	Origin	char(1)			NOT NULL check(Origin = 'L' or Origin =  'F'),
	Type	Char(1)			NOT NULL check (Type = 'U' or Type = 'G')
)
go

select * from StudentMaster
 
insert into StudentMaster values (1,'Chandhu','L','G')
insert into StudentMaster values (2,'Pavi','L','G')
insert into StudentMaster values (3,'Ganesh','F','U')
insert into StudentMaster values (4,'Ram','L','U')
insert into StudentMaster values (5,'Viji','F','G')
insert into StudentMaster values (6,'Nithish','L','U')
insert into StudentMaster values (7,'Umesh','L','U')
insert into StudentMaster values (8,'Nithya','F','U')
insert into StudentMaster values (9,'Sushanth','L','G')
insert into StudentMaster values (10,'Babu','L','G')
go

create table EnrollmentMaster
(    CID	int			NOT NULL Foreign Key REFERENCES CourseMaster(CID),
	 SID	tinyint		NOT NULL Foreign key REFERENCES StudentMaster(SID),
	 DOE	Datetime	NOT NULL,
	 FWF	bit			NOT NULL,
	 Grade	Char(1)		NULL	 check (Grade = 'O' or Grade = 'A' or Grade = 'B' or Grade = 'C')
)
go

select * from EnrollmentMaster
 
insert into EnrollmentMaster values (40,2,'2023/03/21',0,'O')
insert into EnrollmentMaster values (20,1,'2023/11/02',0,'O')
insert into EnrollmentMaster values (60,3,'2023/03/21',1,'A')
insert into EnrollmentMaster values (50,5,'2023/05/21',0,'O')
insert into EnrollmentMaster values (10,4,'2023/04/21',1,'C')
insert into EnrollmentMaster values (30,7,'2023/09/21',0,'B')
insert into EnrollmentMaster values (70,6,'2023/05/21',1,'O')
insert into EnrollmentMaster values (90,9,'2023/07/21',0,'C')
insert into EnrollmentMaster values (100,8,'2023/01/21',1,'O')
insert into EnrollmentMaster values (80,10,'2023/11/21',0,'A')
