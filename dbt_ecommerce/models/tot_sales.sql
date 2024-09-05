SELECT
    ProductCategory,
    SUM(TotalAmount) AS TotalSalesAmount
FROM {{ ref('fct_sales') }}
GROUP BY ProductCategory