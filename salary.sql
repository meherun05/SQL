create table DESIGNATION(
designation_id int identity(1000,1) primary key,
designation_name varchar(255) not null
);

create table DEPARTMENT(
department_id int identity(2000,1) primary key,
department_name varchar(max) not null
);

create table EMPLOYEE(
employee_id int identity(3000,1) primary key,
employee_name varchar(max),
date_of_birth	date,
joining_date date,
designation_id int foreign key references  DESIGNATION(designation_id),
employee_type VARCHAR(MAX),
department_id int foreign key references DEPARTMENT(department_id),
employee_status	INT,
hometown VARCHAR(MAX) NOT NULL,
salary	INT	
);

CREATE TABLE MONTHLY_SALARY (
	
salary_id	INT	IDENTITY(400000, 1)	PRIMARY KEY,
employee_id	INT	FOREIGN KEY REFERENCES	EMPLOYEE(employee_id) NOT NULL,
present_salary	INT	NOT NULL,
salary_month DATE NOT NULL,
transport_allowance	INT	NOT NULL,
provisional_fund INT NOT NULL,
net_salary	INT	NOT NULL

);