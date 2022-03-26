
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour 
  
   as (
    
  

with base_times as (
  
    

    
      select dateadd(hour, 0, '1970-01-01') as time_value
        union all
      select dateadd(hour, 1, '1970-01-01') as time_value
        union all
      select dateadd(hour, 2, '1970-01-01') as time_value
        union all
      select dateadd(hour, 3, '1970-01-01') as time_value
        union all
      select dateadd(hour, 4, '1970-01-01') as time_value
        union all
      select dateadd(hour, 5, '1970-01-01') as time_value
        union all
      select dateadd(hour, 6, '1970-01-01') as time_value
        union all
      select dateadd(hour, 7, '1970-01-01') as time_value
        union all
      select dateadd(hour, 8, '1970-01-01') as time_value
        union all
      select dateadd(hour, 9, '1970-01-01') as time_value
        union all
      select dateadd(hour, 10, '1970-01-01') as time_value
        union all
      select dateadd(hour, 11, '1970-01-01') as time_value
        union all
      select dateadd(hour, 12, '1970-01-01') as time_value
        union all
      select dateadd(hour, 13, '1970-01-01') as time_value
        union all
      select dateadd(hour, 14, '1970-01-01') as time_value
        union all
      select dateadd(hour, 15, '1970-01-01') as time_value
        union all
      select dateadd(hour, 16, '1970-01-01') as time_value
        union all
      select dateadd(hour, 17, '1970-01-01') as time_value
        union all
      select dateadd(hour, 18, '1970-01-01') as time_value
        union all
      select dateadd(hour, 19, '1970-01-01') as time_value
        union all
      select dateadd(hour, 20, '1970-01-01') as time_value
        union all
      select dateadd(hour, 21, '1970-01-01') as time_value
        union all
      select dateadd(hour, 22, '1970-01-01') as time_value
        union all
      select dateadd(hour, 23, '1970-01-01') as time_value



)

select    time_value,--string of HH:MM:SS
          concat(
            
  to_varchar(time_value, 'HH12MISS')


,
            ' ',
            case
              when cast(
    

  date_part(hour, time_value)


 as 
    int
) between 12 and 23
                then  'PM'
              else    'AM'
            end
          ) as time_string, --string of HH:MM:SS AM/PM
          
  to_varchar(time_value, 'HH24MISS')


 as time24_string,--string of HH:MM:SS

          case
            when cast(
    

  date_part(hour, time_value)


 as 
    int
) > 12
              then  cast(
    

  date_part(hour, time_value)


 as 
    int
) - 12
            else    cast(
    

  date_part(hour, time_value)


 as 
    int
)
          end as hour_number,
          concat(
            
  to_varchar(time_value, 'HH120000')


,
            ' ',
            case
              when cast(
    

  date_part(hour, time_value)


 as 
    int
) between 12 and 23
                then  'PM'
              else    'AM'
            end
          ) as hour_name, --string of HH:00:00 AM/PM
          cast(
    

  date_part(hour, time_value)


 as 
    int
) as hour24_number,
          
  to_varchar(time_value, 'HH240000')


 as hour24_name, --string of HH:00:00

          cast(
  to_varchar(time_value, 'HH24MISS')


 as 
    bigint
) as time_key --number of HHMMSS

from      base_times
order by  1



  );
