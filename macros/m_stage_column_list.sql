{% macro m_stage_column_list(table_schema,TABLE_NAME) %}

	{% set src_program_query %}
    	WITH COL_CTE AS 
		(

            select 
            COLUMN_NAME AS COLUMN_STRING
            from information_schema.columns 
            where TABLE_NAME='{{TABLE_NAME}}' and table_schema='{{table_schema}}'
		)  
		SELECT COLUMN_STRING  FROM COL_CTE
	{% endset %}

	{% set src_results = run_query(src_program_query) %}

	{% if execute %}
		{% set src_results_list = src_results.columns[0].values() %}
	{% endif %}

	{% set src_selection_list = [] %}
		{% for i in src_results_list %}
			{% do src_selection_list.append(i) %}
		{% endfor %}
	
	{{return(src_selection_list)}}

{% endmacro %}