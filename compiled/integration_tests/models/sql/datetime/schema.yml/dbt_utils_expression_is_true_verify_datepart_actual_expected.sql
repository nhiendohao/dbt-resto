

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_datepart where 1=1
)

select
    *
from meet_condition

where not(actual = expected)

