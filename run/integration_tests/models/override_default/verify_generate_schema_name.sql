
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_generate_schema_name 
  
   as (
    select  'dat' as actual,
        'dat' as expected

union all

select  'dbt_resto_integration_tests_snowflake' as actual,
        'dbt_resto_integration_tests_snowflake' as expected
  );
