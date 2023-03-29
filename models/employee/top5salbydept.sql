{{ config(materialized='table') }}
SELECT * FROM (
SELECT e.department, e.annual_salary,row_number() OVER( PARTITION BY e.department ORDER BY e.annual_salary DESC) AS ROWNUM
FROM dm-ps-poc.foodmart.sample_data AS e
JOIN {{ ref('department') }} AS d
ON e.department = d.department
GROUP BY e.department, e.annual_salary
)A WHERE ROWNUM <=5