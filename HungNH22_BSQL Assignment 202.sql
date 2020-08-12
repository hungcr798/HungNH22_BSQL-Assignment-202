Create table TRAINEE(
 TraineeID int identity(1,1) PRIMARY KEY,
 Full_Name nvarchar(250),
 Birth_Date date,
 Gender bit,
 ET_IQ  TINYINT  not null, check(ET_IQ BETWEEN  0 and 20),
 ET_Gmath  TINYINT  not null, check(ET_Gmath BETWEEN  0 and 20),
 ET_English TINYINT  not null, check(ET_English BETWEEN  0 and 20),
 Training_Class varchar(50),
 Evaluation_Notes text
 )
 insert into TRAINEE values ('HH','2020-08-13',9,9,9,9,'D16','dgsbsbhsfds');

insert into TRAINEE values ('HH1','2020-08-12',9,9,9,9,'D16','asfagsads');

insert into TRAINEE values ('HH2','2020-08-01',9,9,9,9,'D16','asfassafasas');

insert into TRAINEE values ('HH3','2020-08-23',9,9,9,9,'D16','asfaasfasfaa');

insert into TRAINEE values ('HH4','2020-08-20',9,9,9,9,'D16','dasffasfasfas');

insert into TRAINEE values ('HH5','2020-08-15',9,9,9,9,'D16','asfasasgsfsa');

insert into TRAINEE values ('HH6','2020-05-13',1,10,10,10,'D16','ascasgsdbsdgsda');

insert into TRAINEE values ('HH7','2020-09-09',1,10,10,10,'D16','asfasfasfasff');

ALTER table TRAINEE
ADD Fsoft_Account varchar(50) not null unique;
select Full_Name,ET_IQ,ET_Gmath,ET_English,MONTH(Birth_Date) as "Month"
from TRAINEE 
group by  MONTH(Birth_Date),Full_Name,ET_IQ,ET_Gmath,ET_English 
having ET_IQ + ET_Gmath >=20 and
ET_IQ>=8 and 
ET_Gmath>=8 and 
ET_English>=18​ 

select full_name,ET_English, len(full_name) as len_of_name,(Year(GETDATE())) - (YEAR(Birth_Date)) as age    
from TRAINEE
 where len(full_name) = (select max(len(full_name)) from TRAINEE)