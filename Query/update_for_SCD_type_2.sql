SELECT TOP (1000) [product_id]
      ,[product_name]
      ,[category]
      ,[unit_price]
      ,[updated_at] as start_Date
  FROM [EDW].[dbo].[products]


  update a 
  set a.end_date = getdate() 
  from dimension.product a inner join dbo.insert_product b
  on a.product_id = b.product_id
  where a.end_date is null