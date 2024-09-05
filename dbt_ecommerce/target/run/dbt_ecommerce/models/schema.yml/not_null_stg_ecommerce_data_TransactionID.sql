select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TransactionID
from ecommerce.raw.stg_ecommerce_data
where TransactionID is null



      
    ) dbt_internal_test