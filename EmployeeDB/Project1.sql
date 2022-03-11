create database EmployeeDB;

CREATE TABLE departments (
    depart_id serial,
	depart_name varchar(25),
	depart_city varchar(25),
	CONSTRAINT depart_key PRIMARY KEY (depart_id)
);

INSERT INTO departments (depart_name, depart_city)
       VALUES( 'HR', 'Johannesburg'),
	         ( 'IT', 'Cape Town'),
			 ( 'Legal', 'Durban'),
			 ( 'Procurement', 'Polokwane');
			 
SELECT * FROM departments			 
			 
CREATE TABLE roles (
    role_id serial,
	roles varchar(25),
	CONSTRAINT roles_key PRIMARY KEY (role_id)
);

INSERT INTO roles (roles)
VALUES ('Admin'),
       ('Developer'),
	   ('Manager'),
       ('Coordinator');
	   
SELECT * FROM roles

CREATE TABLE salaries (
    salary_id serial,
	salary_pa money,
	CONSTRAINT sal_key PRIMARY KEY (salary_id)
);

INSERT INTO salaries (salary_pa)
VALUES ('100000'),
       ('200000'),
	   ('300000'),
	   ('400000');
	   
SELECT * FROM salaries

drop table salaries

CREATE TABLE overtime_hours (
    overtime_id serial,
	overtime_hours varchar(25),
	CONSTRAINT ovt_key PRIMARY KEY (overtime_id)
);

INSERT INTO overtime_hours (overtime_hours)
VALUES ('1-2hrs'),
       ('3-4hrs'),
	   ('5-6hrs'),
	   ('7-8hrs');

SELECT * FROM overtime_hours

CREATE TABLE employees (
    emp_id serial,
    first_name varchar(25),
	surname varchar(25),
	gender varchar(25),
	address varchar(25),
	email varchar(25),
	depart_id integer,
	role_id integer,
	salary_id integer,
	overtime_id integer,
	CONSTRAINT email UNIQUE (email),
	CONSTRAINT emp_key PRIMARY KEY (emp_id)
);

INSERT INTO employees (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
VALUES('hive', 'styles', 'male', '01 eikepark str', 'hivestyles@gmail.com', 1,1,1,1),
	  ('bug', 'eyes', 'male', '02 helikonpark str', 'buggyboo@icloud.com', 2,2,2,2),
	  ('wabbly', 'dabbly', 'male', '03 noordwyk str', 'wabile@icloud.com', 3,3,3,3),
	  ('peng', 'goseng', 'male', '04 anton hartman str ', 'lamegoseng@gmail.com', 4,4,4,4);
	  
select employees.first_name, employees.surname, employees.gender, employees.address,
employees.email, departments.depart_name, roles.roles, salaries.salary_pa, 
overtime_hours.overtime_hours
from employees left join departments
on employees.depart_id = departments.depart_id
left join roles
on employees.role_id = roles.role_id
left join salaries
on employees.salary_id = salaries.salary_id
left join overtime_hours
on employees.overtime_id = overtime_hours.overtime_id;