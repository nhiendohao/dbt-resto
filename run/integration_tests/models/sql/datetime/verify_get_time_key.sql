
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_key 
  
   as (
    with data as (
  select cast('2022-03-25 14:55:45' as 
    timestamp
) as input
)

select  
  to_varchar(input, 'HH24MISS')


 as actual,
        '145545' as expected
from    data
union all
select  
  to_varchar(input, 'HH12MISS')


 as actual,
        '025545' as expected
from    data

union all

select  
  to_varchar(input, 'HH24MI00')


 as actual,
        '145500' as expected
from    data
union all
select  
  to_varchar(input, 'HH12MI00')


 as actual,
        '025500' as expected
from    data

union all

select  
  to_varchar(input, 'HH240000')


 as actual,
        '140000' as expected
from    data
union all
select  
  to_varchar(input, 'HH120000')


 as actual,
        '020000' as expected
from    data
  );
