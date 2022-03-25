select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    time_value as unique_field,
    count(*) as n_records

from DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_hour
where time_value is not null
group by time_value
having count(*) > 1



      
    ) dbt_internal_test