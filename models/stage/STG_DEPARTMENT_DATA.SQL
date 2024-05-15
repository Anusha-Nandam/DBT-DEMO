
{% set selection_list = m_stage_column_list('RAW_SOURCE','DEPARTMENT') %}

{%- set yaml_metadata -%}
source_model: 'RAW_DEPARTMENT_DATA'
hashed_columns:
    DEP_NO: ['DEPARTMENTNO']
    DEP_LOC: ['LOC']
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