
    
    

select
    hour24_minute_name as unique_field,
    count(*) as n_records

from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_minute
where hour24_minute_name is not null
group by hour24_minute_name
having count(*) > 1


