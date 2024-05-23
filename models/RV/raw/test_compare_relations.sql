{% set old_fct_orders_query %}
select
    ID,
    FIRST_NAME,
    LAST_NAME
from {{ ref('raw_customers_data') }}
{% endset %}


{% set new_fct_orders_query %}
select
    ID,
    FIRST_NAME,
    LAST_NAME
from {{ ref('sat_customers_data') }}
{% endset %}


{{ audit_helper.compare_queries(
    a_query=old_fct_orders_query,
    b_query=new_fct_orders_query
) }}


select * from test_compare_relations