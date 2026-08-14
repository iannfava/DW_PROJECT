
  
    

  create  table "dbt_db"."public"."int_dim_airport__dbt_tmp"
  
  
    as
  
  (
    with base as (
    select
        airport,
        airport_name
    from "dbt_db"."public"."stg_airline_delay_cause"
)

select
    airport                              as airport_id,
    max(airport_name)                    as airport_name
from base
group by airport
  );
  