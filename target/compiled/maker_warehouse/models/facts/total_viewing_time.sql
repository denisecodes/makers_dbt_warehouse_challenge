
SELECT
title,
SUM(duration) as total_duration
FROM mydb.public.raw_netflix
GROUP BY title
ORDER BY total_duration DESC