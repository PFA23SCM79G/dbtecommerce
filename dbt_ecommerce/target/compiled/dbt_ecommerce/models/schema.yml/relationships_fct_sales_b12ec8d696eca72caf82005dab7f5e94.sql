
    
    

with child as (
    select CustomerID as from_field
    from ecommerce.raw.fct_sales
    where CustomerID is not null
),

parent as (
    select CustomerID as to_field
    from ecommerce.raw.dim_customer
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


