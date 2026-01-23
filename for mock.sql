-- create table customers(customer_id serial primary key,	customer_name varchar,	city varchar,	phone_number bigint,	email varchar,
-- registration_date date )

-- create table orders(order_id  serial primary key,	customer_id int,	order_date date,	order_amount int,	delivery_city varchar,	payment_mode varchar )

-- create table products(product_id serial primary key,	product_name varchar,	category varchar,	price int,	stock_quantity int,	supplier_name varchar,	supplier_city varchar,
-- supply_date date)

-- create table order_items(order_item_id  serial primary key,	order_id int,	product_id int,	quantity int,	total_price int )

-- select customer_name, city, order_date from customers c
-- join orders o on o.customer_id = c.customer_id
-- where extract(year from order_date) = '2023';

-- select product_name, category, total_price from customers c
-- join orders o on o.customer_id = c.customer_id
-- join order_items oi on oi.order_id = o.order_id 
-- join products p on p.product_id = oi.product_id
-- where city = 'Delhi';

-- select customer_name, order_date, total_price from customers c
-- join orders o on o.customer_id = c.customer_id 
-- join order_items oi on oi.order_id = o.order_id 
-- where payment_mode = 'Credit Card';

-- select product_name, category, total_price from orders o
-- join order_items oi on oi.order_id = o.order_id 
-- join products p on p.product_id = oi.product_id
-- where order_date between '2023-01-01' and '2023-06-30';

-- select customer_name ,
-- count(product_id) total_products_ordered from customers c 
-- join orders o on o.customer_id = c.customer_id 
-- join order_items oi on oi.order_id = o.order_id
-- group by customer_name

-- select distinct supplier_name from products

--select distinct city from customers

--select distinct payment_mode from orders

--select distinct product_name , category from products

--select distinct supplier_city from products

-- select distinct category from orders o
-- join order_items oi on oi.order_id = o.order_id
-- join products p on p.product_id = oi.product_id


--select * from customers order by customer_name asc;

--select * from order_items order by total_price desc;

--select * from products order by price asc, category desc;

--select order_id, customer_id, order_date from orders order by order_date desc;

-- select city,
-- count(order_id) as total_orders from customers c
-- join orders o on o.customer_id = c.customer_id
-- group by city
-- order by city asc;





