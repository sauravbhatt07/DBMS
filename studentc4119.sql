#DDL DATA DEFINATION LANGUAGE (CREATE, DROP,RENAME, ALTER, TRUNCATE)

#CREATE a new database
CREATE DATABASE C4119;
#create a new table using c4119 database
use c4119;
# add column name
CREATE table 4119Student(id int, name varchar(20), age int);
#inset values in the table
insert into 4119Student values(1,'sayan',23);
insert into 4119Student values(2,'jaita',23);
insert into 4119Student values(3,'pritam',23);
insert into 4119Student values(4,'aditya',23);
insert into 4119Student values(5,'sayan',23);
CREATE table javaStudent(id int, name varchar(20), age int);
#insert value in the table
insert into javaStudent value(1,'tushar',20);
insert into javaStudent value(1,'Mukul',20);
#Drop command is used to delete/remove the databse/table
Drop table JavaStudent;
#Alter command is used to change/modify the eisting structur
ALTER table 4119Student add email varchar(20);
Alter table 4119Student drop age;
Alter table 4119Student MODIFY name varchar(30);
#create a new table
create table javaStudent(id int primary key auto_increment, sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique, sadd varchar(50), squalification varchar(10) not null);
#insert values
insert into javaStudent values(1,sayan,4578925435, 'abc@gmail.com','kolkata', 'BCA');
insert into javaStudent value(1,rajan,4242543455, 'abc@gmail.com','Delhi', 'MCA');
#add new column
alter table javaStudent ADD age int after sname;
#modify datatype size
alter table javaStudent MODIFY squalification varchar(20) not null;
#drop column from javastudent table
alter table javaStudent DROP COLUMN sphone;
#change column name
alter table javaStudent RENAME student_details;
#insert single row
insert into student_details values(3,'palabi',26,'pallabi@gmail.com','New delhi',703025556);
 # delete all rows from the table 
 truncate table Studeent_details;
 # delete both (strcture and record)
 drop table Studeent_details;