select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select CustomerID
from ecommerce.raw.stg_ecommerce_data
where CustomerID is null



      
    ) dbt_internal_test