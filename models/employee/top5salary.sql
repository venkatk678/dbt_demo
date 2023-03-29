
{{ config(
    materialized='table',
    tags='emp'
    )}}
SELECT Employee_ID,annual_salary 
FROM  dm-ps-poc.foodmart.employee_data 
ORDER BY annual_salary DESC 
LIMIT 5
