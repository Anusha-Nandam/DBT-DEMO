{% test order_limit(model,column_name) %}

with source as 
(select {{column_name }} as customer_name from {{model}})
,
final as(

    select customer_name from source group by customer_name having count(customer_name)>1
)
select * from final

{% endtest %}