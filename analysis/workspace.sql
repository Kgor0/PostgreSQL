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
 
  COPY teachers TO 'C:\Users\modip\analysis\teachers.txt' WITH (FORMAT CSV, HEADER, DELIMITER '|');
 
 select * from teachers;
 
 select first_name, last_name, school from teachers;
 
 select DISTINCT school
 from teachers;
 
 SELECT DISTINCT school, salary
FROM teachers;

SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;

SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';
 
 SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';

SELECT school
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

SELECT first_name, last_name, hire_date
FROM teachers
WHERE hire_date < '2000-01-01';
 
 SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

SELECT *
FROM teachers
u WHERE school = 'Myers Middle School'
 AND salary < 40000;
 
SELECT *
FROM teachers
v WHERE last_name = 'Cole'
 OR last_name = 'Bush';
 
SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND (salary BETWEEN 38000 AND 40000);

SELECT column_names
FROM table_name
WHERE criteria
ORDER BY column_names;

create database try_it_yourself;

CREATE TABLE char_data_types (
  varchar_column varchar(10),
 char_column char(10),
 text_column text
);

INSERT INTO char_data_types
VALUES
 ('abc', 'abc', 'abc'),
 ('defghi', 'defghi', 'defghi');
 
 COPY char_data_types TO 'C:\Users\modip\analysis\typetest.txt' WITH (FORMAT CSV, HEADER, DELIMITER '|');
 
 CREATE TABLE number_data_types (
  numeric_column numeric(20,5),
 real_column real,
 double_column double precision
);
 INSERT INTO number_data_types
VALUES
 (.7, .7, .7),
 (2.13579, 2.13579, 2.13579),
 (2.1357987654, 2.1357987654, 2.1357987654);
SELECT * FROM number_data_types;


CREATE TABLE us_counties_2010 (
    geo_name varchar(90),                    -- Name of the geography
    state_us_abbreviation varchar(2),        -- State/U.S. abbreviation
    summary_level varchar(3),                -- Summary Level
    region smallint,                         -- Region
    division smallint,                       -- Division
    state_fips varchar(2),                   -- State FIPS code
    county_fips varchar(3),                  -- County code
    area_land bigint,                        -- Area (Land) in square meters
    area_water bigint,                        -- Area (Water) in square meters
    population_count_100_percent integer,    -- Population count (100%)
    housing_unit_count_100_percent integer,  -- Housing Unit count (100%)
    internal_point_lat numeric(10,7),        -- Internal point (latitude)
    internal_point_lon numeric(10,7),        -- Internal point (longitude)

    -- This section is referred to as P1. Race:
    p0010001 integer,   -- Total population
    p0010002 integer,   -- Population of one race:
    p0010003 integer,       -- White Alone
    p0010004 integer,       -- Black or African American alone
    p0010005 integer,       -- American Indian and Alaska Native alone
    p0010006 integer,       -- Asian alone
    p0010007 integer,       -- Native Hawaiian and Other Pacific Islander alone
    p0010008 integer,       -- Some Other Race alone
    p0010009 integer,   -- Population of two or more races
    p0010010 integer,   -- Population of two races:
    p0010011 integer,       -- White; Black or African American
    p0010012 integer,       -- White; American Indian and Alaska Native
    p0010013 integer,       -- White; Asian
    p0010014 integer,       -- White; Native Hawaiian and Other Pacific Islander
    p0010015 integer,       -- White; Some Other Race
    p0010016 integer,       -- Black or African American; American Indian and Alaska Native
    p0010017 integer,       -- Black or African American; Asian
    p0010018 integer,       -- Black or African American; Native Hawaiian and Other Pacific Islander
    p0010019 integer,       -- Black or African American; Some Other Race
    p0010020 integer,       -- American Indian and Alaska Native; Asian
    p0010021 integer,       -- American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander
    p0010022 integer,       -- American Indian and Alaska Native; Some Other Race
    p0010023 integer,       -- Asian; Native Hawaiian and Other Pacific Islander
    p0010024 integer,       -- Asian; Some Other Race
    p0010025 integer,       -- Native Hawaiian and Other Pacific Islander; Some Other Race
    p0010026 integer,   -- Population of three races
    p0010047 integer,   -- Population of four races
    p0010063 integer,   -- Population of five races
    p0010070 integer,   -- Population of six races

    -- This section is referred to as P2. HISPANIC OR LATINO, AND NOT HISPANIC OR LATINO BY RACE
    p0020001 integer,   -- Total
    p0020002 integer,   -- Hispanic or Latino
    p0020003 integer,   -- Not Hispanic or Latino:
    p0020004 integer,   -- Population of one race:
    p0020005 integer,       -- White Alone
    p0020006 integer,       -- Black or African American alone
    p0020007 integer,       -- American Indian and Alaska Native alone
    p0020008 integer,       -- Asian alone
    p0020009 integer,       -- Native Hawaiian and Other Pacific Islander alone
    p0020010 integer,       -- Some Other Race alone
    p0020011 integer,   -- Two or More Races
    p0020012 integer,   -- Population of two races
    p0020028 integer,   -- Population of three races
    p0020049 integer,   -- Population of four races
    p0020065 integer,   -- Population of five races
    p0020072 integer,   -- Population of six races

    -- This section is referred to as P3. RACE FOR THE POPULATION 18 YEARS AND OVER
    p0030001 integer,   -- Total
    p0030002 integer,   -- Population of one race:
    p0030003 integer,       -- White alone
    p0030004 integer,       -- Black or African American alone
    p0030005 integer,       -- American Indian and Alaska Native alone
    p0030006 integer,       -- Asian alone
    p0030007 integer,       -- Native Hawaiian and Other Pacific Islander alone
    p0030008 integer,       -- Some Other Race alone
    p0030009 integer,   -- Two or More Races
    p0030010 integer,   -- Population of two races
    p0030026 integer,   -- Population of three races
    p0030047 integer,   -- Population of four races
    p0030063 integer,   -- Population of five races
    p0030070 integer,   -- Population of six races

    -- This section is referred to as P4. HISPANIC OR LATINO, AND NOT HISPANIC OR LATINO BY RACE
    -- FOR THE POPULATION 18 YEARS AND OVER
    p0040001 integer,   -- Total
    p0040002 integer,   -- Hispanic or Latino
    p0040003 integer,   -- Not Hispanic or Latino:
    p0040004 integer,   -- Population of one race:
    p0040005 integer,   -- White alone
    p0040006 integer,   -- Black or African American alone
    p0040007 integer,   -- American Indian and Alaska Native alone
    p0040008 integer,   -- Asian alone
    p0040009 integer,   -- Native Hawaiian and Other Pacific Islander alone
    p0040010 integer,   -- Some Other Race alone
    p0040011 integer,   -- Two or More Races
    p0040012 integer,   -- Population of two races
    p0040028 integer,   -- Population of three races
    p0040049 integer,   -- Population of four races
    p0040065 integer,   -- Population of five races
    p0040072 integer,   -- Population of six races

    -- This section is referred to as H1. OCCUPANCY STATUS
    h0010001 integer,   -- Total housing units
    h0010002 integer,   -- Occupied
    h0010003 integer    -- Vacant
);

SELECT * FROM us_counties_2010;


COPY us_counties_2010 FROM 'C:\Users\modip\analysis\us_counties_2010.csv' WITH (FORMAT CSV, HEADER);


SELECT geo_name, state_us_abbreviation, area_land
FROM us_counties_2010
ORDER BY area_land DESC
LIMIT 3;

SELECT geo_name, state_us_abbreviation, internal_point_lon
FROM us_counties_2010
ORDER BY internal_point_lon DESC
LIMIT 5;

CREATE TABLE supervisor_salaries (
 town varchar(30),
 county varchar(30),
 supervisor varchar(30),
 start_date date,
 salary money,
 benefits money
);

COPY supervisor_salaries (town, supervisor, salary) FROM 'C:\Users\modip\OneDrive\Desktop\practical-sql-master\Chapter_04\supervisor_salaries.csv' WITH (FORMAT CSV, HEADER);

DELETE FROM supervisor_salaries;

CREATE TEMPORARY TABLE supervisor_salaries_temp (LIKE supervisor_salaries);

SELECT * FROM supervisor_salaries_temp

COPY supervisor_salaries_temp (town, supervisor, salary) FROM 'C:\Users\modip\analysis\supervisor_salaries.csv' WITH (FORMAT CSV, HEADER);

 INSERT INTO supervisor_salaries (town, county, supervisor, salary)
SELECT town, 'Some County', supervisor, salary
FROM supervisor_salaries_temp;

 DROP TABLE supervisor_salaries_temp;
 
 CREATE TEMPORARY TABLE supervisor_salaries_temp (LIKE supervisor_salaries);
 
 DROP TABLE supervisor_salaries_temp;
 
 CREATE TEMPORARY TABLE supervisor_salaries_temp (LIKE supervisor_salaries);
 
 SELECT * FROM supervisor_salaries_temp
 
 
COPY supervisor_salaries_temp (town, supervisor, salary) FROM 'C:\Users\modip\analysis\supervisor_salaries.csv' WITH (FORMAT CSV, HEADER);

 INSERT INTO supervisor_salaries (town, county, supervisor, start_date, salary, benefits)
SELECT town, 'Some County', supervisor, '2020-01-01', salary, 0
FROM supervisor_salaries_temp;

DROP TABLE supervisor_salaries_temp;

SELECT * FROM supervisor_salaries

COPY us_counties_2010
TO 'C:\Users\modip\analysis\us_counties_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

COPY us_counties_2010 (geo_name, internal_point_lat, internal_point_lon)
TO 'C:\Users\modip\analysis\us_counties_latlon_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

SELECT * FROM us_counties_2010

COPY (
 SELECT geo_name, state_us_abbreviation 
 FROM us_counties_2010 
 WHERE geo_name ILIKE '%mill%'
 )
TO 'C:\Users\modip\analysis\us_counties_mill_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

SELECT geo_name,
 state_us_abbreviation AS "st",
 p0010001 AS "Total Population",
 p0010003 AS "White Alone",
 p0010004 AS "Black or African American Alone",
 p0010005 AS "Am Indian/Alaska Native Alone",
 p0010006 AS "Asian Alone",
 p0010007 AS "Native Hawaiian and Other Pacific Islander Alone",
 p0010008 AS "Some Other Race Alone",
 p0010009 AS "Two or More Races"
FROM us_counties_2010;

SELECT geo_name,
 state_us_abbreviation AS "st",
 p0010003 AS "White Alone",
 p0010004 AS "Black Alone",
 p0010003 + p0010004 AS "Total White and Black"
FROM us_counties_2010;

SELECT geo_name,
 state_us_abbreviation AS "st",
 (CAST (p0010006 AS numeric(8,1)) / p0010001) * 100 AS "pct_asian"
FROM us_counties_2010
ORDER BY "pct_asian" DESC;

 CREATE TABLE percent_change (
 department varchar(20),
 spend_2014 numeric(10,2),
 spend_2017 numeric(10,2)
);
 INSERT INTO percent_change 
VALUES 
 ('Building', 250000, 289000),
 ('Assessor', 178556, 179500),
 ('Library', 87777, 90001),
 ('Clerk', 451980, 650000),
 ('Police', 250000, 223000),
 ('Recreation', 199000, 195000);
SELECT department,
 spend_2014,
 spend_2017,
  round( (spend_2017 - spend_2014) / 
 spend_2014 * 100, 1) AS "pct_change" 
FROM percent_change;

SELECT sum(p0010001) AS "County Sum",
 round(avg(p0010001), 0) AS "County Average"
FROM us_counties_2010;

CREATE TABLE percentile_test (
 numbers integer
);
INSERT INTO percentile_test (numbers) VALUES
 (1), (2), (3), (4), (5), (6);
SELECT
 percentile_cont(.5)
 WITHIN GROUP (ORDER BY numbers),
 percentile_disc(.5)
 WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;

SELECT sum(p0010001) AS "County Sum",
 round(avg(p0010001), 0) AS "County Average",
 percentile_cont(.5)
 WITHIN GROUP (ORDER BY p0010001) AS "County Median"
FROM us_counties_2010;

SELECT percentile_cont(array[.25,.5,.75])
 WITHIN GROUP (ORDER BY p0010001) AS "quartiles"
FROM us_counties_2010;

SELECT unnest(
 percentile_cont(array[.25,.5,.75])
 WITHIN GROUP (ORDER BY p0010001)
 ) AS "quartiles"
FROM us_counties_2010;



 CREATE TABLE departments (
 dept_id bigserial,
 dept varchar(100),
 city varchar(100),
 CONSTRAINT dept_key PRIMARY KEY (dept_id),
 CONSTRAINT dept_city_unique UNIQUE (dept, city)
);
CREATE TABLE employees (
 emp_id bigserial,
 first_name varchar(100),
 last_name varchar(100),
 salary integer,
  dept_id integer REFERENCES departments (dept_id),
  CONSTRAINT emp_key PRIMARY KEY (emp_id),
  CONSTRAINT emp_dept_unique UNIQUE (emp_id, dept_id)
);
INSERT INTO departments (dept, city)
VALUES
 ('IT', 'Johannesburg'),
 ('Sales', 'Pretoria'),
 ('Legal', 'CapeTown'),
 ('HR', 'Cape Town'),
 ('Tax', 'Johannesburg'),
 ('Logistics', 'Drban');
 
INSERT INTO employees (first_name, last_name, salary, dept_id)
VALUES
 ('Nancy', 'Jones', 62500, 1),
 ('Lee', 'Smith', 59300, 1),
 ('Soo', 'Nguyen', 83000, 2),
 ('Janet', 'King', 95000, 2),
 ('Siho', 'Tom', 85000, 1);
 
 SELECT *
 FROM employees JOIN departments
 ON employees.dept_id = departments.dept_id;
 
 CREATE TABLE schools_left (
  id integer CONSTRAINT left_id_key PRIMARY KEY,
 left_school varchar(30)
);
CREATE TABLE schools_right (
  id integer CONSTRAINT right_id_key PRIMARY KEY,
 right_school varchar(30)
);
 INSERT INTO schools_left (id, left_school) VALUES
 (1, 'Oak Street School'),
 (2, 'Roosevelt High School'),
 (5, 'Washington Middle School'),
 (6, 'Jefferson High School');
INSERT INTO schools_right (id, right_school) VALUES
 (1, 'Oak Street School'),
 (2, 'Roosevelt High School'),
 (3, 'Morrison Elementary'),
 (4, 'Chase Magnet Academy'),
 (6, 'Jefferson High School');
 
SELECT *
FROM schools_left JOIN schools_right

SELECT *
FROM schools_left LEFT JOIN schools_right
ON schools_left.id = schools_right.id;

SELECT *
FROM schools_left LEFT JOIN schools_right
ON schools_left.id = schools_right.id;

SELECT * 
FROM schools_left FULL OUTER JOIN schools_right
ON schools_left.id = schools_right.id

SELECT * 
FROM schools_left CROSS JOIN schools_right
ON schools_left.id = schools_right.id;


Chapter 8

CREATE TABLE pls_fy2014_pupld14a (
    stabr varchar(2) NOT NULL,
    fscskey varchar(6) CONSTRAINT fscskey2014_key PRIMARY KEY,
    libid varchar(20) NOT NULL,
    libname varchar(100) NOT NULL,
    obereg varchar(2) NOT NULL,
    rstatus integer NOT NULL,
    statstru varchar(2) NOT NULL,
    statname varchar(2) NOT NULL,
    stataddr varchar(2) NOT NULL,
    longitud numeric(10,7) NOT NULL,
    latitude numeric(10,7) NOT NULL,
    fipsst varchar(2) NOT NULL,
    fipsco varchar(3) NOT NULL,
    address varchar(35) NOT NULL,
    city varchar(20) NOT NULL,
    zip varchar(5) NOT NULL,
    zip4 varchar(4) NOT NULL,
    cnty varchar(20) NOT NULL,
    phone varchar(10) NOT NULL,
    c_relatn varchar(2) NOT NULL,
    c_legbas varchar(2) NOT NULL,
    c_admin varchar(2) NOT NULL,
    geocode varchar(3) NOT NULL,
    lsabound varchar(1) NOT NULL,
    startdat varchar(10),
    enddate varchar(10),
    popu_lsa integer NOT NULL,
    centlib integer NOT NULL,
    branlib integer NOT NULL,
    bkmob integer NOT NULL,
    master numeric(8,2) NOT NULL,
    libraria numeric(8,2) NOT NULL,
    totstaff numeric(8,2) NOT NULL,
    locgvt integer NOT NULL,
    stgvt integer NOT NULL,
    fedgvt integer NOT NULL,
    totincm integer NOT NULL,
    salaries integer,
    benefit integer,
    staffexp integer,
    prmatexp integer NOT NULL,
    elmatexp integer NOT NULL,
    totexpco integer NOT NULL,
    totopexp integer NOT NULL,
    lcap_rev integer NOT NULL,
    scap_rev integer NOT NULL,
    fcap_rev integer NOT NULL,
    cap_rev integer NOT NULL,
    capital integer NOT NULL,
    bkvol integer NOT NULL,
    ebook integer NOT NULL,
    audio_ph integer NOT NULL,
    audio_dl float NOT NULL,
    video_ph integer NOT NULL,
    video_dl float NOT NULL,
    databases integer NOT NULL,
    subscrip integer NOT NULL,
    hrs_open integer NOT NULL,
    visits integer NOT NULL,
    referenc integer NOT NULL,
    regbor integer NOT NULL,
    totcir integer NOT NULL,
    kidcircl integer NOT NULL,
    elmatcir integer NOT NULL,
    loanto integer NOT NULL,
    loanfm integer NOT NULL,
    totpro integer NOT NULL,
    totatten integer NOT NULL,
    gpterms integer NOT NULL,
    pitusr integer NOT NULL,
    wifisess integer NOT NULL,
    yr_sub integer NOT NULL
);

CREATE INDEX libname2014_idx ON pls_fy2014_pupld14a (libname);
CREATE INDEX stabr2014_idx ON pls_fy2014_pupld14a (stabr);
CREATE INDEX city2014_idx ON pls_fy2014_pupld14a (city);
CREATE INDEX visits2014_idx ON pls_fy2014_pupld14a (visits);

COPY pls_fy2014_pupld14a
FROM 'C:\Users\modip\analysis\pls_fy2014_pupld14a.csv'
WITH (FORMAT CSV, HEADER);

CREATE TABLE pls_fy2009_pupld09a (
    stabr varchar(2) NOT NULL,
    fscskey varchar(6) CONSTRAINT fscskey2009_key PRIMARY KEY,
    libid varchar(20) NOT NULL,
    libname varchar(100) NOT NULL,
    address varchar(35) NOT NULL,
    city varchar(20) NOT NULL,
    zip varchar(5) NOT NULL,
    zip4 varchar(4) NOT NULL,
    cnty varchar(20) NOT NULL,
    phone varchar(10) NOT NULL,
    c_relatn varchar(2) NOT NULL,
    c_legbas varchar(2) NOT NULL,
    c_admin varchar(2) NOT NULL,
    geocode varchar(3) NOT NULL,
    lsabound varchar(1) NOT NULL,
    startdat varchar(10),
    enddate varchar(10),
    popu_lsa integer NOT NULL,
    centlib integer NOT NULL,
    branlib integer NOT NULL,
    bkmob integer NOT NULL,
    master numeric(8,2) NOT NULL,
    libraria numeric(8,2) NOT NULL,
    totstaff numeric(8,2) NOT NULL,
    locgvt integer NOT NULL,
    stgvt integer NOT NULL,
    fedgvt integer NOT NULL,
    totincm integer NOT NULL,
    salaries integer,
    benefit integer,
    staffexp integer,
    prmatexp integer NOT NULL,
    elmatexp integer NOT NULL,
    totexpco integer NOT NULL,
    totopexp integer NOT NULL,
    lcap_rev integer NOT NULL,
    scap_rev integer NOT NULL,
    fcap_rev integer NOT NULL,
    cap_rev integer NOT NULL,
    capital integer NOT NULL,
    bkvol integer NOT NULL,
    ebook integer NOT NULL,
    audio integer NOT NULL,
    video integer NOT NULL,
    databases integer NOT NULL,
    subscrip integer NOT NULL,
    hrs_open integer NOT NULL,
    visits integer NOT NULL,
    referenc integer NOT NULL,
    regbor integer NOT NULL,
    totcir integer NOT NULL,
    kidcircl integer NOT NULL,
    loanto integer NOT NULL,
    loanfm integer NOT NULL,
    totpro integer NOT NULL,
    totatten integer NOT NULL,
    gpterms integer NOT NULL,
    pitusr integer NOT NULL,
    yr_sub integer NOT NULL,
    obereg varchar(2) NOT NULL,
    rstatus integer NOT NULL,
    statstru varchar(2) NOT NULL,
    statname varchar(2) NOT NULL,
    stataddr varchar(2) NOT NULL,
    longitud numeric(10,7) NOT NULL,
    latitude numeric(10,7) NOT NULL,
    fipsst varchar(2) NOT NULL,
    fipsco varchar(3) NOT NULL
);

CREATE INDEX libname2009_idx ON pls_fy2009_pupld09a (libname);
CREATE INDEX stabr2009_idx ON pls_fy2009_pupld09a (stabr);
CREATE INDEX city2009_idx ON pls_fy2009_pupld09a (city);
CREATE INDEX visits2009_idx ON pls_fy2009_pupld09a (visits);

COPY pls_fy2009_pupld09a
FROM 'C:\Users\modip\analysis\\pls_fy2009_pupld09a.csv'
WITH (FORMAT CSV, HEADER);

SELECT count(*)
FROM pls_fy2014_pupld14a;

SELECT count(*)
FROM pls_fy2009_pupld09a;

SELECT count(salaries)
FROM pls_fy2014_pupld14a;

SELECT count(libname)
FROM pls_fy2014_pupld14a;

SELECT count(libname)
FROM pls_fy2014_pupld14a;

SELECT count(DISTINCT libname)
FROM pls_fy2014_pupld14a;

SELECT libname, count(libname)
FROM pls_fy2014_pupld14a
GROUP BY libname
ORDER BY count(libname) DESC;

SELECT libname, city, stabr
FROM pls_fy2014_pupld14a
WHERE libname = 'OXFORD PUBLIC LIBRARY';

SELECT max(visits), min(visits)
FROM pls_fy2014_pupld14a;

SELECT stabr
FROM pls_fy2014_pupld14a
GROUP BY stabr
ORDER BY stabr;SELECT stabr
FROM pls_fy2014_pupld14a
GROUP BY stabr
ORDER BY stabr;

SELECT stabr
FROM pls_fy2009_pupld09a
GROUP BY stabr
ORDER BY stabr;

SELECT city, stabr
FROM pls_fy2014_pupld14a
GROUP BY city, stabr
ORDER BY city, stabr;

SELECT city, stabr, count(*)
FROM pls_fy2014_pupld14a
GROUP BY city, stabr
ORDER BY count(*) DESC;

-- Listing 8-9: GROUP BY with count() on the stabr column

SELECT stabr, count(*)
FROM pls_fy2014_pupld14a
GROUP BY stabr
ORDER BY count(*) DESC;

-- Listing 8-10: GROUP BY with count() on the stabr and stataddr columns

SELECT stabr, stataddr, count(*)
FROM pls_fy2014_pupld14a
GROUP BY stabr, stataddr
ORDER BY stabr ASC, count(*) DESC;

-- Listing 8-11: Using the sum() aggregate function to total visits to
-- libraries in 2014 and 2009

-- 2014
SELECT sum(visits) AS visits_2014
FROM pls_fy2014_pupld14a
WHERE visits >= 0;

-- 2009
SELECT sum(visits) AS visits_2009
FROM pls_fy2009_pupld09a
WHERE visits >= 0;

-- Listing 8-12: Using sum() to total visits on joined 2014 and 2009 library tables

SELECT sum(pls14.visits) AS visits_2014,
       sum(pls09.visits) AS visits_2009
FROM pls_fy2014_pupld14a pls14 JOIN pls_fy2009_pupld09a pls09
ON pls14.fscskey = pls09.fscskey
WHERE pls14.visits >= 0 AND pls09.visits >= 0;

-- Listing 8-13: Using GROUP BY to track percent change in library visits by state

SELECT pls14.stabr,
       sum(pls14.visits) AS visits_2014,
       sum(pls09.visits) AS visits_2009,
       round( (CAST(sum(pls14.visits) AS decimal(10,1)) - sum(pls09.visits)) /
                    sum(pls09.visits) * 100, 2 ) AS pct_change
FROM pls_fy2014_pupld14a pls14 JOIN pls_fy2009_pupld09a pls09
ON pls14.fscskey = pls09.fscskey
WHERE pls14.visits >= 0 AND pls09.visits >= 0
GROUP BY pls14.stabr
ORDER BY pct_change DESC;

-- Listing 8-14: Using HAVING to filter the results of an aggregate query

SELECT pls14.stabr,
       sum(pls14.visits) AS visits_2014,
       sum(pls09.visits) AS visits_2009,
       round( (CAST(sum(pls14.visits) AS decimal(10,1)) - sum(pls09.visits)) /
                    sum(pls09.visits) * 100, 2 ) AS pct_change
FROM pls_fy2014_pupld14a pls14 JOIN pls_fy2009_pupld09a pls09
ON pls14.fscskey = pls09.fscskey
WHERE pls14.visits >= 0 AND pls09.visits >= 0
GROUP BY pls14.stabr
HAVING sum(pls14.visits) > 50000000
ORDER BY pct_change DESC;
