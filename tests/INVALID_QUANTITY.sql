{{config(severity = "warn" )}}

select amount from {{ref("RAW_PAYMENTS")}} where amount>0