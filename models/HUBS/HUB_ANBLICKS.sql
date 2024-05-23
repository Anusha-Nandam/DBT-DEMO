{%- set source_model = ["Stage_sp_company"] -%}
{%- set src_pk = "ID" -%}
{%- set src_nk = "NAME" -%}
{%- set src_ldts = "NAME" -%}
{%- set src_source = "NAME" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                  src_source=src_source, source_model=source_model) }}