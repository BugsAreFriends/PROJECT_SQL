create schema company;

use company;
create table employee(
empid int primary key,
fullname varchar(20),
emp_type varchar(20),
salary int(20),
place varchar(20),
projects varchar(20),
year_joined varchar(20)
);

insert into employee values(312 ,"tharun","staff",12000,"toronto","p12","2023"),
(986 ,"bargav","staff",20000,"india","p5","2016"),
(657 ,"ravi","manager",55000,"windies","p6","2018"),
(817 ,"aswant","staff",25000,"usa","p3","2023"),
(743 ,"harish","staff",14000,"berlin","p8","2022"),
(232 ,"ashniwi","manager",51000,"tokya","p2","2021"),
(117 ,"karthi","manager",60000,"german","p1","2023"),
(987 ,"tharun","staff",12000,"toronto","p12","2023");


select *from employee;

/* 1) sql querry to fetch the empid and full name of the employees under the manager with id -986 */

select empid,fullname
from employee
where empid=986;


/* 2) find the employee id whose salary in the range of 9000 and 15000 */

select empid 
from employee
where salary between 9000 and 15000;

/* 3)  employee who live in toranto and under the manager with id -312 */

select fullname
from employee
where place="toronto" and empid = 312;


/*4)employees who live in california or employee id 321 */

select fullname
from employee
where place="california" or empid= 312 ;


/* 5) employees who work on projects other than p1 */

select  fullname 
from employee
where projects not in ("p1");

/*6) employee names start with two charachter followed by text 'hn' ends with any charachters */

select fullname
from employee
where fullname like "__hn%";


/* 7) employee details who joined in the year of 2020 */

select * from employee
where year_joined = 2020;

/* 8) employee name who starts with 'a' and ends with 't' */

select fullname
from employee
where fullname like  "a%t";

/* 9) employee name which have the letters with 'rt' */

select fullname 
from employee
where fullname like "%rt%";


/* 10) employee name who have more 50000 salary from country 'uk' */

select fullname
from employee
where salary > 50000 and place="uk" ;





