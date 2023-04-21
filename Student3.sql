use c4119;
create table Future_Emp(
emp_id int primary key,
ename varchar(20) not null,
designation varchar(25) not null,
dept varchar(20),
working_hour varchar(18),
salary double(10,2)
);
INSERT INTO Future_Emp VALUES
(1,'HEMANT','ENGINEER','EE','8','10000'),
(2,'RITU','SME','BCA','6','11000'),
(3,'RAHUL','MGR','CSE','10','12000'),
(4,'SANA','ADMIN','MSC','12','13000'),
(5,'ARYAN','ENGINEER','EE','8','14000'),
(6,'MUKUL','ADMIN','ME','8','15000'),
(7,'UPASANA','ENGINEER','EE','8','16000'),
(8,'PRINCE','MGR','ME','8','17000'),
(9,'TUSHAR','ENGINEER','CE','8','18000'),
(10,'MEGHA','SME','BCA','6','19000');
# aggraget function--- groping by
#count
select dept,count(dept) as 'total_emp_in_dept' from Future_Emp group by dept;
#sum
select dept,count(working_hour) as 'total_emp_in_dept' from Future_Emp group by dept;
select dept,count(working_hour) as 'total_emp_in_dept' from Future_Emp group by dept='ME';
select dept,count(salary) as 'total_emp_in_dept' from Future_Emp group by dept;
select dept,count(salary) as 'total_emp_in_dept' from Future_Emp group by dept='EE';
#avarage
select dept,avg(salary) as 'avg_dept_salary' from Future_Emp group by dept;
#min
select dept,min(salary) as 'MIN_dept_salary850' from Future_Emp group by dept;
select min(salary) from Future_Emp group by dept='EE';
select ename,min(salary) from Future_Emp ;
select min(salary) from Future_Emp;
#max
select dept,max(salary) as 'MAX_dept_salary850' from Future_Emp group by dept;
select max(salary) from Future_Emp;
select max(salary) from Future_Emp;
#subqur
select ename,dept,min,salary from Future_Emp where salary=(select max(salary) from future_emp);
select * from future_emp where salary=(select min(salary) from future_emp);
#having
select dept85,sum(working_hour) as 'total hour' from future_emp group by dept having sum(working_hour)>15;