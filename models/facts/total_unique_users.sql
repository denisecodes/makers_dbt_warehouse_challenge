{{ config(
    materialized = 'table',
)}}
SELECT 
COUNT(DISTINCT(user_id)) AS total_unique_users
FROM {{ source("raw", "raw_netflix") }}
