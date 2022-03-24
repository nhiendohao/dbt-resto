
  create or replace  view DEMO.dbt_resto_integration_tests_snowflake.verify_get_table_alias_dat 
  
   as (
    

select  'verify_get_table_alias_dat' as actual,
        concat('verify_get_table_alias', '_dat') as expected
  );
