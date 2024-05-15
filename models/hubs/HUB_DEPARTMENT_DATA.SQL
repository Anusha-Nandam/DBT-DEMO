{%- set source_model = ["STG_DEPARTMENT_DATA"] -%}
{%- set src_pk = "DEP_NO" -%}
{%- set src_nk = "DEP_LOC" -%}
{%- set src_ldts = "DEP_NO" -%}
{%- set src_source = "DNAME" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                  src_source=src_source, source_model=source_model) }}

