select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Quantity
from ecommerce.raw.stg_ecommerce_data
where Quantity is null



      
    ) dbt_internal_test