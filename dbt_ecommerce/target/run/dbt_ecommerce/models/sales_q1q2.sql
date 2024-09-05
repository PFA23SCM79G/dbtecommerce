
  create or replace   view ecommerce.raw.sales_q1q2
  
   as (
    WITH sales_by_quarter AS (
    SELECT
        CASE
            WHEN EXTRACT(QUARTER FROM order_date) = 1 THEN 'Q1'
            WHEN EXTRACT(QUARTER FROM order_date) = 2 THEN 'Q2'
        END AS Quarter,
        SUM(TotalAmount) AS TotalSalesAmount
    FROM ecommerce.raw.fct_sales
    WHERE EXTRACT(QUARTER FROM order_date) IN (1, 2)
    GROUP BY Quarter
)

SELECT
    Quarter,
    TotalSalesAmount
FROM sales_by_quarter
  );

