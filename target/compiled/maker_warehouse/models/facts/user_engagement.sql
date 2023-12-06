
SELECT 
DISTINCT(user_id),
COUNT(DISTINCT(title)) AS total_titles,
SUM(duration) AS total_duration
FROM mydb.public.raw_netflix
GROUP BY user_id