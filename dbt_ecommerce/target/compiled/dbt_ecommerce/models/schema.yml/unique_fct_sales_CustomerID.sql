
    
    

select
    CustomerID as unique_field,
    count(*) as n_records

from ecommerce.raw.fct_sales
where CustomerID is not null
group by CustomerID
having count(*) > 1


