
    
    

select
    time_key as unique_field,
    count(*) as n_records

from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_minute
where time_key is not null
group by time_key
having count(*) > 1


