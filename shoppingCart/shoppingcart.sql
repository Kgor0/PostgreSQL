create database shopping__cart;

create table pricelist(
items_id serial,
items varchar(25),
prices numeric,
CONSTRAINT items_id_key PRIMARY KEY(items_id)
);

drop table pricelist;

insert into pricelist(items, prices)
values('coke', '22'),
      ('kit kat', '12'),
      ('sprite', '20'),
	  ('bar one', '15');

select * from pricelist;


create table users(
user_id serial,
first_name varchar(25),
last_name varchar(25),
email varchar(25), 
phone varchar(25),
CONSTRAINT email_unique UNIQUE (email),
CONSTRAINT user_id_key PRIMARY KEY(user_id)
);

insert into users(first_name, last_name, email, phone)
values('vusi', 'nova', 'novaV@icloud.com', '081234567'),
      ('melo', 'barnes', 'barnes@icloud.com', '0823459876'),
	  ('byron', 'neves', 'byronneves@icloud.com', '0819872345'),
	  ('neo', 'traore', 'traoreN@icloud.com', '0825677812');
	  
select * from users;

create table cart(
items_id integer REFERENCES pricelist (items_id),
user_id integer REFERENCES users (user_id)
);

insert into cart(items_id, user_id)
values (4, 3);
	  
drop table cart;

select * from cart;

create table shopping_cart(
items_id integer,
user_id integer,
items varchar(25),
prices numeric
);

--question 3--
select * from pricelist;

--question 4--
insert into shopping_cart(user_id, items_id, prices, items)
select users.user_id, pricelist.items_id, pricelist.items, pricelist.prices
from users left join cart
on users.user_id = cart.user_id
left join pricelist
on cart.items_id = pricelist.items_id
where users.user_id = 3 and pricelist.items_id in (1);

--question 5--
insert into shopping_cart(user_id, items_id, prices, items)
select users.user_id, pricelist.items_id, pricelist.items, pricelist.prices
from users left join cart
on users.user_id = cart.user_id
left join pricelist
on cart.items_id = pricelist.items_id
where users.user_id = 3; 

select * from cart;

--question 6--
select user_id, count (items), sum (prices) from shopping_cart
group by user_id;
