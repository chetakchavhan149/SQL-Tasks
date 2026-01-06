--create table Employee_Details(
--EmployeeID serial,
--FirstName varchar,
--LastName varchar,
--Email varchar,
--PhoneNumber varchar,
--HireDate date,
--Salary decimal,
--DepartmentID int,
--IsActive bool,
--JobTitle varchar
--)


--select * from employee_data where full

--insert into employee_details values(1, 'Rohit', 'Rathod', 'rohitrathod@exmple.com', '987543212', 
--'12/02/2020', '45000', '4', 'yes', 'IT')
--insert into employee_details values(2, 'Prashant', 'Rathod', 'parsharathod@exmple.com', '9875487212', 
--'12/02/2022', '55000', '2', 'yes', 'Software Engineer') , (3, 'Nishant', 'Chavhan', 'nishxhavhan@exmple.com', '887754212', 
--'12/03/2022', '50000', '2', 'no', 'Engineer') , (4, 'Ankit', 'Parde', 'ankuparde@exmple.com', '9279854212', '12/03/2019', '75000', '1', 'yes', 'Data Analyst') , (5, 'Trupti', 'Khandare', 'piukhandare@exmple.com', '9875424982', 
--'12/02/2017', '95000', '2', 'yes', 'HR Analyst')

--update employee_details set deptd = 0 where isactive = 'false'


-- select
--  firstname as name ,
--  lastname as surname
--  from employee_details
--  where salary between 30000 and 50000;

-- select *
-- from employee_details
-- where firstname like 'A%'


-- delete from employee_details
-- where employeeid between 1 and 5;

-- alter table employee_details
-- rename to employee_database

-- alter table employee_database
-- rename column firstname to name 

-- alter table employee_database
-- rename column lastname to surname 

update employee_database
set state = 'india'
where isactive = true;

update employee_database
set state = 'USA'
where isactive = false;










