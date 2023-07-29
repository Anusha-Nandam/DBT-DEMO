with
    source as (
        select * from {{ ref("RAW_ORDERS") }}
        ),
    final as (
        select id, user_id, to_date(order_date) as order_date, status from source
        )
select * from final
