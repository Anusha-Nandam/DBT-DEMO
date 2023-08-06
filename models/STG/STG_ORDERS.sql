with
    source as (
        select * from {{ ref("RAW_ORDERS") }}
        ),
    final as (
        select id as order_id, user_id as customer_id, to_date(order_date) as order_date, status from source
        )
select * from final
