select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_second
where time_value is null



      
    ) dbt_internal_test