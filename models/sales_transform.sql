{{ config(
  materialized='table',
  schema='MY_SCHEMA'
) }}

SELECT
  Product line,
  SUM(Quantity) as total_sales
FROM
  {{ ref('sales') }}
GROUP BY
  Product line;
