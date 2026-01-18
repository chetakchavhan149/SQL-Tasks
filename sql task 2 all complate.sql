-- create table customers(customer_id serial primary key,	customer_name varchar,	city varchar,	phone_number bigint,	email varchar,	registration_date date )

-- create table orders(order_id serial primary key,	customer_id int,	order_date date,	order_amount int,	delivery_city varchar,	payment_mode varchar )

-- create table products(product_id serial primary key,	product_name varchar,	category varchar,	price int,	stock_quantity int,	supplier_name varchar,	supplier_city varchar,	supply_date dat
-- )

--select distinct city from customers;

--select distinct supplier_name from products;

--select distinct payment_mode from orders

-- select distinct category from products p
-- join order_items oi on oi.product_id = p.product_id

-- select distinct supplier_city from products

--select * from customers order by customer_name asc;

--select * from order_items order by total_price desc;

--select * from products order by price asc, category desc; 

--select order_id, 
--customer_id, order_date from  orders order by order_date desc;

--SELECT COUNT(ORDER_ID) AS TOTAL_ORDERS FROM ORDERS

--select avg(price) as average_price from products

-- select 
-- max(total_price) as max_order_price,
-- min(total_price) as min_order_price
-- from orders o join order_items oi on oi.order_id = o.order_id 
-- where extract(year from order_date) = 2023;


-- select customer_id from orders
-- where extract(year from order_date)= 2022

-- intersect

-- select customer_id from orders
-- where extract(year from order_date)= 2023;

-- select product_id from order_items oi join orders o on o.order_id = oi.order_id
-- where extract(year from order_date)= 2022

-- except

-- select product_id from order_items oi join orders o on o.order_id = oi.order_id
-- where extract(year from order_date)= 2023;

-- select supplier_city from products

-- except

-- select city from customers;


-- select supplier_city as city from products

-- union

-- select city from customers;


-- select product_name from products

-- intersect

-- select product_name from products p
-- join order_items oi on oi.product_id = p.product_id
-- join orders o on o.order_id = oi.order_id
-- where extract(year from order_date)= 2023;


















