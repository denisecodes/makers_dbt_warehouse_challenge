{{ config(
    materialized = 'table',
)}}
SELECT 
DISTINCT(user_id),
COUNT(DISTINCT(title)) AS total_titles,
SUM(duration) AS total_duration
FROM {{ source("raw", "raw_netflix") }}
GROUP BY user_id
