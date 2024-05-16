{{ config( alias = 'ORDERS_DATA')}}

SELECT 
ID,
ORDER_DATE,
STATUS,
USER_ID,
RECORD_LOAD_DATE
FROM {{ ref('sat_orders_data') }}