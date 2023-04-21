#DDL (CREATE, ALTER, DROP,truncat)
use c4119;
#create table tble name;
create table JAVAStudent(id int primary key,
sname varchar(20) not null,
sphone varchar(20) not null unique,
semail varchar(20) not null unique,
sadd varchar(50),
squalification varchar(10) not null,
sdept varchar(20));
#insert multiple row
insert into JAVAStudent values
#insert the value
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL');
#add new column
alter table JAVAStudent ADD age int after sname;
#modify datatype size
alter table javaStudent MODIFY squalification varchar(20) not null;
#modify constraint
alter table JAVAStudent MODIFY sphone int not null;
#drop column from javastudent table
alter table javaStudent DROP COLUMN sdept;
#change column name
alter table javaStudent CHANGE COLUMN age sage int;
#rename table name
alter table javaStudent RENAME TO student_detail;
#insert single row
insert into student_detail values(7, 'Pallabi',23,99999555,'pallabi@obe.com','New delhi','MBA');
 
 #DML --- INSERT,UPDATE, DELETE
 update student_detail set sage =20 where ID=1;
 update student_detail set sage =25 where ID=2;
 update student_detail set sage =32 where ID=3;
 update student_detail set sage =45 where ID=4;
 update student_detail set sage =55 where ID=5;
 update student_detail set sage =25 where ID=6;
 update student_detail set sage =42 where ID=7;
 update student_detail set sage =12 where ID=8;
update student_detail set sage =30 where ID=9;
alter table student_detail add fees double after squalification;
update student_detail set fees =2022 where ID=1;
 update student_detail set fees =2511 where ID=2;
 update student_detail set fees =3200 where ID=3;
 update student_detail set fees =4500 where ID=4;
 update student_detail set fees =5500 where ID=5;
 update student_detail set fees =2500 where ID=6;
 update student_detail set fees =4200 where ID=7;
 update student_detail set fees =1200 where ID=8;
update student_detail set fees =3011 where ID=9;
update student_detail set squalification ='BCA' where sname='ARNAB';
update student_detail set fees =21111.50;
update student_detail set sadd='mubai' where sname='puja';
#delete any specific row
delete from student_detail where sname='pallabi';
#delete any specific coloumn
alter table student_detail DROP COLUMN fees;

#select
select * from student_detail where sname ='ARNAB';
#and (both the condition should true)
select * from student_detail where sadd='kolkata' and squalification='BE';
#or (an one condition should true)
select * from student_detail where sadd ='mubai' or squalification='BE';
#not
select * from student_detail where  squalification !='BE';
#in
select * from student_detail where saddin('mumbai','goa');
#starts with
select * from student_detail where sname like 'A%';
#end with
select * from student_detail where sname like '%T';
#In btwn
select * from student_detail where sname like '%I%';
# start & end with
select * from student_detail where sname like 'A%T';
#missing latter
select * from student_detail where sname like 'g_a';
select * from student_detail where sname like 'A_n_b';
 #query with select 
 select id, sname , sphone, sadd from student_detail;
  select * from student_detail where id =5;
select * from student_detail where sname ='AVIJIT';
# distinct
 select distinct sname from student_detail;
 select distinct sage from student_detail;
 
 #alter
 alter table student_detail add comn_Pct int after fees;
 update student_detail set comn_Pct =20 where id=1;
 update student_detail set comn_Pct =15 where id=2;
 update student_detail set comn_Pct =10 where id=3;
 update student_detail set comn_Pct =25 where id=4;
 update student_detail set comn_Pct =35 where id=5;
 update student_detail set comn_Pct =20 where id=6;
 update student_detail set comn_Pct =15 where id=7;
 update student_detail set comn_Pct =45 where id=8;
 update student_detail set comn_Pct =45 where id=9;
 #as
 select sname,sadd,fees,fees + 300 as 'Increased_fees' from student_detail;
 select sname,fees,fees + comn_Pct +100 as 'Annual_Compensation' from student_detail;
 select comn_Pct from student_detail;
 update student_detail set fees=3000.50 where id=2;
 update student_detail set fees =3300.50 where id=3;
 update student_detail set fees =5200.50 where id=5;
 update student_detail set fees =2500.50 where id=7;
 update student_detail set fees =4500.50 where id=1;
 #greater then
 select id, fees from student_detail where fees >4000;
 
 #btwn
 select sname,fees from studenttt_detail where fees between 2000 and 3000;
 select * from student_detail where fees=4500.5 or fees=2000.55 or fees=3300.50;
 select * from student_detail where ID= 5 or Id=3;
 
 #not equal
 select * from student_detail where fees !=2000.5;
 select * from student_detail where sname ='Arnab';
update student_detail set id =11 where fees >3000.5 and sadd='delhi'; 
truncate student_detail;
# delete rows
drop table student_detail; # delete whole table