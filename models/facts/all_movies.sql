{{ config(
    materialized = 'table',
)}}
  
SELECT
*
FROM {{ ref("movies") }}

