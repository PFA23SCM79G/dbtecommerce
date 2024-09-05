select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select UnitPrice
from ecommerce.raw.stg_ecommerce_data
where UnitPrice is null



      
    ) dbt_internal_test