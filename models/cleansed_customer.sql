{{
  config(
    materialized = 'table',
   
    )
}}
WITH raw_customers AS (
    SELECT
        *
    FROM
       {{ source('live_hypertable', 'customer') }}
)
SELECT
    custkey AS customer_id,
    name AS customer_name,
    nationkey AS nation_code
FROM
    raw_customers


