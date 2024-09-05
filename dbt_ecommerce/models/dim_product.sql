SELECT
    DISTINCT ProductID,
    ProductName,
    ProductCategory,
    ProductSubcategory
FROM {{ ref('stg_ecommerce_data') }}
