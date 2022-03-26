
    
    

select
    hour24_number as unique_field,
    count(*) as n_records

from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour
where hour24_number is not null
group by hour24_number
having count(*) > 1


