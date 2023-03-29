{{ config(
    materialized='table',
    tags='emp'
    )}}
SELECT Employee_ID,Department 
FROM  dm-ps-poc.foodmart.department_data 

