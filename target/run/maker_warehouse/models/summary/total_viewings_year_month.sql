
  create view "mydb"."dbt_warehouse"."total_viewings_year_month__dbt_tmp"
    
    
  as (
    
SELECT
    EXTRACT(YEAR FROM CAST("datetime" AS DATE)) AS "Year",
    EXTRACT(MONTH FROM CAST("datetime" AS DATE)) AS "Month",
    COUNT(*) AS "Total_Views"
FROM mydb.public.raw_netflix
GROUP BY
    EXTRACT(YEAR FROM CAST("datetime" AS DATE)),
    EXTRACT(MONTH FROM CAST("datetime" AS DATE))
ORDER BY
    "Year", "Month"
  );