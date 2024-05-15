{% set selection_list = m_stage_column_list('RAW_SOURCE','RAW_PAYMENTS') %}

{%- set yaml_metadata -%}
source_model: 'RAW_PAYMENTS'
hashed_columns:
    ID: ['ID_NO']
{%- endset -%}


{% set metadata_dict = fromyaml(yaml_metadata) %}
 
{% set source_model = metadata_dict['source_model'] %}
 
{% set hashed_columns = metadata_dict['hashed_columns'] %}

-- WITH staging AS (
-- {{ hashed_columns }} )

WITH staging AS (
{{ automate_dv.stage(include_source_columns=true,source_model=source_model,
                  hashed_columns=hashed_columns) }} )
 
SELECT * FROM staging
