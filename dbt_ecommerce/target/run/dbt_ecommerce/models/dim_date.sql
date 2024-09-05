
  create or replace   view ecommerce.raw.dim_date
  
   as (
    WITH date_exploded AS (
    SELECT
        DISTINCT order_date,
        EXTRACT(YEAR FROM order_date) AS Year,
        EXTRACT(MONTH FROM order_date) AS Month,
        EXTRACT(DAY FROM order_date) AS Day,
        EXTRACT(QUARTER FROM order_date) AS Quarter
    FROM ecommerce.raw.stg_ecommerce_data
)

SELECT * FROM date_exploded
  );
