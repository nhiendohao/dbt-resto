

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_str_to_date where 1=1
)

select
    *
from meet_condition

where not(coalesce(actual,'1900-01-01') = coalesce(expected, '1900-01-01'))

