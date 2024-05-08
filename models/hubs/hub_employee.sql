{%- set source_model = ["stg_employee"] -%}
{%- set src_pk = "EMP_NO" -%}
{%- set src_nk = "EMP_NAME" -%}
{%- set src_ldts = "HIREDATE" -%}
{%- set src_source = "JOB" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                  src_source=src_source, source_model=source_model) }}

