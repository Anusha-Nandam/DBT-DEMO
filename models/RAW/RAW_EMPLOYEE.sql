with CTE_RECORD AS(
SELECT employeeno,
trim(ename),
gender ,
job ,
mgr,
hiredate ,
sal,
comm,
departmentno,
current_timestamp as insert_date,
'HYD' as RECORD_SOURCE FROM RAW.EMPLOYEE)
SELECT * FROM CTE_RECORD