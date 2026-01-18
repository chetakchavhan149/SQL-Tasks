-- create table customers(customer_id serial primary key,	customer_name varchar,	city varchar,	phone_number bigint,	email varchar,	registration_date date )

-- create table orders(order_id serial primary key,	customer_id int,	order_date date,	order_amount int,	delivery_city varchar,	payment_mode varchar )

-- create table products(product_id serial primary key,	product_name varchar,	category varchar,	price int,	stock_quantity int,	supplier_name varchar,	supplier_city varchar,	supply_date dat
-- )

--select distinct city from customers

--select distinct supplier_name from products

--select distinct payment_mode from orders

-- select distinct category from products p
-- join order_items oi on oi.product_id = p.product_id

-- select distinct supplier_city from products

--select * from customers order by customer_name asc;

--select * from order_items order by total_price desc;

--select * from products order by price asc, category desc; 

--select order_id, 
--customer_id, order_date from  orders order by order_date desc;

-- select city, count(order_id) as total_orders
-- from orders o
-- join customers c
-- on o.customer_id = c.customer_id
-- group by c.city
-- order by c.city asc;

--select * from customers order by customer_name limit 10;

--select * from products order by price desc limit 5;

--select * from orders order by customer_id limit 10 offset 10;

-- select order_id, order_date, 
-- customer_id from orders where extract(year from order_date) = 2023
-- order by order_date asc limit 5;

-- select distinct city from orders o join customers c 
-- on c.customer_id = o.customer_id
-- order by city 
-- limit 10 offset 10;

--select count(order_id) as total_price from orders;

select sum(total_price) as total_revenue_upi from orders where payment_mode ='upi'






