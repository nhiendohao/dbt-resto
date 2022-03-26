select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with meet_condition as (
    select * from (select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_minute where hour_number != 0) dbt_subquery where 1=1
)

select
    *
from meet_condition

where not(cast(left(hour_minute_name, 2) as 
    int
) = hour_number)


      
    ) dbt_internal_test