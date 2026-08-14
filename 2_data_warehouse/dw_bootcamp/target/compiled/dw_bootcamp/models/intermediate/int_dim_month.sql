with base as (
    select distinct
        year,
        month,
        year_month_key
    from "dbt_db"."public"."stg_airline_delay_cause"
)

select
    year_month_key                     as month_id,
    year,
    month
from base