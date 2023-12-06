
SELECT
title,
ROUND(CAST(AVG(duration) AS NUMERIC), 2) as avg_duration
FROM mydb.public.raw_netflix
GROUP BY title
ORDER BY avg_duration DESC