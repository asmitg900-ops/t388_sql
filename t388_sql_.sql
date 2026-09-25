create database  T388;select 3*2 as multiplication;
select 14%5 as remainder;
select 14/7 as quotient;
select 26>6 as compare;
 select database();
 
 
 use t388;
show tables;
-- ORDER BY CLAUSE
select * from employee order by department ;
select * from employee where gender ="Male" order by fullname desc;

use t388_db;
select database();
show databases;
CREATE TABLE Employee (
  EmployeeId INT PRIMARY KEY,
  FullName VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary float NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL
);
select * from Employee;
insert into employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

delete from employee where Gender="MALE";
delete from employee where AGE >25;
alter table employee 
ADD address varchar(10);

alter table employee
add bonus float after salary;

alter table employee
add title  varchar(5) first;


alter table employee modify fullname varchar(35);
alter table employee 
change column location address varchar(36);
update employee set location ="thane";
alter table employee
drop address,drop bonus,drop title; 
update employee set location="dombivli"
where department = "IT";
update employee set title ="mrs."
where  gender= "female";
update employee set bonus = salary*0.05;
select distinct Department from employee;

select * from employee
where department in ( "It","finance");




use t388;
create table kisan_info
(ID int unique not null,
name varchar(50) unique not null,
age int check (age>=18),
email_ID varchar(40) default "dummy@gmail.com"
);
drop  table kisan_info;
insert into kisan_info
values 
(103,"vikas",18,default);
select * from kisan_info;
alter table kisan_info modify age int check (age>=20);

desc kisan_info;


-- W G H O 
-- WHERE , GROUP BY -[HAVING] , ORDER BY
-- GROUP BY CLAUSE
select department,count(EmployeeId) from employee group by department;
select gender,count(EmployeeId) from employee group by gender;
select department,sum(salary) from employee group by department;
select department,avg(salary) from employee group by department;
select department,avg(salary), sum(salary) from employee group by department;

select department,avg(salary) as Avg_Salary, sum(salary) as Total_Salary from employee group by department;
select * from employee where age = 25;

select department,count(salary) from employee group by department;
select department,count(gender) from employee group by department;
select department,avg(age),count(*) from employee group by department having avg(age) <27 ;
select department,avg(age),count(*) from employee group by department ;







-- Having Clause ( along with Group By Clause)

CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);

delete from projects where projectid = 12;
select *  from projects;

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),


(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),


(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),


(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),


(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select *,datediff(enddate, startdate) as Duration from projects
where datediff(enddate, startdate) = 45;
select *,datediff(enddate, startdate) as Duration from projects;

alter table projects add Duration int ;
select * from projects;
update projects set duration = datediff(enddate,startdate);


select now();
select duration,count(*)   from projects group by duration;
select duration,count(*)   from projects group by duration having count(*)>=2 ;
select duration,count(*) from projects 
where duration>=20 
group by duration 
having count(*)>=2
order by duration desc;

select * from employee  order by EmployeeId desc limit 5;

select * from employee limit 3,5;
select distinct department from employee;
select distinct Gender from employee;
select distinct age  from employee;

-- is null or not null 
select * from projects;
select * from projects where EmpolyeeID is null;
select * from projects where EmpolyeeID is not null;


update project set employeeid = 1003 where projectID=6;

-- IN,BETWEEN &  LIKE (LOGICAL OPERATORS)
-- BETWEEN
select * from employee where age between 25 and 27;
select * from employee where empolyeeid between 1003 and 1007;


-- IN 
select * from employee where empolyeeid in (1003,1005,1007);
select * from employee where empolyeeid =1003
or EmployeeId=1005
or EmployeeId=1007;
 select * from employee where age in (23,28);
  select * from employee where age in (23,28) and Department = "IT";
  select * from employee where age in (23,28) and Department = "IT" and EmployeeId in (1008,1001);
  
  
  
  select  * from simple;
  
  select * from simple  where fullname like "a%";

 select * from simple  where fullname like "_u%";
 select * from simple  where fullname like "_a%";
 select * from simple;
 
 -- Aggregate funtcion 

 select  avg(salary) from employee;
  select  sum (salary) from employee;
   select  max(salary) from employee;
    select  min(salary) from employee;
     select  count(*) from employee;
      select  count(*) as TOTAL_Emp,
avg(salary) as average,
sum(salary) as Total_Salary
from employee ;
      
      
-- Math Function 
select abs(6*(-7));
select (6*(-7));

select abs(datediff(startdate, enddate)) 
as duration from projects;

select mod(12,3);

select ceil(33);
select floor(33);

select truncate(123456.8765432,1);
select truncate(123456.8765432,0);
select truncate(123456.8765432,-1);

-- AUTO Increment 

select exp(2);
SELECT power(2,4);

-- SQRT Function
select sqrt(169);
select *,sqrt(salary) from employee;
-- concate function
select concat("good"," ","moring") as remarks ;
select *,concat(fullname," ",department) as code from employee;
select *,concat(fullname) as newname, upper(fullname) as CAPITALNAME from employee;-- it will give the value in form of small and capital


-- doing concat in employee table 
alter table employee add EMAIL varchar(100);
update employee set EMAIL =concat(fullname,"@gmail.com");
select * from employee; 

-- replace function
select replace("hello everyone ,good morning","morning","night") as statement;
select fullname ,replace(fullname,"Jones","patil") as changed,
reverse(fullname)
from employee;


-- lenght functuion
select fullname, length(fullname)
from employee;

-- sunstring function 
select substring("Maharastra",1,3);

select * from luke ;
select FULLNAME,length(FULLNAME) AS ACTUAL_LENGTH,

ltrim(FULLNAME) AS LEFTTRIM, length(LTRIM	(FULLNAME)) AS LTRIM_LENGHTH,

Rtrim(FULLNAME) AS RIGHTTRIM, length(RTRIM	(FULLNAME)) AS RTRIM_LENGHTH ,
trim(FULLNAME) as Both_sides_trim, length(rtrim(fullname)) as ALL_TRIM_Length
from luke;

-- sub queries 
select age from employee;
select age from employee where  fullname ="Mary smith";

select * from employee 
where age =(select age from employee where fullname = "Mary smith");


select  * from employee 
where  Salary =(select salary from employee where fullname ="John Doe");
select  * from employee 
where  Department =(select Department from employee where fullname ="John Doe");

  
  select max(salary) from employee
  where salary <(select max(salary)from employee);
  -- to show 2nd highest salary 
  select max(salary)from employee
  where salary <(select max(salary)from employee);
  -- 3rd highest salary 
  select max(salary) from employee 
  where salary <(select max(salary) from employee where salary <(select max(salary) from employee));

  
  -- multiple Row subquery 
  select age from employee where EmployeeId in(1002,1003);
  select * from employee
  where age in (select age from employee where EmployeeId in(1002,1003));
  
  
  use t388_db;
  select distinct salary from employee;
  
 
  select * from employee
 where  salary <any(select salary from employee where employeeid between 1001 and 1003);
  
 select * from employee
 where  salary <all (select salary from employee where employeeid between 1001 and 1003);
 
 -- joins 
 use t388_db;

select * from name_t388;
select * from salary_t388;
 
  -- inner joins 
   select salary_t388.id,name,salary
   from name_t388
   join 
   salary_t388
   on name_t388.id =salary_t388.id;
   
   -- left join
   select name_t388.id,name,salary
   from
   name_t388
   left join 
   salary_t388
   on salary_t388.id= name_t388.id;
   
   -- right join  --
   
  select  name_t388.id,name,salary
  from
  salary_t388
  right join
  name_t388
  on salary_t388.id =name_t388.id;
   
   
   
   
   