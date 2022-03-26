select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_minute where 1=1
)

select
    *
from meet_condition

where not(cast(right(left(hour_minute_name, 4),2) as 
    int
) = minute_number)


      
    ) dbt_internal_test