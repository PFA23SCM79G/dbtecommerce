select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select ProductID as from_field
    from ecommerce.raw.fct_sales
    where ProductID is not null
),

parent as (
    select ProductID as to_field
    from ecommerce.raw.dim_product
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test