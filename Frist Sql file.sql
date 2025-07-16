create database Student11;
use Student11;
create table student(
RollNumber INT,
SName VARCHAR(20),
SDateofBirth DATE,
GUID CHAR(12),
PRIMARY KEY (RollNumber)
);
describe student;student


use Student11;
create table Guardian(
guid char(12),
gName VARCHAR(20),
gPhone CHAR(10),
GAddress varchar(30),
PRIMARY KEY (guid)
);
describe Guardian;

use Student11;
drop table Attendance;
create table Attendance(
AttendanceDate DATE,
RollNumber INT,
AttendanceStatus CHAR(1),
GAddres varchar(15)
);
describe Attendance;
use Student11;
INSERT INTO  Attendance
VALUES('2004-07-25',"101","1",'gopalpura xyl');

SELECT gName From Guardian;
select * From Guardian;
select gPhone from Guardian;

use studentTable;
create table studentTable(
RollNumber INT,
SName VARCHAR(20),
SDateofBirth DATE,
marks Int ,
GUID CHAR(12),
PRIMARY KEY (RollNumber)
);
describe studentTable;

select * from Guardian;
select gName, GAddress
from Guardian
where gName = "hemant";

create database office;
use office;
create table EMPLOYEEs(
EmpNo int primary key,
Ename varchar(50),
Salary int,
Bonus int,
DeptId varchar(10)
);

insert into EMPLOYEEs (EmpNo, Ename, Salary, Bonus, DeptId)
values 
(101, 'Aaliya', 10000, 234, 'D02'),
(102, 'Kritika', 60000, 123, 'D01'),
(103, 'Shabbir', 45000, 566, 'D04'),
(104, 'Gurpreet', 19000, 565, 'D03'),
(105, 'Joseph', 34000, 875, 'D02'),
(106, 'Sanya', 48000, 695, 'D01'),
(107, 'Vergese', 15000, NULL, 'D05'),
(108, 'Nachaobi', 29000, NULL, 'D04'),
(109, 'Daribha', 42000, NULL, 'D05');

select * from EMPLOYEEs;
select Ename as Ename, Salary*12 as 'show anull salary' from EMPLOYEEs;

select distinct DeptId from EMPLOYEEs;
select distinct Salary

from EMPLOYEEs
where DeptId= 'D01';
select * from EMPLOYEEs

where Salary > 5000 and DeptId = 'D04';
select * from EMPLOYEEs

where not Ename = 'Aaliya';
select Ename, DeptId

from EMPLOYEEs
where Salary>= 20000 or Salary<= 50000;
select Ename, DeptId

from EMPLOYEEs
where Salary between 20000 and 50000;

select * from C
where Salary > 5000 or DeptId;

select * from EMPLOYEEs
where DeptId = 'D01' or DeptId = 'D02' or DeptId= 'D04';select * from EMPLOYEEs;

select * from EMPLOYEEs
where DeptId in ('D01',  'D02', 'D04');

select * From EMPLOYEEs
where DeptId not in('Do1', 'D02');

select * from EMPLOYEEs
order by DeptId;
select * from EMPLOYEEs
order by Salary DESC;
select * from EMPLOYEEs order by Salary, Bonus; 

select * from EMPLOYEEs order by Salary DESC;
select * from EMPLOYEEs

where Bonus is null;

select Ename from EMPLOYEEs
where Bonus is not null
and DeptId = 'D01';

select * from employees
where ename like 'k%';

select * from employees
where ename like '%a'
and salary > 45000;

select * from employees
where ename like '_anya';

select Ename from EMPLOYEEs
where ename like '%se%';

select Ename from EMPLOYEEs
where ename like '_a%';

INSERT INTO STUDENT (RollNumber, SName, SDateofBirth, GUID)
VALUES 
(2, 'Daisy Bhutin', '2002-02-28', '111111111111'),
(3, 'Taleem Shah', '2002-02-28',' 222222222222'),
(4, 'John Dsouza', '2003-08-18', '333333333333'),
(5, 'Ali Shah', '2002-07-05', '101010101010'),
(6, 'Manika P.', '2002-03-10', 466444444666);
select * from student;

CREATE DATABASE CarShowroom;
USE CarShowroom;

INSERT INTO EMPLOYEE (EmpID, EmpName, DOB, DOJ, Designation, Salary) VALUES
('E001', 'Rushil', '1994-07-10', '2017-12-12', 'Salesman', 25550),
('E002', 'Sanjay', '1990-03-12', '2016-06-05', 'Salesman', 33100),
('E003', 'Zohar', '1975-08-30', '1999-01-01', 'Peon', 20000),
('E004', 'Arpit', '1989-06-06', '2010-12-02', 'Salesman', 39100),
('E006', 'Sanjucta', '1985-11-03', '2012-07-01', 'Receptionist', 27350),
('E007', 'Mayank', '1993-04-03', '2017-01-01', 'Salesman', 27352),
('E010', 'Rajkumar', '1987-02-26', '2013-10-23', 'Salesman', 31111);

INSERT INTO SALE (InvoiceNo, CarId, CustId, SaleDate, PaymentMode, EmpID, SalePrice) VALUES
('I00001', 'D001', 'C0001', '2019-01-24', 'Credit Card', 'E004', 613248.00),
('I00002', 'S001', 'C0002', '2018-12-12', 'Online', 'E001', 590321.00),
('I00003', 'S002', 'C0004', '2019-01-25', 'Cheque', 'E010', 604000.00),
('I00004', 'D002', 'C0001', '2018-10-15', 'Bank Finance', 'E007', 659982.00),
('I00005', 'E001', 'C0003', '2018-12-20', 'Credit Card', 'E002', 369310.00),
('I00006', 'S002', 'C0002', '2019-01-30', 'Bank Finance', 'E007', 620214.00);

INSERT INTO CUSTOMER (CustId, CustName, CustAdd, Phone, Email) VALUES
('C0001', 'Amit Saha', 'L-10, Pitampura', 4564587852, 'amitsaha20@gmail.com'),
('C0002', 'Rehnuma', 'J-12, SAKET', 5527688761, 'rehnuma@hotmail.com'),
('C0003', 'Charvi Nayyar', '10/9, FF, Rohini', 6811635425, 'charvi123@yahoo.com'),
('C0004', 'Gurpreet', 'A-10/2, SF, Mayur Vihar', 3511056125, 'gur_singh@yahoo.com');

INSERT INTO INVENTORY (CarId, CarName, Price, Model, YearManufacture, FuelType) VALUES
('D001', 'Dzire', 582613.00, 'LXI', 2017, 'Petrol'),
('D002', 'Dzire', 673112.00, 'VXI', 2018, 'Petrol'),
('B001', 'Baleno', 567031.00, 'Sigma1.2', 2019, 'Petrol'),
('B002', 'Baleno', 647858.00, 'Delta1.2', 2018, 'Petrol'),
('E001', 'EECO', 355205.00, '5 STR STD', 2017, 'CNG'),
('E002', 'EECO', 654914.00, 'CARE', 2018, 'CNG'),
('S001', 'SWIFT', 514000.00, 'LXI', 2017, 'Petrol'),
('S002', 'SWIFT', 614000.00, 'VXI', 2018, 'Petrol');

CREATE TABLE INVENTORY (
    CarID VARCHAR(10),
    CarName VARCHAR(50),
    Price DECIMAL(10, 2),
    Model VARCHAR(20),
    YearManufacture INT,
    FuelType VARCHAR(20)
);

CREATE TABLE CUSTOMER (
    CustID VARCHAR(10),
    CustName VARCHAR(50),
    CustAdd VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(50)
);

CREATE TABLE SALE (
    InvoiceNo VARCHAR(10),
    CarID VARCHAR(10),
    CustID VARCHAR(10),
    SaleDate DATE,
    PaymentMode VARCHAR(20),
    EmpID VARCHAR(10),
    SalePrice DECIMAL(10, 2)
);

CREATE TABLE EMPLOYEE (
    EmpID VARCHAR(10),
    EmpName VARCHAR(50),
    DOB DATE,
    DOJ DATE,
    Designation VARCHAR(30),
    Salary INT
);

Select round(12/100*price,1) from inventory;

alter table inventory add(finalprice numeric(10,1));
update inventory 
set finalprice= price+round(price*12/100,1);

select carid, finalprice, round(finalprice-
mod(finalprice,1000)/10,0) "emi" ,
mod(finalprice,10000) "remaning amount" from inventory;

alter table sale add(commission numeric(7,2));
update sale set
commission= 12/100*saleprice;
select * from sale;

select*from sale where commission > 73000;
select invoiceno, saleprice, 
round(commission,0) from sale;
select * from inventory;

select lower(custname), upper(email)
from customer;

select length(email),
left(email, instr(email, "@")-1)
from customer;

select mid(phone,3,4) from customer
where custadd like '%rohini%';

select trim('.com' from email)
from customer;

select * from customer
where email like '%yahoo%';

select day(doj), month(doj), year(doj)
from employee;

select day(doj), monthname(doj), year(doj)
from employee
where dayname(doj)!='sunday';
