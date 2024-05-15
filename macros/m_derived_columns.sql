{% macro m_derived_columns(TABLE_NAME) %}

	{% set src_program_query %}
        SELECT 
        LAST_DDL_BY AS COMPANY, 
        TABLE_SCHEMA AS SOURCE_SCHEMA,
        TABLE_NAME AS SOURCE_TABLE ,
        LAST_ALTERED AS LAST_LOAD_DATE 
        FROM 
        DBT_PRACTICE_DB.INFORMATION_SCHEMA.TABLES 
        WHERE TABLE_NAME='{{TABLE_NAME}}'
	{% endset %}

	{% set src_results = run_query(src_program_query) %}

	{% set src_derived_list = [] %}
		{% for i in range(4) %}
			{% do src_derived_list.append(src_results.columns[i].values()) %}
		{% endfor %}
	
	{{return(src_derived_list)}}

{% endmacro %}