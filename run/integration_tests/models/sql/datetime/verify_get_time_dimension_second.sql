
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_second 
  
   as (
    


  

with base_times as (

  
    
    
    with E1(N) as
    (
      select 1 union all select 1 union all select 1 union all
      select 1 union all select 1 union all select 1 union all
      select 1 union all select 1 union all select 1 union all select 1
    ) --10E+1 or 10 rows
    ,E2(N) as
    (
      select 1 from E1 a, E1 b
    ) --10E+2 or 100 rows
    ,E3(N) as
    (
      select 1 from E2 a, E2 b
    ) --10E+4 or 10,000 rows
    ,E4(N) as
    (
      select 1 FROM E3 a, E3 b
    ) --10E+8 or 100,000,000 rows
    ,EALL as (
      select  
              N,
              row_number() over (order by N) as value
      from    E4
      order by 2
       limit 86400 
    )
    select  dateadd(second, value, '1970-01-01') as time_value
    from    EALL



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
    

  date_part(minute, time_value)


 as 
    int
) as minute_number,
          concat(
            
  to_varchar(time_value, 'HH12MI00')


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
          ) as hour_minute_name, --string of HH:MM:00 AM/PM
          
  to_varchar(time_value, 'HH24MI00')


 as hour24_minute_name, --string of HH:MM:00

          cast(
    

  date_part(second, time_value)


 as 
    int
) as second_number,

          cast(
  to_varchar(time_value, 'HH24MISS')


 as 
    bigint
) as time_key --number of HHMMSS

from      base_times





  );
