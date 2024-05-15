{% set columns_list = m_stage_column_list('RAW_SOURCE','RAW_ORDERS')%}

{% set yaml_metadata %}
source_model : 'raw_orders_data'
derived_columns:
  RECORD_LOAD_DATE: 'RECORD_LOAD_DATE'
  RECORD_START_DATE : 'RECORD_START_DATE'
  RECORD_END_DATE : 'RECORD_END_DATE'
  RECORD_IS_ACTIVE : 'RECORD_IS_ACTIVE'
hashed_columns :
    ORDER_ID : ['ID']
{% endset %}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model']%}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}

WITH staging AS (
{{ automate_dv.stage(include_source_columns=true,source_model=source_model,derived_columns=derived_columns,
                  hashed_columns=hashed_columns) }} )
 
SELECT * FROM staging