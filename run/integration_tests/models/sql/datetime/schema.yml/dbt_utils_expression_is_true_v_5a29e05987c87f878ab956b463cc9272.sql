select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with meet_condition as (
    select * from DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_hour where 1=1
)

select
    *
from meet_condition

where not(
    

  date_part(second, time_value)


 = 0)


      
    ) dbt_internal_test