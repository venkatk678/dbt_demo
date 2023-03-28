
{{ config(
    materialized='table'
    )}}
    with kiran_test1 as (
select * from dm-ps-poc.Analysis.my_first_dbt_model
    )select * from kiran_test1