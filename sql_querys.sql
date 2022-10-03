
---creating table--
CREATE table dlithe.dbo.PS_DEPARTMENT
(
  emp_id varchar(100) PRIMARY KEY,
  dept_name varchar(100)
);
CREATE table dlithe.dbo.PS_EMPLOYEE
(
 emp_name varchar(100),
 emp_id varchar(100) FOREIGN KEY REFERENCES PS_DEPARTMENT(emp_id),
 emp_phone int
 );
CREATE table dlithe.dbo.PS_LOCATION
(
   emp_location varchar(100) NOT NULL,
   emp_code VARCHAR(20) UNIQUE,
   loc_id VARCHAR(100) PRIMARY KEY
   );
  ---inserting data to table
INSERT INTO PS_DEPARTMENT VALUES('E2111','AIML');
INSERT INTO PS_DEPARTMENT VALUES('E2112','DBMS');
INSERT INTO PS_DEPARTMENT VALUES('E2113','.NET');
INSERT INTO PS_DEPARTMENT VALUES('E2114','.NET');
INSERT INTO PS_EMPLOYEE VALUES('ANU','E2114',924635890);
INSERT INTO PS_EMPLOYEE VALUES('RAJ','E2112',924467590);
INSERT INTO PS_EMPLOYEE VALUES('POOJA','E2111',913535890);
INSERT INTO PS_EMPLOYEE VALUES('RITI','E2113',914535890);
INSERT INTO PS_LOCATION VALUES('UDUPI','E211','L1');
INSERT INTO PS_LOCATION VALUES('BENGLORE','E212','L2');
INSERT INTO PS_LOCATION VALUES('MANGLORE','E213','L3');
INSERT INTO PS_LOCATION VALUES('UDUPI','E2114','L4');
 
--displaying records to table
SELECT * FROM PS_EMP;

SELECT * FROM PS_DEPARTMENT;

SELECT * FROM PS_LOCATION ;

DELETE FROM SN_EMPLOYEE WHERE EMP_ID='E2111';
 
 
  INSERT INTO PS_EMPLOYEE VALUES('pooja','E2111',914535890);
INSERT INTO PS_EMPLOYEE VALUES('reena','E2114',914535890);
ALTER TABLE PS_DEPARTMENT ADD dept_id varchar(100);

----update table
UPDATE PS_DEPARTMENT SET dept_id='d1' WHERE EMP_ID='E2114';
UPDATE PS_DEPARTMENT SET dept_id='d2' WHERE EMP_ID='E2113';
UPDATE PS_DEPARTMENT SET dept_id='d3' WHERE EMP_ID='E2112';
UPDATE PS_DEPARTMENT SET dept_id='d1' WHERE EMP_ID='E2111';


SELECT * FROM dlithe.dbo.S_HREMPLOYEES;


SELECT * FROM dlithe.dbo.S_HREMPLOYEES WHERE JOB_ID ='IT_PROG';

SELECT JOB_ID ,DEPARTMENT_ID ,FIRST_NAME  FROM dlithe.dbo.S_HREMPLOYEES WHERE (DEPARTMENT_ID ='60') OR  (DEPARTMENT_ID ='90');


SELECT JOB_ID ,DEPARTMENT_ID ,FIRST_NAME,SALARY  FROM dlithe.dbo.S_HREMPLOYEES WHERE(DEPARTMENT_ID ='60') AND  (SALARY >=7000);


SELECT JOB_ID ,DEPARTMENT_ID ,FIRST_NAME,SALARY  FROM dlithe.dbo.S_HREMPLOYEES WHERE FIRST_NAME NOT LIKE 'A%';

SELECT JOB_ID ,DEPARTMENT_ID ,FIRST_NAME,SALARY  FROM dlithe.dbo.S_HREMPLOYEES WHERE MANAGER_ID IS NULL;

SELECT JOB_ID ,DEPARTMENT_ID ,FIRST_NAME,SALARY,COMMISSION_PCT  FROM dlithe.dbo.S_HREMPLOYEES WHERE COMMISSION_PCT  IS NOT NULL;

SELECT JOB_ID ,DEPARTMENT_ID ,FIRST_NAME,SALARY,JOB_ID FROM dlithe.dbo.S_HREMPLOYEES WHERE JOB_ID  IN ('AD_PRES','AD_VP');

SELECT top 10 * FROM dlithe.dbo.S_HREMPLOYEES;

SELECT UPPER(FIRST_NAME) FROM dlithe.dbo.S_HREMPLOYEES;

SELECT LOWER(FIRST_NAME) FROM dlithe.dbo.S_HREMPLOYEES;

SELECT LTRIM(RTRIM(FIRST_NAME)) FROM dlithe.dbo.S_HREMPLOYEES;

SELECT LEN('DATABASE');

SELECT REPLACE('DATABASE', 'T', 'K');

-----using case 

SELECT  CASE WHEN DEPARTMENT_ID=10 THEN 'IT'
             WHEN DEPARTMENT_ID=30 THEN 'HR'
             WHEN DEPARTMENT_ID=40 THEN 'LOAN'
             WHEN DEPARTMENT_ID=90 THEN 'MOTAR'
             ELSE 'OTHER'
             END AS DNAME,DEPARTMENT_ID
             FROM dlithe.dbo.S_HREMPLOYEES;

SELECT SUBSTRING('DATABASE CLASS', 1, 3) AS ExtractString;

SELECT CHARINDEX('t', 'Customer') AS NEWCOL;

--agregation'
SELECT  count(*)from dlithe.dbo.S_HREMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT  count(*)from dlithe.dbo.S_HREMPLOYEES
SELECT  count(*)from dlithe.dbo.S_HREMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT  sum(salary) from dlithe.dbo.S_HREMPLOYEES;
SELECT avg(salary) from dlithe.dbo.S_HREMPLOYEES;
SELECT max(salary) from dlithe.dbo.S_HREMPLOYEES;
SELECT min(salary) from dlithe.dbo.S_HREMPLOYEES;
SELECT max(salary) from dlithe.dbo.S_HREMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT min(salary) from dlithe.dbo.S_HREMPLOYEES GROUP BY DEPARTMENT_ID;

SELECT COUNT(1),DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(1)>1
ORDER BY DEPARTMENT_ID DESC;

SELECT * from PS_DEPARTMENT;

-- alter table 
ALTER TABLE PS_DEPARTMENT ADD dept_id varchar(100);
UPDATE PS_DEPARTMENT SET dept_id='d1' WHERE EMP_ID='E2114';
DELETE FROM PS_EMPLOYEE WHERE EMP_ID='E2111';


UPDATE PS_DEPARTMENT SET dept_name='DBMS';
DROP TABLE ps_order;
TRUNCATE TABLE dbo.PS_CUSTMER;

SELECT * from PS_employee;
EXEC sp_rename 'PS_CUSTMER','ps_cust';
EXEC sp_rename 'PS_EMPLOYEE.emp_name', 'name';
create table dlithe.dbo.ps_new (Years varchar(100), State	varchar(100),HAI varchar(100),	Operative_Procedure	varchar(100),Facility_ID	varchar(100),Facility_Name	varchar(100),Hospital_Category_RiskAdjustment varchar(100),	Hospital_Type varchar(100),	County	varchar(100),Procedure_Count	varchar(100),Infection_Count	varchar(100),Predicted_Infection_Count	varchar(100),SIR	varchar(100),SIR_CI_95_Lower_Limit	varchar(100),SIR_CI_95_Upper_Limit	varchar(100),Comparison varchar(100),	SIR_2015	varchar(100),on_Track_Toward varchar(100));		


SELECT * from dlithe.dbo.PSS_emp;
 
--1)List employee id of all the departments 10 and 20
SELECT employee_id from dlithe.dbo.S_HREMPLOYEES where MANAGER_ID =10 or MANAGER_ID=20 ;

SELECT EMPLOYEE_ID,DEPARTMENT_ID  FROM S_HREMPLOYEES sh WHERE DEPARTMENT_ID IN (10,20);

SELECT 50 || 0001
FROM dual;

SELECT  FIRST_NAME + NULL
FROM S_HREMPLOYEES
WHERE EMPLOYEE_ID  = 100;

SELECT  SUBSTRING('Pratibha Shetty', CHARINDEX(' ', 'Pratibha shetty') +1, len('Pratibha shetty'));

If deptid =20 then ‘it’
Else if deptid=10 then ‘hr’
Else if deptid =30 and salary >10000 and fname <>’David ’ then ‘finance’
Else ‘other’
End as dname


SELECT  CASE WHEN DEPARTMENT_ID=20 THEN 'IT'
             WHEN DEPARTMENT_ID=10 THEN 'HR'
             WHEN (DEPARTMENT_ID=30 )and (SALARY >10000) and (FIRST_NAME <> 'David') THEN 'finance'
             WHEN DEPARTMENT_ID=90 THEN 'MOTAR'
             ELSE 'OTHER'
             END AS DNAME
             FROM dlithe.dbo.S_HREMPLOYEES;

CREATE TABLE dlithe.dbo.emp_dest(
	EMPLOYEE_ID float NULL,
	FIRST_NAME varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LAST_NAME varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EMAIL varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PHONE_NUMBER varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HIRE_DATE datetime NULL,
	JOB_ID varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SALARY decimal(8,2) NULL,
	COMMISSION_PCT decimal(2,2) NULL,
	MANAGER_ID float NULL,
	DEPARTMENT_ID float NULL
);

CREATE table dlithe.dbo.PSS_emp
(
   id varchar(100),
   name VARCHAR(20),
   salary VARCHAR(100)
   );

SELECT * from dlithe.dbo.emp_dest;
INSERT INTO PS_emp  VALUES('1','E211','L1');
INSERT INTO PS_emp  VALUES('2','E212','L2');
INSERT INTO PS_emp  VALUES('3','E213','L3');
INSERT INTO PS_emp  VALUES('4','E2114','L4');

-- ssis

CREATE table dlithe.dbo.PS_stu
(
   name varchar(100),
   id VARCHAR(20),
   class VARCHAR(100)
   );
  

INSERT into dlithe.dbo.PS_EMPc(id,name,sal) values ('15','pooja','3000'),('29','rada','2000'),('44','raji','3000');
UPDATE dlithe.dbo.ps_stu SET name='sujaya' where id='1';

DELETE FROM dlithe.dbo.ps_stu WHERE ID='6';
TRUNCATE TABLE dlithe.dbo.ps_stu;
DROP TABLE dlithe.dbo.emp_dest;


CREATE table dlithe.dbo.PS_EMPc
(
 id varchar(100), 
 name varchar(100),
 sal varchar(1000)
 );
 select * from dlithe.dbo.PS_EMPd;
CREATE table dlithe.dbo.PS_stu_f
(
 id varchar(100), 
 name varchar(100),
 div varchar(1000)
 );
CREATE table dlithe.dbo.PS_stu_P
(
 id varchar(100), 
 name varchar(100),
 div varchar(1000)
 );
CREATE table dlithe.dbo.PS_stu_d
(
 id varchar(100), 
 name varchar(100),
 div varchar(1000)
 );


select * from dlithe.dbo.PS_sale_2020;
select * from dlithe.dbo.PS_sale_2021;
select * from dlithe.dbo.PS_sale_2022;


CREATE table dlithe.dbo.PS_sale_2020
(
 id varchar(100), 
 name varchar(100),
 years varchar(1000)
 );

CREATE table dlithe.dbo.PS_sale_2021
(
 id varchar(100), 
 name varchar(100),
 div varchar(1000)
 );
CREATE table dlithe.dbo.PS_acc
(
 id varchar(100), 
 name varchar(100),
 account varchar(1000)
 );


SELECT  CASE WHEN DEPARTMENT_ID=10 THEN 'HR'
             ELSE 'OTHER'
             END AS DNAME,DEPARTMENT_ID
             FROM dlithe.dbo.S_HREMPLOYEES;
            
            
            
            
                
 INSERT into dlithe.dbo.PS_acc(id,name,account) values ('15','pooja','$%^3000'),('29','rada','$%^2000'),('44','raji','$%^3000');
 
TRUNCATE table dlithe.dbo.PS_EMPc;

update  dlithe.dbo.PS_EMPc  set Name=replace(Name,'$','');
select * from  dlithe.dbo.PS_EMPc;



CREATE table dlithe.dbo.P_Look_up;
(
 mail varchar(100)
 
 );
 
INSERT into dlithe.dbo.PS_mail (mail) values ('pooja@gmail.com'),('ja@gmail.com'),('jai@gmail.com'),('priya@gmail.com');
CREATE TABLE P_Look_up (
    Row_iD varchar(100),
    Order_ID varchar(255),
   Order_Date varchar(50),
     Ship_Date varchar(50),
     Ship_Mode varchar(255),
     Customer_ID varchar(255),
    Customer_Name varchar(255),
   Segment varchar(255),
    Country varchar(255),
    City varchar(255),
    State varchar(255),
     Postal_Code varchar(50),
    Region varchar(255),
    Product  varchar(255),
    Category varchar(255),
    SubCategory varchar(255),
   ProductName varchar(255),
     Sales varchar(50),
    Quantity varchar(50),
    Discount varchar(50),
   Profit varchar(50)
)


select * from dlithe.dbo.PS_acount;

CREATE table dlithe.dbo.P_Look_up;
(
 id varchar(100), 
 name varchar(100),
 sal varchar(1000)
 );
TRUNCATE table dlithe.dbo.PS_EMPc;

--- JOINS
SELECT * from order1;
select * from customer;
-- INNER JOIN
select c.cust_id,c.cust_name,c.cust_mob
from customer as c Inner join order1 as o 
on c.cust_id = o.cust_id;

--- LEFT JOIN
select c.cust_id,c.cust_name,c.cust_mob,o.order_date,o.order_id
from customer as c left join order1 as o 
on c.cust_id = o.cust_id;


----RIGHT JOIN
select c.cust_id,c.cust_name,c.cust_mob,o.order_date,o.order_id
from customer as c right join order1 as o 
on c.cust_id = o.cust_id;

--- CROSS JOIN
select c.cust_id,c.cust_name,c.cust_mob,o.order_date,o.order_id
from customer as c cross join order1 as o ;


---- FULL JOIN
select c.cust_id,c.cust_name,c.cust_mob,o.order_date,o.order_id
from customer as c full join order1 as o 
on c.cust_id = o.cust_id;




---assignment-----
---Create two tables(like Employee--empId, name, zipcode) and Address table--(zipcode, city, country)Define joins with different types:


CREATE table dlithe.dbo.P_employee
(
  emp_id varchar(100),
  emp_name varchar(100),
  zipcode varchar(100)
);
CREATE table dlithe.dbo.P_adress
(
   city varchar(100),
   country VARCHAR(20),
   zipcode varchar(100)
 );

insert into dlithe.dbo.P_employee values ('01','sandy','1024'),('02','marry','1025'),('03','vani','1027'),('04','raj','2024'),('05','sham','1083');
insert into dlithe.dbo.P_adress values ('banglore','india','1024'),('udupi','india','1027'),('manglore','india','2024'),('bidar','india','1111');

SELECT  * from dlithe.dbo.P_employee;
SELECT  * from dlithe.dbo.P_adress;


-- INNER JOIN
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e Inner join P_adress as a 
on e.zipcode = a.zipcode;

--- LEFT JOIN
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e left join P_adress as a 
on e.zipcode = a.zipcode;


----RIGHT JOIN
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e right join P_adress as a 
on e.zipcode = a.zipcode;

--- CROSS JOIN
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e cross join P_adress as a;


---- FULL JOIN
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e full join P_adress as a 
on e.zipcode = a.zipcode;




-----Create two tables(employee and Department) consraints


CREATE table dlithe.dbo.PS_DEPARTMENT
(
  emp_id varchar(100) PRIMARY KEY,
  dept_name varchar(100)
);
CREATE table dlithe.dbo.PS_EMPLOYEE
(
 emp_name varchar(100) not null,
 emp_id varchar(100) FOREIGN KEY REFERENCES PS_DEPARTMENT(emp_id),
 emp_phone int UNIQUE,
 age int check(age>=18),
 join_date date default GETDATE()
 );

insert into dlithe.dbo.PS_DEPARTMENT values ('01','hr'),('02','sales'),('03','hr'),('05','sales');

insert into dlithe.dbo.PS_EMPLOYEE (emp_name,emp_id,emp_phone,age)values ('rajesh','01',8356449,40),('bavan','02',973534729,29),('sujaya','03',56566729,59),('priti','04',56565678,59);

select * from dlithe.dbo.PS_DEPARTMENT;
select * from dlithe.dbo.PS_EMPLOYEE;


-----creating View--
----Inner Join
create view ps_emp_view
as
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e INNER JOIN P_adress as a
on e.zipcode = a.zipcode

select * from ps_emp_view;

----Left Join
create view ps_emp_view_left
as
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e LEFT JOIN P_adress as a
on e.zipcode = a.zipcode

select * from ps_emp_view_left;

----RIGHT Join
create view ps_emp_view_R
as
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e RIGHT JOIN P_adress as a
on e.zipcode = a.zipcode

select * from ps_emp_view_R

----FULL Join
create view ps_emp_view_F
as
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e Full JOIN P_adress as a
on e.zipcode = a.zipcode

select * from ps_emp_view_F

----cross Join
create view ps_emp_view_cr
as
select e.emp_id,e.emp_name,e.zipcode,a.city
from P_employee as e cross JOIN P_adress as a



select * from ps_emp_view_Cr

--update view

UPDATE ps_emp_view_left SET emp_name='jaya' WHERE EMP_ID='01';
select * from ps_emp_view_left

select * from ps_employee

--ranking function
--Row Number RANKS Dense Rank

select emp_name,emp_id,age,
row_number()over(order by emp_id) as rowNumber,
rank() over (order by emp_id) as RANKS,
DENSE_RANK() over (order by emp_id) as DenseRank
from  ps_employee

----NORMALIZATION 
CREATE table dlithe.dbo.PS_1nf
(
  emp_id varchar(100),
  name varchar(100),
  mbl varchar(100)
);
insert into dlithe.dbo.PS_1nf values('01','ram','5374284,36782'),('02','sita','7674284,936782'),('03','sandy','9374284,86782')
select * from dlithe.dbo.PS_1nf;
---1NF
insert into dlithe.dbo.PS_1nf values('01','ram','5374284'),('02','sita','7674284'),('03','sandy','9374284')

---2NF
create table ps_stut 
(
teacher_id varchar(100),
sub varchar(100),
t_age int
)

insert into ps_stut values('t1','bio',30),('t2','chemestry',29),('t3','physics',40),('t4','english',35)
select * from ps_stut;

select teacher_id,t_age from ps_stut

---3NF
create table ps_stuts 
(
s_id varchar(100),
sub varchar(100),
s_fee int
)

insert into ps_stuts values('s1','bio',2000),('s2','bio',2000),('s3','physics',4000),('t4','physics',4000)

select * from ps_stuts

select s_id,sub from ps_stuts

select DISTINCT sub,s_fee from  ps_stuts

CREATE table dlithe.dbo.PS_em_s
(
  emp_id int,
  name varchar(100),
  sal int
);

insert into dlithe.dbo.PS_em_s values(1,'raj',1000),(2,'ram',2000),(3,'sham',5000),(4,'seeta',6000)
CREATE table dlithe.dbo.PS_em_t
(
  emp_id int,
  name varchar(100),
  sal int
);


-----REFERENCIAL INTEGRITY------

alter table employee drop constraint FK_emp_dept_id;

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete cascade on update cascade;--- On delete cascade

select * from employee;
select * from dept;

 delete from dept where dept_id=3;
 update dept set dept_id=3 where dept_name='Finance';

---On delete/ Update set null----

alter table employee drop constraint FK_emp_dept_id;

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete set null on update set null;

select * from employee;
select * from dept;

insert into employee values
(2,'Anaa',2,'Anaa@outlook.com',23),
(4,'Ajay',2,'Ajay@outlook.com',23);

insert into dept values (4,'testing');

delete from dept where dept_id=3;
update dept set dept_id=4 where dept_name='IT';

select * from employee;
select * from dept;

----On Delete /Update set Default----

alter table employee drop constraint FK_emp_dept_id;

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete set default on update set default;

select * from employee;
select * from dept;

-- Creation of Table
create table dept(
dept_id int primary key,
dept_Name varchar(50) not null
);

--Insertion of values
insert into dept values
(1,'HR'),(2,'IT'),(3,'Design'),(4,'Finance');

create table employee(
emp_id int primary key,
Name varchar(50) unique,
dept_id int default 1 foreign key references dept(dept_id) on delete set default on update set default,
email varchar(50) default 'company@email.com',
Age int check(age>21)
);

insert into employee values (1,'Anitha',1,'Anitha@evry.com',22);
insert into employee values (2,'Ankith',3,'Ankith@evry.com',22);
insert into employee (emp_id,name,dept_id,age) values (3,'Pallavi',4,25);
insert into employee values (4,'Jayanth',3,'Jayanth@evry.com',23);


select * from sj_store;
select * from dept;

delete from dept where dept_id=4;
update dept set dept_id=4 where dept_Name='Design';

select * from ps_employee;
select * from ps_emp_target;

select * from ps_salary


















