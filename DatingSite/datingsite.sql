create database datingSite;


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


CREATE TABLE status_id(
status_id serial,
status varchar
);

INSERT INTO status_id(status)
VALUES('Single'),
      ('its complicated'),
	  ('divored'),
	  ('open relationship');
	  
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

INSERT INTO my_contacts (contact_id, last_name, first_name, phone, email, gender, birthday, prof_id, postal_code, status_id)
VALUES ('1', 'Modipa', 'Kgoro', '0612345678', 'kgoromodipa@gmail.com', 'male', '2001-09-27', 1, 1, '1'),
      ('2', 'Dyer', 'Zaynah', '0720987654', 'zaydy@gmail.com', 'female', '1998-12-13',2, 18, 3),
      ('3', 'Rees', 'Victor', '0814567890', 'reesV@gmail.com', 'male', '1985-07-05', 3, 2, 4),
      ('4', 'Naylor', 'Sarah-Jay', '0626781234', 'Sjnaylor@icloud.com', 'non-binary', '2001-06-19', 4, 17, '2'),
      ('5', 'Harrison','Pitt', '0723216543', 'hp@gmail.com', 'male', '1992-01-22', 5, 3, 1),
      ('6', 'Aeryn', 'Barrow', '08298765432', 'aaeyn@gmail.com', 'male', '2000-09-17', 6, 16, 1),
      ('7', 'Bush','Jeanette', '0813324567', 'JB@icloud.com', 'female', '1996-03-21', 7, 4, 3),
      ('8', 'Curan', 'Fynn', '0627896542', 'Curran@gmail.com', 'male', '1993-04-10', 8, 15, 2),
      ('9', 'Wallace', 'Roman', '0714359087', 'WallyR@gmail.com', 'male', '1989-05-12', 9, 5, 4),
      ('10', 'Cristie', 'Sarah', '0819086543', 'CrisRah@gmail.com', 'female', '1999-06-14', 10, 14, 1),
      ('11', 'Ho', 'Chan', '0621346578', 'HoChan@icloud.com', 'male', '1994-06-16', 11, 6, 2),
      ('12', 'Riddle', 'Matlida', '0722115678', 'Rid@icloud.com', 'female', '2001-08-18', 12, 13, 1),
      ('13', 'Wiley', 'Jane', '0822693323', 'JaneWiley@gmail.com', 'female', '1988-09-20', 13, 7, 3),
      ('14', 'Patel','Hassan', '0619734521', 'HPatel@gmail.com', 'male', '2002-10-22', 14, 12, 1),
      ('15', 'Hollis', 'Jamie', '0724589076', 'Hallie@gmail.com', 'male', '2001-11-24', 15, 8, 2);

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

CREATE TABLE interests (
interest_id serial,
interest varchar(25),
CONSTRAINT int_key PRIMARY KEY (interest_id)
);

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
	  

CREATE TABLE seeking (
seeking_id serial,
seeking varchar(25),
CONSTRAINT sek_key PRIMARY KEY (seeking_id)
);

INSERT INTO seeking(seeking)
VALUES('straight'),
      ('pansexaul'),
	  ('gay'),
	  ('bisexual'),
      ('lesbian');

SELECT * FROM seeking

select my_contacts.last_name, my_contacts.first_name, my_contacts.phone, my_contacts.email, my_contacts.gender,
my_contacts.birthday, profession.profession, postal_code.postal_code, postal_code.city, postal_code.province, 
status_id.status_id, interests_id.interests_id, seeking_id.seeking_id
from my_contacts
left join profession
on my_contacts.prof_id = profession.prof_id
left join postal_code 
on my_contacts.postal_code = postal_code.postal_code 
left join status_id
on my_contacts.status_id = status_id.status_id 
left join interests 
on my_contacts.interests_id = interests.interest_id
left join seeking 
on my_contacts.seeking_id = seeking.seeking_id;