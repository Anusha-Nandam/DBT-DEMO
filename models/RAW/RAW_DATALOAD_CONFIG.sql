with source as(
    select * from {{source("SOURCE_EBS","DATALOAD_CONFIG")}}
),
final as
(select * from source)

select * from final