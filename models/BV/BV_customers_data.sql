{{ config( alias='CUSTOMERS_DATA' )}}

SELECT 
ID,
FIRST_NAME,
LAST_NAME,
RECORD_LOAD_DATE
FROM {{ ref('sat_customers_data') }}
