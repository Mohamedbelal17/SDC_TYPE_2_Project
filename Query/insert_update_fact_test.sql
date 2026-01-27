SELECT TOP (1000) [order_key]
      ,[customer_key]
      ,[product_key]
      ,[date_key]
      ,[quantity]
      ,[total_price]
  FROM [EDW].[fact].[order]

  select p.product_name , p.category , c.first_name , c.phone
  , c.address , c.loyalty_tier  ,
  f.quantity , f.total_price 
  from fact."order" f 
  inner join dimension.product p on p.product_sk = f.product_key
  inner join dimension.customer c on c.customer_sk = f.customer_key
  
  -----------
  select distinct  c.first_name , c.address , c.start_date,c.loyalty_tier , c.end_date ,
  p.product_name , p.category ,f.quantity , f.total_price , d.full_Date, d.day , d.year 
  from fact.[order] f
  inner join dimension.customer c
  on  c.customer_id = f.customer_key
   inner join dimension.product p
  on p.product_id = f.product_key
  inner join dimension.date d
  on d.date_key = f.date_key
  where c.end_date is null and p.end_date is null

  
   select * from dbo.order_items
   select * from dbo.orders
   select * from dimension.date
  select * from dimension.customer
  select * from dbo.customers
  select * from fact.[order]

INSERT INTO dbo.order_items 
VALUES (
7,
5011,
  2004,
  1,
  1000
);


  update dbo.customers
  set loyalty_tier = 'Silver'
  where customer_id = 1011
 