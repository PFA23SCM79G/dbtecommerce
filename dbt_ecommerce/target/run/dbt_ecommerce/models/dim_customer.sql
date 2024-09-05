
  create or replace   view ecommerce.raw.dim_customer
  
   as (
    SELECT
    DISTINCT
    CustomerID,
    CustomerName,
    CustomerCity,
    CustomerCountry
FROM ecommerce.raw.stg_ecommerce_data
  );

