
  create or replace   view ecommerce.raw.dim_product
  
   as (
    SELECT
    DISTINCT ProductID,
    ProductName,
    ProductCategory,
    ProductSubcategory
FROM ecommerce.raw.stg_ecommerce_data
  );

