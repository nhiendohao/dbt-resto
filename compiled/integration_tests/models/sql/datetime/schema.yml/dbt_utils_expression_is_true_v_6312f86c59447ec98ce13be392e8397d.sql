

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_key where 1=1
)

select
    *
from meet_condition

where not(actual = expected)

