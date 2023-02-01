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
select salary from empoyee_payroll where startDate BETWEEN Cast('2018-01-01' as Date) and GetDate();
