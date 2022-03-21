create database advancedqueries

CREATE TABLE profession(
prof_id bigserial,
profession varchar(25),
CONSTRAINT profession_unique UNIQUE (profession),
CONSTRAINT profession_key PRIMARY KEY (prof_id)
);

select * from profession;

INSERT INTO profession(profession)
VALUES('Baker'),
      ('Engineer'),
	  ('IT Speacial0ist'),
	  ('Mechanic'),
	  ('Plumber'),
	  ('Lawyer'),
	  ('Dancer'),
	  ('Chef'),
	  ('Designer'),
	  ('Model'),
	  ('Accountant'),
	  ('Footballer'),
	  ('Singer'),
	  ('PA'),
	  ('Driver');

CREATE TABLE postal_code (
postal_code varchar(4),
city varchar(25),
province varchar(25),
CONSTRAINT poscod_key PRIMARY KEY (postal_code)
);

INSERT INTO postal_code (postal_code, city, province)
VALUES('1751', 'Johannesburg', 'Gauteng'),
      ('1323', 'Pretoria', 'Gauteng'),
	  ('2451', 'Bhisho', 'Eastern Cape'),
	  ('2662', 'Gqeberha', 'Eastern Cape'),
	  ('3151', 'Bloemfontein', 'Free State'),
	  ('3002', 'Parys', 'Free State'),
	  ('4741', 'Pietermaritzburg', 'KwaZulu-Natal'),
	  ('4752', 'Durban', 'KwaZulu-Natal'),
	  ('5231', 'Polokwane', 'Limpopo'),
	  ('5852', 'Modimolle', 'Limpopo'),
	  ('6151', 'Mbombela', 'Mpumalanga'),
	  ('6972', 'Lydenburg', 'Mpumalanga'),
	  ('7091', 'Kimberley', 'Northern Cape'),
	  ('7521', 'Upington', 'Northern Cape'),
	  ('8111', 'Mahikeng', 'North West'),
	  ('8352', 'Potch', 'North West'),
	  ('9671', 'Cape Town', 'Western Cape'),
	  ('9782', 'Stellenbosch', 'Western Cape');
	  
select * from postal_code


CREATE TABLE status_id(
status_id serial,
status varchar
);

INSERT INTO status_id(status)
VALUES('Single'),
      ('its complicated'),
	  ('divored'),
	  ('open relationship');
	  
drop table status_id
	  
select * from status_id

CREATE TABLE my_contacts(
contact_id serial,
last_name varchar(25),
first_name varchar(25),
phone varchar,
email varchar(25),
gender varchar(25),
birthday date,
interests_id serial,
seeking_id serial,
prof_id bigserial references profession (prof_id),
postal_code varchar(25),
status_id integer,
CONSTRAINT cont_key PRIMARY KEY (contact_id)
);

INSERT INTO my_contacts (contact_id, last_name, first_name, phone, email, gender, birthday, prof_id, postal_code, status_id, interests_id)
VALUES ('1', 'Modipa', 'Kgoro', '0612345678', 'kgoromodipa@gmail.com', 'male', '2001-09-27', 1, 1, 1, 1),
      ('2', 'Dyer', 'Zaynah', '0720987654', 'zaydy@gmail.com', 'female', '1998-12-13',2, 18, 3, 3),
      ('3', 'Rees', 'Victor', '0814567890', 'reesV@gmail.com', 'male', '1985-07-05', 3, 2, 4, 5),
      ('4', 'Naylor', 'Sarah-Jay', '0626781234', 'Sjnaylor@icloud.com', 'non-binary', '2001-06-19', 4, 17, 2, 7),
      ('5', 'Harrison','Pitt', '0723216543', 'hp@gmail.com', 'male', '1992-01-22', 5, 3, 1, 9),
      ('6', 'Aeryn', 'Barrow', '08298765432', 'aaeyn@gmail.com', 'male', '2000-09-17', 6, 16, 1, 11),
      ('7', 'Bush','Jeanette', '0813324567', 'JB@icloud.com', 'female', '1996-03-21', 7, 4, 3, 13),
      ('8', 'Curan', 'Fynn', '0627896542', 'Curran@gmail.com', 'male', '1993-04-10', 8, 15, 2, 15),
      ('9', 'Wallace', 'Roman', '0714359087', 'WallyR@gmail.com', 'male', '1989-05-12', 9, 5, 4, 2),
      ('10', 'Cristie', 'Sarah', '0819086543', 'CrisRah@gmail.com', 'female', '1999-06-14', 10, 14, 1, 4),
      ('11', 'Ho', 'Chan', '0621346578', 'HoChan@icloud.com', 'male', '1994-06-16', 11, 6, 2, 6),
      ('12', 'Riddle', 'Matlida', '0722115678', 'Rid@icloud.com', 'female', '2001-08-18', 12, 13, 1, 8),
      ('13', 'Wiley', 'Jane', '0822693323', 'JaneWiley@gmail.com', 'female', '1988-09-20', 13, 7, 3, 10),
      ('14', 'Patel','Hassan', '0619734521', 'HPatel@gmail.com', 'male', '2002-10-22', 14, 12, 1, 12),
      ('15', 'Hollis', 'Jamie', '0724589076', 'Hallie@gmail.com', 'male', '2001-11-24', 15, 8, 2, 14);

drop table my_contacts

select * from my_contacts

CREATE TABLE contact_interest (
contact_id serial,
interest_id serial,
CONSTRAINT cont_int_key PRIMARY KEY (contact_id)
);
INSERT INTO contact_interest (contact_id, interest_id)
VALUES('1', '6'),
      ('2', '3'),
	  ('3', '12'),
	  ('4', '7'),
	  ('5', '11'),
	  ('6', '2'),
	  ('7', '10'),
	  ('8', '14'),
	  ('9', '5'),
	  ('10', '8'),
	  ('11', '15'),
	  ('12', '9'),
	  ('13', '4'),
	  ('14', '1'),
	  ('15', '13');
	  
select * from contact_interest
	  
CREATE TABLE contact_seeking (
contact_id serial,
seeking_id serial,
CONSTRAINT cont_sek_key PRIMARY KEY (contact_id)
);

INSERT INTO contact_seeking (contact_id, seeking_id)
VALUES('1', '1'),
      ('2', '3'),
	  ('3', '5'),
	  ('4', '2'),
	  ('5', '4'),
	  ('6', '5'),
	  ('7', '1'),
	  ('8', '3'),
	  ('9', '1'),
	  ('10', '4'),
	  ('11', '4'),
	  ('12', '1'),
	  ('13', '2'),
	  ('14', '5'),
	  ('15', '3');
	  
select * from contact_seeking

CREATE TABLE interests (
interest_id serial,
interest varchar(25),
CONSTRAINT interest_key PRIMARY KEY (interest_id)
);

drop table interests

INSERT INTO interests(interest)
VALUES('sports'),
      ('movies'),
	  ('binging'),
	  ('baking'),
	  ('marthons'),
	  ('shopping'),
	  ('wine tasting'),
	  ('gaming'),
	  ('mountain climbing'),
	  ('racing'),
	  ('series'),
	  ('reading'),
	  ('coding'),
	  ('gardening'),
	  ('gyming');
	  
drop table interests
	  
select * from interests
	  

CREATE TABLE seeking (
seeking_id serial,
seeking varchar(25),
CONSTRAINT sek_key PRIMARY KEY (seeking_id)
);


select * from seeking


INSERT INTO seeking(seeking)
VALUES('straight'),
      ('pansexaul'),
	  ('gay'),
	  ('bisexual'),
      ('lesbian');
	  
select my_contacts.last_name, my_contacts.first_name, my_contacts.phone, my_contacts.email, my_contacts.gender,
my_contacts.birthday, profession.profession, postal_code.postal_code, postal_code.city, postal_code.province, 
status_id.status_id, interests.interests_id, seeking.seeking_id
from my_contacts
left join profession
on my_contacts.prof_id = profession.prof_id
left join postal_code 
on my_contacts.postal_code = postal_code.postal_code 
left join status_id
on my_contacts.status_id = status_id.status_id 
left join interests
on my_contacts.interests_id = interests.interests_id
left join seeking 
on my_contacts.seeking_id = seeking.seeking_id;

--1--	  
SELECT contact_id, COUNT(contact_id)
FROM my_contacts
GROUP BY contact_id
HAVING COUNT(contact_id) > 1
ORDER BY contact_id;
--2--
DELETE FROM my_contacts
WHERE contact_id IN
(SELECT contact_id
FROM
(SELECT contact_id,
ROW_NUMBER() OVER(PARTITION BY contact_id
ORDER BY contact_id) AS row_num
FROM my_contacts) t
WHERE t.row_num > 1);

--5--
WITH RECURSIVE cohort AS (
SELECT contact_id, prof_id, concat(first_name, ' ', last_name) AS full_name
FROM my_contacts
WHERE prof_id = 2
UNION
SELECT e.contact_id, e.prof_id, e.first_name
FROM my_contacts e
INNER JOIN cohort s ON s.contact_id = e.prof_id)
SELECT * FROM cohort;

--6--
SELECT * 
FROM my_contacts
ORDER BY contact_id
FETCH FIRST ROW ONLY;

--7--

SELECT my_contacts.contact_id, my_contacts.first_name, profession.profession
FROM my_contacts INNER JOIN profession 
ON my_contacts.prof_id = profession.prof_id
WHERE profession.prof_id = 3
ORDER BY my_contacts.contact_id;

--8--


--9--

SELECT first_name, city
FROM my_contacts e FULL OUTER JOIN postal_code d 
ON d.postal_code = e.postal_code;

--10--
SELECT e.postal_code, city
FROM postal_code e FULL OUTER JOIN my_contacts d 
ON e.postal_code = d.postal_code
WHERE d.postal_code IS NULL;

--11--
SELECT
postal_code.postal_code,
postal_code.city,
postal_code.province,
my_contacts.postal_code
FROM postal_code LEFT JOIN my_contacts 
ON postal_code.postal_code = my_contacts.postal_code;

--12--
SELECT * FROM profession CROSS JOIN my_contacts;

--13--
SELECT * FROM my_contacts NATURAL JOIN profession;

--14--
SELECT first_name FROM my_contacts
UNION ALL
SELECT postal_code FROM postal_code
ORDER BY first_name ASC;

--15--
SELECT contact_id, first_name
INTO my_contacts_newTable
FROM my_contacts
WHERE gender = 'male';

--16--


--17--
SELECT contact_id, status_id
FROM my_contacts
WHERE status_id > (
SELECT AVG(status_id) FROM my_contacts
);

--18--
SELECT relname, relpages 
FROM pg_class 
ORDER BY relpages ASC limit 1;

--19--
SELECT DISTINCT                -- removed 'ON' - query does not work with it.
contact_id, status_id
FROM my_contacts
WHERE status_id > (
SELECT AVG (status_id) FROM my_contacts);

--20---
SELECT first_name, interest, count(*)
FROM my_contacts LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT join interests
ON interests.interest_id = contact_interest.interest_id
GROUP BY ROLLUP(first_name, interest)
ORDER BY first_name

--21--
SELECT distinct first_name, count(interest)
FROM my_contacts LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT join interests
ON interests.interest_id = contact_interest.interest_id
GROUP BY CUBE(first_name, interest)
ORDER BY first_name

--22--
CREATE INDEX index_gender ON my_contacts (gender);

--23--
SELECT distinct first_name, count(interest)
FROM my_contacts LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT join interests
ON interests.interest_id = contact_interest.interest_id
GROUP BY CUBE(first_name, interest)
HAVING count(interest) > 3 
ORDER BY first_name

--24--
CREATE 
