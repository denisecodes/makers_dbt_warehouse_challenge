{{ config(
    materialized = 'view',
)}}
SELECT
    EXTRACT(YEAR FROM CAST("datetime" AS DATE)) AS "Year",
    EXTRACT(MONTH FROM CAST("datetime" AS DATE)) AS "Month",
    SUM(duration) AS "Total_Duration"
FROM
    {{ source("raw", "raw_netflix") }}
GROUP BY
    EXTRACT(YEAR FROM CAST("datetime" AS DATE)),
    EXTRACT(MONTH FROM CAST("datetime" AS DATE))
ORDER BY
    "Year", "Month"
