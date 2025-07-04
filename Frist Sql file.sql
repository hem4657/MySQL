create database Student11;
use Student11;
create table student(
RollNumber INT,
SName VARCHAR(20),
SDateofBirth DATE,
GUID CHAR(12),
PRIMARY KEY (RollNumber)
);
describe student;


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

select * from student
elect  sSName, SDateofBirth




