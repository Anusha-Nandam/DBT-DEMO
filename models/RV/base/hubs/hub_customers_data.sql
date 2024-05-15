{%- set source_model = ["stg_customers_data"] -%}
{%- set src_pk = "ID" -%}
{%- set src_nk = "FIRST_NAME" -%}
{%- set src_ldts = "RECORD_LOAD_DATE" -%}
{%- set src_source = "LAST_NAME" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                  src_source=src_source, source_model=source_model) }}