{% set selection_list_context = m_stage_column_list('RAW_SOURCE', 'RAW_ANBLICKS') %}
{% set selection_list_fk_bk_cols = ["ID"] %}
{% set selection_list = selection_list_fk_bk_cols + selection_list_context %}

{%- set source_model = "Stage_sp_company" -%}
{%- set src_pk = ["ID"] -%}
{%- set src_payload = selection_list -%}
-- {%- set src_hashdiff = "RECORD_HASH_DIFF" -%}
-- {%- set src_eff = "RECORD_EFFECTIVE_FROM" -%}
{%- set src_ldts = "NAME" -%}
{%- set src_source = "NAME" -%}

{{ automate_dv.sat(src_pk=src_pk,src_payload=src_payload,src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}  