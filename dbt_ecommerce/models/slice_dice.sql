WITH us_sales AS (
    SELECT
        ProductID,
        ProductName,
        SUM(Quantity) AS TotalQuantity
    FROM {{ ref('fct_sales') }} AS sales
    JOIN {{ ref('dim_customer') }} AS customer
    ON sales.CustomerID = customer.CustomerID
    WHERE customer.CustomerCountry = 'United States'
    GROUP BY ProductID, ProductName
)

SELECT
    ProductID,
    ProductName,
    TotalQuantity
FROM us_sales
ORDER BY TotalQuantity DESC
LIMIT 5
