with source as (
    select * from {{ref('RAW_PAYMENTS')}}
    ),
final as (
    select id as payment_id,
    order_id ,
    payment_method ,
    cast(amount as decimal(32,8))/100 as amount from source
)
SELECT * FROM FINAL

