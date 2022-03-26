

  

  with exceptions as (
    select  text_only
    from    DEMO.dbt_resto_integration_tests_snowflake.verify_if_column_value_to_match_regex
    where   not(regexp_instr(text_only, '[a-zA-z]') > 0)
  )
  select * from exceptions

