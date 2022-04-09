select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select  1 as result where 1 = 0


      
    ) dbt_internal_test