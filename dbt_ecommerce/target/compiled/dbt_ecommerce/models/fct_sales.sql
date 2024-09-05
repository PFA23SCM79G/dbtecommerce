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
FROM ecommerce.raw.stg_ecommerce_data