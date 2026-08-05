create table client 
(client_id int auto_increment primary key,
 client_name varchar(150) not null,
 location varchar(100) not null);

create table contract 
(contract_id int auto_increment primary key,
 client_id int not null,
 contract_type varchar(100) not null,
 contract_start date null,
 contract_end date null,
 contract_value decimal(10,2) null,
 status varchar(50) null,
 foreign key (client_id) references client(client_id));

create table site 
(site_id int auto_increment primary key,
 contract_id int not null,
 site_name varchar(150) not null,
 location varchar(100) not null,
 site_size varchar(20) null,
 equipment_count int null,
 vehicle_count int null,
 status varchar(20) null,
 foreign key (contract_id) references contract(contract_id));

create table guard 
(guard_id int auto_increment primary key,
 guard_name varchar(150) not null,
 gender varchar(10) null,
 hire_date date null,
 employment_status varchar(20) null,
 skill_level varchar(20) null);

rename  table guard to employee

alter table employee 
rename column guard_id to employee_id,
rename column guard_name to emloyee_name;


create table guard_assignment 
(assignment_id int auto_increment primary key,
 site_id int not null,
 guard_id int not null,
 shift_type varchar(50) null,
 assignment_date date null,
 foreign key (site_id) references site(site_id),
 foreign key (guard_id) references guard(guard_id));

rename table guard_assignment to employeee_assignment

alter table employeee_assignment 
rename column guard_id to employee_id;


create table attendance 
(attendance_id int auto_increment primary key,
 assignment_id int not null,
 attendance_status varchar(20) not null,
 foreign key (assignment_id) references guard_assignment(assignment_id));

create table incident 
(incident_id int auto_increment primary key,
 site_id int not null,
 guard_id int not null,
 incident_datetime datetime null,
 incident_type varchar(100) null,
 severity varchar(20) null,
 response_time_minutes int null,
 status varchar(20) null,
 foreign key (site_id) references site(site_id),
 foreign key (guard_id) references guard(guard_id));

alter table incident  
rename column guard_id to employee_id;

describe employee; 
alter table employee 
rename column emloyee_name to employee_name;

show variables like 'local_infile';
set global local_infile = 1;

load data local infile 'c:/users/samuel/documents/employee_df.csv'
into table employee
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(employee_id,
 employee_name,
 gender,
 hire_date,
 employment_status,
 skill_level);

SELECT *
FROM employee;


describe site;
alter table site 
drop column equipment_count,
drop column vehicle_count;


set foreign_key_checks = 0;


load data local infile 'c:/users/samuel/documents/ssis_sites.csv'
into table site
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(site_id, contract_id, site_name, location, site_size, status);

set foreign_key_checks = 1;

select * 
from site;

select distinct site_name
from site;

select distinct location
from site;

update site
set location = trim(regexp_replace(substring_index(location, ',', 1), '^0\\s+', ''));

update site
set location = replace(replace(replace(replace(replace(replace(replace(replace(
    location,
    ' ST', ' St'),
    ' AVE', ' Ave'),
    ' RD', ' Rd'),
    ' PKY', ' Pkwy'),
    ' PL', ' Pl'),
    ' TER', ' Ter'),
    ' SQ', ' Sq'),
    ' CTR', ' Center');

update site
set site_name = concat('Intersection of ', location)
where location like '%&%';


update site
set site_name = concat(location, ' Site')
where location not like '%&%';

select site_id, site_name, location 
from site 
limit 10;

describe incident;

select *
from incident i ;


describe client;

select *
from client c ;

select distinct client_name
from client c ;

update client
set location = trim(regexp_replace(substring_index(location, ',', 1), '^0\\s+', ''));

update client
set location = replace(replace(replace(replace(replace(replace(replace(replace(
    location,
    ' ST', ' St'),
    ' AVE', ' Ave'),
    ' RD', ' Rd'),
    ' PKY', ' Pkwy'),
    ' PL', ' Pl'),
    ' TER', ' Ter'),
    ' SQ', ' Sq'),
    ' CTR', ' Center');

update client
set client_name = concat('Intersection of ', location)
where location like '%&%';


update client
set client_name = concat(location, ' Site')
where location not like '%&%';

describe attendance;
describe employee_assignment;

select *
from attendance a ;

select *
from employee_assignment


describe contract;

select *
from contract c ;


show tables;
SELECT *
FROM employee;
SELECT distinct site_name 
FROM site;

SELECT * 
FROM attendance;

SELECT Distinct location 
FROM client;


SELECT * 
FROM contract;
SELECT *
FROM employee_assignment;
SELECT * 
FROM incident;


