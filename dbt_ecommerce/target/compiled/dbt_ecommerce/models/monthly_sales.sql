WITH top_subcategory AS (
    SELECT
        ProductSubcategory
    FROM ecommerce.raw.sales_breakdown
    ORDER BY TotalSalesAmount DESC
    LIMIT 1
)

SELECT
    EXTRACT(MONTH FROM order_date) AS Month,
    SUM(TotalAmount) AS TotalSalesAmount
FROM ecommerce.raw.fct_sales AS sales
JOIN top_subcategory
ON sales.ProductSubcategory = top_subcategory.ProductSubcategory
GROUP BY Month
ORDER BY Month