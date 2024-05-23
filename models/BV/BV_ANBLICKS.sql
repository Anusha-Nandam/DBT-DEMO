{{ config( alias = 'ANBLICKS_DATA') }}

SELECT 
ID as CUSTOMERID,
NAME as F_NAME,
FROM {{ref('SAT_anblicks')}} 