{{ config(
    materialized = 'table',
)}}
SELECT
  title,
  COUNT(*) as total_views
FROM {{ source("raw", "raw_netflix") }}
GROUP BY title
ORDER BY total_views DESC
