

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_minute where 1=1
)

select
    *
from meet_condition

where not(cast(left(hour24_minute_name, 2) as 
    int
) = hour24_number)

