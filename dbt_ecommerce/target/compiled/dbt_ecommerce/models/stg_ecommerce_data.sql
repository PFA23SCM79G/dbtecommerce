WITH raw_data AS (
    SELECT
        TransactionID,
        TO_DATE(Date) AS order_date,
        CustomerID,
        CustomerName,
        CustomerCity,
        CustomerCountry,
        ProductID,
        ProductName,
        ProductCategory,
        ProductSubcategory,
        CAST(UnitPrice AS FLOAT) AS UnitPrice,
        CAST(Quantity AS INT) AS Quantity,
        CAST(TotalAmount AS FLOAT) AS TotalAmount
    FROM ecommerce.raw.ECOMMERCE_DATA
)

SELECT * FROM raw_data