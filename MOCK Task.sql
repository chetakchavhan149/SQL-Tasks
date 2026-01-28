-- create table customers (customer_id serial primary key, first_name varchar, last_name varchar, date_of_birth date, gender varchar, contact_number bigint, email varchar, address varchar, aadhaar_number bigint, pan_number varchar);

-- create table agent (agent_id serial primary key, first_name varchar, last_name varchar, contact_number bigint, email varchar, commission_rate float);

-- create table policies (Policy_id serial primary key, policy_type varchar, coverage_amount int, premium_amount int, start_date date, end_date date, customer_id int references customers (customer_id), agent_id int references agent (agent_id), approved_by varchar);

-- create table claims (claim_id serial primary key, claim_date date, amount_claimed int, status varchar, policy_id int references policies (policy_id), approved_by varchar);

-- create table payments (payment_uuid varchar, payment_date date, amount int, payment_method varchar, policy_id int references policies (policy_id) );


-- update customers set customer_name = first_name || ' ' || last_name;

-- alter table customers add column customer_name varchar;

-- select customer_name , count(policy_id) as total_policies from customers c 
-- join policies p on p.customer_id = c. customer_id
-- group by customer_name;

--select  sum(premium_amount) total_premium  from policies;

-- select customer_name, sum(premium_amount) total_premium from customers c
-- join policies p on p.customer_id = c.customer_id group by customer_name;



-- alter table agent add column agent_name varchar;

-- update agent set agent_name = first_name || ' ' || last_name;

-- select agent_name, count(policy_id) as polocies_sold from agent a 
-- join policies p on p.agent_id = a.agent_id
-- group by agent_name

-- select P.Policy_id, sum(amount_claimed) as total_amount_claimed from policies p 
-- join claims c on c.policy_id = p.policy_id group by P.policy_id;

-- SELECT p.policy_id , status from policies p 
-- join claims c on c.policy_id = p.policy_id 
-- where status = 'Approved';

-- select p.policy_id, sum(amount) as payment_amount_received from policies p
-- join payments py on py.policy_id = p.policy_id 
-- group by p.policy_id

-- select customer_name , policy_id from customers c 
-- join policies p on p.customer_id =c.customer_id;

-- select policy_type, avg(premium_amount) as average_premium_amount
-- from policies group by policy_type

-- select agent_name, sum(premium_amount * commission_rate / 100) as total_commisson from agent a
-- join policies p on p.agent_id = a.agent_id group by agent_name;














