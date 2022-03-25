
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_datepart 
  
   as (
    

with data as (
  select cast('2022-03-25 14:55:45' as 
    timestamp
) as input
)
select input, 'year' as date_part,          
    

  date_part(year, input)


 as actual,          2022 as expected from data union all
select input, 'month' as date_part,         
    

  date_part(month, input)


 as actual,         3 as expected from data union all
select input, 'day' as date_part,           
    

  date_part(day, input)


 as actual,           25 as expected from data union all
select input, 'dayofweek' as date_part,     
    

  date_part(dayofweek, input)


 as actual,     5 as expected from data union all
select input, 'dayofyear' as date_part,     
    

  date_part(dayofyear, input)


 as actual,     84 as expected from data union all
select input, 'week' as date_part,          
    

  date_part(week, input)


 as actual,          12 as expected from data union all
select input, 'quarter' as date_part,       
    

  date_part(quarter, input)


 as actual,       1 as expected from data union all

select input, 'hour' as date_part,          
    

  date_part(hour, input)


 as actual,          14 as expected from data union all
select input, 'minute' as date_part,        
    

  date_part(minute, input)


 as actual,        55 as expected from data union all
select input, 'second' as date_part,        
    

  date_part(second, input)


 as actual,        45 as expected from data
  );
