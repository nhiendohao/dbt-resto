with data as (
  select   cast('2022-03-01' as 
    date
) as expected
          ,'20220301'     as "yyyymmdd"
          ,'SOME_TEXT'    as "invalid"
          ,'03/01/22'     as "mm/dd/yy"
          ,'22.03.01'     as "yy.mm.dd"
          ,'01/03/22'     as "dd/mm/yy"
          ,'01.03.22'     as "dd.mm.yy"
          ,'01-03-22'     as "dd-mm-yy"
          ,'01-Mar-22'    as "dd-Mon-yy"
          ,'Mar 01, 22'   as "Mon dd, yy"
          ,'03-01-22'     as "mm-dd-yy"
          ,'22/03/01'     as "yy/mm/dd"
          ,'220301'       as "yymmdd"
          ,'2022-03-01'   as "yyyy-mm-dd"
          ,'03/01/2022'   as "mm/dd/yyyy"
          ,'2022.03.01'   as "yyyy.mm.dd"
          ,'01/03/2022'   as "dd/mm/yyyy"
          ,'01.03.2022'   as "dd.mm.yyyy"
          ,'01-03-2022'   as "dd-mm-yyyy"
          ,'01 Mar 2022'  as "dd Mon yyyy"
          ,'Mar 01, 2022' as "Mon dd, yyyy"
          ,'03-01-2022'   as "mm-dd-yyyy"
          ,'2022/03/01'   as "yyyy/mm/dd"
)

select try_to_date("yyyymmdd"::varchar, 'YYYYMMDD') as actual, expected from data union all
select try_to_date("invalid"::varchar, 'YYYYMMDD') as actual, null as expected from data union all
select try_to_date("mm/dd/yy"::varchar, 'MM/DD/YY') as actual, expected from data union all
select try_to_date("yy.mm.dd"::varchar, 'YY.MM.DD') as actual, expected from data union all
select try_to_date("dd/mm/yy"::varchar, 'DD/MM/YY') as actual, expected from data union all
select try_to_date("dd.mm.yy"::varchar, 'DD.MM.YY') as actual, expected from data union all
select try_to_date("dd-mm-yy"::varchar, 'DD-MM-YY') as actual, expected from data union all
select try_to_date("dd-Mon-yy"::varchar, 'DD-MON-YY') as actual, expected from data union all
select try_to_date("Mon dd, yy"::varchar, 'MON DD, YY') as actual, expected from data union all
select try_to_date("mm-dd-yy"::varchar, 'MM-DD-YY') as actual, expected from data union all
select try_to_date("yy/mm/dd"::varchar, 'YY/MM/DD') as actual, expected from data union all
select try_to_date("yymmdd"::varchar, 'YYMMDD') as actual, expected from data union all
select try_to_date("yyyy-mm-dd"::varchar, 'YYYY-MM-DD') as actual, expected from data union all
select try_to_date("mm/dd/yyyy"::varchar, 'MM/DD/YYYY') as actual, expected from data union all
select try_to_date("yyyy.mm.dd"::varchar, 'YYYY.MM.DD') as actual, expected from data union all
select try_to_date("dd/mm/yyyy"::varchar, 'DD/MM/YYYY') as actual, expected from data union all
select try_to_date("dd.mm.yyyy"::varchar, 'DD.MM.YYYY') as actual, expected from data union all
select try_to_date("dd-mm-yyyy"::varchar, 'DD-MM-YYYY') as actual, expected from data union all
select try_to_date("dd Mon yyyy"::varchar, 'DD MON YYYY') as actual, expected from data union all
select try_to_date("Mon dd, yyyy"::varchar, 'MON DD, YYYY') as actual, expected from data union all
select try_to_date("mm-dd-yyyy"::varchar, 'MM-DD-YYYY') as actual, expected from data union all
select try_to_date("yyyy/mm/dd"::varchar, 'YYYY/MM/DD') as actual, expected from data