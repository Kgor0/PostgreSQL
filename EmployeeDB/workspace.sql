TRY IT YOURSELF

create database try_it_yourself;

CREATE TABLE animals (
   id bigserial,
   animal_name varchar(25),
   animal_type varchar(50),
   age numeric,
   arrival_date date,
   food varchar(50)
);

INSERT INTO animals (animal_type, animal_name, arrival_date, age, food)
VALUES ('Mammals', 'Lion', '2018-09-27', 5, 'beef'),
        ('Birds', 'Eagle', '2020-06-11', 12, 'rabbit'),
		('Fish', 'Shark', '2011-10-18', 9, 'fish'),
		('Reptiles', 'Crocodile', '2015-03-06', 27, 'chicken');
		
select * from animals;
		
create database analysis;

 CREATE TABLE teachers (
  id bigserial,
  first_name varchar(25),
 last_name varchar(50),
 school varchar(50),
  hire_date date,
  salary numeric
 );
 
 INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
 VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
 ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
 ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
 ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
 ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
 ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
 
SELECT first_name, last_name 
FROM teachers
ORDER BY last_name ASC;

SELECT first_name
FROM teachers
WHERE first_name LIKE 'S%' AND salary > 40000;

SELECT first_name, last_name
FROM teachers 
ORDER BY hire_date ASC
WHERE hire_date >= '2010-10-22';






CREATE TABLE actor (
id integer,
 movie text,
 actor text
 );

SELECT * FROM actor

INSERT INTO actor (actor, movie)
VALUES ('Tom Cuise', 'Mission Impossible')

CREATE TABLE creatures(
id bigserial,
creature_name varchar(25),
age numeric,
	food varchar(25),
	arrival_date date
);

INSERT INTO creatures(creature_name, age, food, arrival_date)
VALUES('Lion', 7, 'Beef', '2015-06-18'),
      ('Elephant', 3, 'Fruits', '2019-01-01');
	  
SELECT * FROM creatures
SELECT age 
FROM creatures

SELECT creature_name, food
FROM creatures
