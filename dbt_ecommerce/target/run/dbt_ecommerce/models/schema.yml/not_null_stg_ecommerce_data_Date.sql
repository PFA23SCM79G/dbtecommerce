select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Date
from ecommerce.raw.stg_ecommerce_data
where Date is null



      
    ) dbt_internal_test