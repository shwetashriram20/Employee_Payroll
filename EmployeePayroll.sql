--UC-3 Insert values in Table
Insert into empoyee_payroll(name,salary,startDate) values
('shweta',20000,'2023-01-12'),
('Magesh',25000,'2023-01-18'),
('Gayathri',10000,'2022-05-13'),
('Aruna',30000,'2022-08-19');
--UC-4 Retrieve All data--
select * from empoyee_payroll;
------- UC 5: Select Query using Cast() an GetDate() -------
select salary from empoyee_payroll where name='Magesh';
select salary from empoyee_payroll where startDate BETWEEN Cast('2018-01-01' as Date) and GetDate();
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

