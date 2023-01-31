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
