
SELECT
    EXTRACT(YEAR FROM CAST("datetime" AS DATE)) AS "Year",
    EXTRACT(MONTH FROM CAST("datetime" AS DATE)) AS "Month",
    ROUND(CAST(AVG(duration) AS NUMERIC), 2) AS "Average_Duration"
FROM
    mydb.public.raw_netflix
GROUP BY
    EXTRACT(YEAR FROM CAST("datetime" AS DATE)),
    EXTRACT(MONTH FROM CAST("datetime" AS DATE))
ORDER BY
    "Year", "Month"