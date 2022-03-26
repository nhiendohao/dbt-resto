
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_if_column_value_to_match_regex 
  
   as (
    select  'this is only test' as text_only,
        '09887216717' as number_only
  );
