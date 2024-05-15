{{ config( alias = 'DEPARTMENT_DATA') }}

SELECT 
DEP_NO as department_number,
DEP_LOC as department_location,
DEPARTMENTNO,
LOC,
DNAME as department_name
FROM {{ref('SAT_DEPARTMENT_DATA')}}