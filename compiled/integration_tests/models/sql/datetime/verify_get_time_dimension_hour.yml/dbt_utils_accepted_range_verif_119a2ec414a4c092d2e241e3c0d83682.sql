

with meet_condition as(
  select *
  from DEMO.dbt_resto_integration_tests_snowflake.verify_get_time_dimension_hour
),

validation_errors as (
  select *
  from meet_condition
  where
    -- never true, defaults to an empty result set. Exists to ensure any combo of the `or` clauses below succeeds
    1 = 2
    -- records with a value >= min_value are permitted. The `not` flips this to find records that don't meet the rule.
    or not hour24_number >= 0
    -- records with a value <= max_value are permitted. The `not` flips this to find records that don't meet the rule.
    or not hour24_number <= 23
)

select *
from validation_errors

