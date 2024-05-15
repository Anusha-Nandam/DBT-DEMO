{% set selection_list_context = m_stage_column_list('MAIN', 'RAW_MAIN') %}
{% set selection_list_fk_bk_cols = ["CUSTOMER_ID"] %}
{% set selection_list = selection_list_fk_bk_cols + selection_list_context %}

{%- set source_model = "STG_ESG_SCORES" -%}
{%- set src_pk = ["CUSTOMER_ID"] -%}
{%- set src_payload = selection_list -%}
-- {%- set src_hashdiff = "RECORD_HASH_DIFF" -%}
-- {%- set src_eff = "RECORD_EFFECTIVE_FROM" -%}
{%- set src_ldts = "FIRST_ORDER" -%}
{%- set src_source = "LAST_NAME" -%}

{{ automate_dv.sat(src_pk=src_pk,src_payload=src_payload,src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}  