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

alter table empoyee_payrolls
add Gender char(1)

update empoyee_payrolls
set Gender = 'M'
where name = 'Bill' or name ='baby'

