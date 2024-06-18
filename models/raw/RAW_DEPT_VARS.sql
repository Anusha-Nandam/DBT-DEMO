
{%set DNAME=var('DNM')%}
SELECT *,'{{ env_var("DBT_TEST_VAR", "manual") }}' as _audit_run_id FROM RAW_SOURCE.DEPARTMENT 
WHERE DNAME = '{{DNAME}}'