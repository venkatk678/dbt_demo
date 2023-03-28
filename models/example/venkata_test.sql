
{{ config(
    materialized='table'
    )}}
with kiran_test2 as (

   select 1 as id
    union all
    select null as id
    )select * from kiran_test2