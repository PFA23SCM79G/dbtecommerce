select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TransactionID
from ecommerce.raw.fct_sales
where TransactionID is null



      
    ) dbt_internal_test