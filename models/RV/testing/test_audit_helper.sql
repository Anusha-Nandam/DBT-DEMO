{# in dbt Develop #}


{% set old_fct_orders_query %}
select
    ID,
    FIRST_NAME,
    LAST_NAME
from DBT_PRACTICE_DB.MAIN.RAW_CUSTOMERS_DATA
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
    b_query=new_fct_orders_query,
    primary_key="ID"
) }}