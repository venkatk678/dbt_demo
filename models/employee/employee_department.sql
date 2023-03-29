
select a.Employee_ID,a.annual_salary,b.department 
from {{ ref('top5salary') }} a
join {{ ref('department') }} b
on a.Employee_ID = b.Employee_ID;
