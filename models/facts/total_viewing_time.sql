{{ config(
    materialized = 'table',
)}}
SELECT
title,
SUM(duration) as total_duration
FROM {{ source("raw", "raw_netflix") }}
GROUP BY title
ORDER BY total_duration DESC
