select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TotalAmount
from ecommerce.raw.stg_ecommerce_data
where TotalAmount is null



      
    ) dbt_internal_test