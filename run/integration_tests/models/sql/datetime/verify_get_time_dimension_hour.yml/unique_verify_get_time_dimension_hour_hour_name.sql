select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    hour_name as unique_field,
    count(*) as n_records

from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour
where hour_name is not null
group by hour_name
having count(*) > 1



      
    ) dbt_internal_test