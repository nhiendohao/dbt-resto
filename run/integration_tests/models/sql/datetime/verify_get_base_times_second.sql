
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_get_base_times_second 
  
   as (
    
    
    
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



  );
