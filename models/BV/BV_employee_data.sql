{{ config( alias='EMPLOYEE_DATA')}}

SELECT
EMP_NO,
EMP_NAME,
EMPLOYEENO,
HIREDATE,
JOB,
ENAME,
MGR,
GENDER,
SAL,
COMM,
DEPARTMENTNO
FROM {{ ref('sat_employee_data')}}