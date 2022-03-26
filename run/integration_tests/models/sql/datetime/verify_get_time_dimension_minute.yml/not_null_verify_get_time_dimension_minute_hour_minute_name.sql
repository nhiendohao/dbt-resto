select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_minute
where hour_minute_name is null



      
    ) dbt_internal_test