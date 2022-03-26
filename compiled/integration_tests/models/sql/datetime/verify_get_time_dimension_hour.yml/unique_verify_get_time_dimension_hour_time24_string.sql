
    
    

select
    time24_string as unique_field,
    count(*) as n_records

from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour
where time24_string is not null
group by time24_string
having count(*) > 1


