--UC-3 Insert values in Table
Insert into empoyee_payroll(name,salary,startDate) values
('shweta',20000,'2023-03-12'),
('Magesh',25000,'2023-04-18'),
('Gayathri',10000,'2022-05-13'),
('Aruna',30000,'2022-08-19');
--UC-4 Retrieve All data--
select * from empoyee_payroll;
------- UC 5: Select Query using Cast() an GetDate() -------
select salary from empoyee_payroll where name='Magesh';
select salary from empoyee_payroll where startDate BETWEEN Cast('2022-12-20' as Date) and GetDate();
------- UC 6: Add Gender Column and Update Table Values -------
Alter table empoyee_payroll
add Gender char(1);

Update empoyee_payroll 
set Gender='M'
where name='Magesh';
Update empoyee_payroll 
set Gender='F'
where name='Gayathri' or name='Shweta'or name='Aruna';
------- UC 7: Use Aggregate Functions and Group by Gender -------

select Sum(salary) as "TotalSalary",Gender from empoyee_payroll group by Gender;
select Avg(salary) as "AverageSalary",Gender from empoyee_payroll group by Gender;
select Min(salary) as "MinimumSalary",Gender from empoyee_payroll group by Gender;
select Max(salary) as "MaximumSalary",Gender from empoyee_payroll group by Gender;
select count(salary) as "CountSalary",Gender from empoyee_payroll group by Gender;
------- UC 8: Add column department,PhoneNumber and Address -------
Alter table empoyee_payroll
add EmployeePhoneNumber BigInt,EmployeeDepartment varchar(200) not null default 'Publish',Address varchar(200) default 'Not Provided';

Update empoyee_payroll 
set EmployeePhoneNumber='9842905050',EmployeeDepartment='Editing',Address='Bangalore,Karnataka'
where name='Shweta';

Update empoyee_payroll 
set EmployeePhoneNumber='10987252525',Address='Arizona,US'
where name ='Magesh';

Update empoyee_payroll 
set EmployeePhoneNumber='9600054540',EmployeeDepartment='Management',Address='Chennai,TN'
where name ='Gayathri';

Update empoyee_payroll 
set EmployeePhoneNumber='8715605050',Address='Bareilly,UP'
where name ='Aruna';
