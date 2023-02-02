------- UC 9: Rename Salary to Basic Pay and Add Deduction,Taxable pay, Income Pay , Netpay -------

EXEC sp_RENAME 'empoyee_payroll.Basic Pay' , 'BasicPay', 'COLUMN'
Alter table empoyee_payroll
add Deduction float,TaxablePay float, IncomeTax float,NetPay float;
Update empoyee_payroll 
set Deduction=1000
where Gender='F';
Update empoyee_payroll 
set Deduction=2000
where Gender='M';
update empoyee_payroll
set NetPay=(BasicPay - Deduction)
update empoyee_payroll
set TaxablePay=0,IncomeTax=0
select * from empoyee_payroll;
------- UC 10: Adding another Value for Rujula in Editing Department -------

Insert into empoyee_Payroll(name,BasicPay,StartDate,Address,EmployeePhoneNumber,EmployeeDepartment) values ('Gayathri',250000,'2020-04-20','Chennai,TN','9600054540','Editing');
select * from empoyee_payroll;
