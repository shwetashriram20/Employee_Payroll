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
select Salary from Empoyee_Payrolls where Name = 'Bill'
select Name from Empoyee_Payrolls where StartDate between '2020-01-01' and '2023-01-13'

