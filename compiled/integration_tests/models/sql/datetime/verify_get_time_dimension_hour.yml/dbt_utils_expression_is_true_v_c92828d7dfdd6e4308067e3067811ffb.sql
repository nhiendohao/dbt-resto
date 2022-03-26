

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour where 1=1
)

select
    *
from meet_condition

where not(time24_string = hour24_name)

