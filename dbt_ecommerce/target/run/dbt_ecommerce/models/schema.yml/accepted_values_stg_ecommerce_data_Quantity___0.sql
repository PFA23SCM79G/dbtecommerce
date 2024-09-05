select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        Quantity as value_field,
        count(*) as n_records

    from ecommerce.raw.stg_ecommerce_data
    group by Quantity

)

select *
from all_values
where value_field not in (
    '> 0'
)



      
    ) dbt_internal_test