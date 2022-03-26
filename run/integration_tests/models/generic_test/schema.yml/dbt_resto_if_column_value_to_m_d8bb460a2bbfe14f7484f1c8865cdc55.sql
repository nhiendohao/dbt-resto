select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

  

  with exceptions as (
    select  number_only
    from    DEMO.dbt_resto_integration_tests_snowflake.verify_if_column_value_to_match_regex
    where   not(regexp_instr(number_only, '[0-9]') > 0)
  )
  select * from exceptions


      
    ) dbt_internal_test