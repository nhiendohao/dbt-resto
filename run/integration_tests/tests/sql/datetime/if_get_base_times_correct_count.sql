select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select  1 as col
from    DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_hour
having  not(count(*) = 24)

union all

select  1 as col
from    DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_minute
having  not(count(*) = 1440)

union all

select  1 as col
from    DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_second
having  not(count(*) = 86400)
      
    ) dbt_internal_test