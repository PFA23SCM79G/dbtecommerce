WITH best_category AS (
    SELECT
        ProductCategory
    FROM {{ ref('tot_sales') }}
    ORDER BY TotalSalesAmount DESC
    LIMIT 1
)

SELECT
    ProductSubcategory,
    SUM(TotalAmount) AS TotalSalesAmount
FROM {{ ref('fct_sales') }} AS sales
JOIN best_category
ON sales.ProductCategory = best_category.ProductCategory
GROUP BY ProductSubcategory
