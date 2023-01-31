--UC-1 creating database
create database EmployeeServices;
--UC-2 creating Table
create Table empoyee_payrolls
(
Id int identity(1,1)primary key not null,
Name varchar(255),
Salary int,
StartDate datetime
)

--UC-3 Insert values in Table

insert into empoyee_payrolls Values ('shweta', 60000, '2023-02-13')
insert into empoyee_payrolls Values ('kiya', 45000, '2022-12-31')

--UC-4 Retrieve All data--
select * from empoyee_payrolls

------- UC 5: Select Query using Cast() an GetDate() -------
select Salary from empoyee_payrolls where Name = 'Bill'
select Name from empoyee_payrolls where StartDate between '2020-01-01' and '2023-01-13'

------- UC 6: Add Gender Column and Update Table Values -------

Alter table empoyee_payrolls
add Gender char(1);

Update empoyee_payrolls 
set Gender='M'
where name='Magesh';
Update empoyee_payrolls 
set Gender='F'
where name='Gayathri'

------- UC 7: Use Aggregate Functions and Group by Gender -------
select SUM(Salary) FROM empoyee_payrolls
where Gender = 'F' GROUP BY Gender;

select AVG(Salary) FROM empoyee_payrolls
where Gender = 'F' GROUP BY Gender;

select MIN(Salary) FROM empoyee_payrolls
where Gender = 'F' GROUP BY Gender;

select MAX(Salary) FROM empoyee_payrolls
where Gender = 'F' GROUP BY Gender;

select COUNT(Salary) FROM empoyee_payrolls
where Gender = 'F' GROUP BY Gender;

------- UC 8: Add column department,PhoneNumber and Address -------

create table Employee_Department(
ID int not null,
Department varchar(120) not null,
Phone int, 
Address varchar(100),
) 

select * from Employee_Department

insert into Employee_Department Values (1,'abc',9406426233,'Goa')
insert into Employee_Department Values (2,'Sales',9862312866, 'delhi')
insert into Employee_Department Values (3,'xyz',945692336,'Tamilnadu')
insert into Employee_Department Values (4,'main',9865325689,'hydrabad')
insert into Employee_Department Values (5,'di',9463289633,'banglore')
insert into Employee_Department Values (6,'tae',9410239855,'pune')
select empoyee_payrolls.ID, Name, Salary, StartDate, Gender, Department, Phone, Address
from empoyee_payrolls
left join Employee_Department on empoyee_payrolls.ID = Employee_Department.ID
