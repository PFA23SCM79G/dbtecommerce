
    
    

select
    TransactionID as unique_field,
    count(*) as n_records

from ecommerce.raw.fct_sales
where TransactionID is not null
group by TransactionID
having count(*) > 1


