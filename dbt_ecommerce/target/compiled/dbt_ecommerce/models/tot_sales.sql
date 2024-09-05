SELECT
    ProductCategory,
    SUM(TotalAmount) AS TotalSalesAmount
FROM ecommerce.raw.fct_sales
GROUP BY ProductCategory