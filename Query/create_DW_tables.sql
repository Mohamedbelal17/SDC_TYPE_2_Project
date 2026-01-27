create table dimension.Customer (
customer_sk int identity(1,1) ,
customer_id int,
first_name varchar(50),
last_name varchar(50),
email varchar(100),
phone varchar(50) ,
address varchar(100) ,
city varchar(100),
country varchar(100),
loyalty_tier varchar(10) ,
start_date date ,
end_date date 
)


create table dimension.product (
product_id int ,
product_name varchar(100) ,
category varchar(100) ,
start_date date , 
end_date date
)

create table dimension.date (
date_key int ,
full_date date ,
day int ,
month int,
year int 
)


create table fact."order" (
order_key int,
customer_key int,
product_key int ,
date_key int ,
quantity int ,
total_price int
)