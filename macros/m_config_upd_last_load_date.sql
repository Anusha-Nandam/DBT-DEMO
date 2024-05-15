{% macro m_config_upd_last_load_date(srccompany,srcmodelid,sattable) %}
    {% if execute %}
		UPDATE {{ source('CONFIG_SCHEMA', 'EMPLOYEE') }} TG
        SET TG.HIREDATE = CURRENT_TIMESTAMP()
        FROM 
	        (SELECT 
		        RECORD_SOURCE,
		        MAX(RECORD_LOAD_DATE) AS RECORD_LOAD_DATE 
	        FROM {{ sattable }} 
	        WHERE RECORD_IS_ACTIVE=TRUE 
	        GROUP BY RECORD_SOURCE) TX
        WHERE TX.RECORD_SOURCE=TG.SOURCE_SCHEMA 
	        AND TG.COMPANY= '{{ srccompany }}' 
	        AND TG.MODEL_ID= '{{ srcmodelid }}' 
	{% endif %}

{% endmacro %}