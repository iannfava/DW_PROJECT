
  
    

  create  table "dbt_db"."public"."int_dim_carrier__dbt_tmp"
  
  
    as
  
  (
    with base as (
    select
        carrier,
        carrier_name
    from "dbt_db"."public"."stg_airline_delay_cause"
)

select
    carrier                              as carrier_id,
    max(carrier_name)                    as carrier_name
from base
group by carrier
  );
  