select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour where 1=1
)

select
    *
from meet_condition

where not(left(right(hour_name, 7), 4) = '0000')


      
    ) dbt_internal_test