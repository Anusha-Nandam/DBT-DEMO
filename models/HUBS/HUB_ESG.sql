{%- set source_model = ["STG_ESG_SCORES"] -%}
{%- set src_pk = "CUSTOMER_ID" -%}
{%- set src_nk = "FIRST_NAME" -%}
{%- set src_ldts = "FIRST_ORDER" -%}
{%- set src_source = "LAST_NAME" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                  src_source=src_source, source_model=source_model) }}