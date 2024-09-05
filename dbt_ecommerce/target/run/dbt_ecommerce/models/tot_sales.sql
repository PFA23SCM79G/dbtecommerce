
  create or replace   view ecommerce.raw.tot_sales
  
   as (
    SELECT
    ProductCategory,
    SUM(TotalAmount) AS TotalSalesAmount
FROM ecommerce.raw.fct_sales
GROUP BY ProductCategory
  );

