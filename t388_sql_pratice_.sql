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
select * from employee;
desc employee