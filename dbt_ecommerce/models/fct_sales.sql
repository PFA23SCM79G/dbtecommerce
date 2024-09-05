SELECT
    TransactionID,
    order_date,
    CustomerID,
    ProductID,
    ProductName,
    ProductCategory,
    ProductSubcategory,
    UnitPrice,
    Quantity,
    TotalAmount
FROM {{ ref('stg_ecommerce_data') }}
