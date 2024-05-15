{%- set source_model = ["STG_RAW_PAYMENTS"] -%}
{%- set src_pk = "ID" -%}
{%- set src_nk = "ORDER_ID" -%}
{%- set src_ldts = "PAYMENT_METHOD" -%}
{%- set src_source = "AMOUNT" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                  src_source=src_source, source_model=source_model) }}