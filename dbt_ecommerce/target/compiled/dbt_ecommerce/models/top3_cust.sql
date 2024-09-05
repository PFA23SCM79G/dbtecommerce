WITH customer_ranking AS (
    SELECT 
        C.CustomerID, 
        C.CustomerCountry, 
        P.ProductCategory,
        SUM(F.TotalAmount) AS TotalSales,
        RANK() OVER (PARTITION BY C.CustomerCountry ORDER BY SUM(F.TotalAmount) DESC) AS SalesRank
    FROM ecommerce.raw.fct_sales AS F
    JOIN ecommerce.raw.dim_customer AS C ON F.CustomerID = C.CustomerID
    JOIN ecommerce.raw.dim_product AS P ON F.ProductID = P.ProductID
    GROUP BY C.CustomerID, C.CustomerCountry, P.ProductCategory
)

, favorite_category AS (
    SELECT 
        CustomerID, 
        CustomerCountry, 
        ProductCategory, 
        TotalSales,
        ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY TotalSales DESC) AS CategoryRank
    FROM customer_ranking
)

SELECT 
    CustomerID, 
    CustomerCountry, 
    ProductCategory, 
    TotalSales
FROM favorite_category
WHERE CategoryRank = 1
AND CustomerID IN (
    SELECT CustomerID 
    FROM customer_ranking 
    WHERE SalesRank <= 3
)
ORDER BY CustomerCountry, SalesRank, TotalSales DESC