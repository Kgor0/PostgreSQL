create database Dating_Site;

CREATE TABLE profession(
prof_id serial,
profession varchar(25),
CONSTRAINT profession UNIQUE (profession),
CONSTRAINT prof_key PRIMARY KEY (prof_id)
);

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
	  ('752', 'Upington', 'Northern Cape'),
	  ('8111', 'Mahikeng', 'North West'),
	  ('8352', 'Potch', 'North West'),
	  ('9671', 'Cape Town', 'Western Cape'),
	  ('9782', 'Stellenbosch', 'Western Cape')
);

CREATE TABLE status_id(
status_id serial,
status varchar
);

CREATE TABLE my_contacts(
contact_id serial,
last_name varchar(25),
first_name varchar(25),
phone varchar,
email varchar(25),
gender varchar(25),
birthday date,
prof_id integer,
postal_code integer,
status_id integer,
CONSTRAINT cont_key PRIMARY KEY (contact_id)
);

CREATE TABLE contact_interest (
contact_id serial,
interest_id serial,
CONSTRAINT cont_int_key PRIMARY KEY (contact_id)
);

CREATE TABLE contact_seeking (
contact_id serial,
seeking_id serial,
CONSTRAINT cont_sek_key PRIMARY KEY (contact_id)
);

CREATE TABLE interests (
interest_id serial,
interest varchar(25),
CONSTRAINT int_key PRIMARY KEY (interest_id)
);

CREATE TABLE seeking (
seeking_id serial,
seeking varchar(25),
CONSTRAINT sek_key PRIMARY KEY (seeking_id)
);

CREATE TABLE dating_site(
contact_id serial,
last_name varchar(25),
first_name varchar(25),
phone integer,
email varchar(25),
gender varchar(25),
birthday integer,
prof_id integer,
postal_code varchar(25),
status_id integer
);