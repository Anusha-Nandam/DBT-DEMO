{{ config( alias = 'PAYMENTS_DATA') }}

SELECT 
ID as ID_NO,
ORDER_ID as O_ID,
PAYMENT_METHOD AS P_METHOD,
AMOUNT AS AMT
FROM {{ref('SAT_PAYMENTS')}} 