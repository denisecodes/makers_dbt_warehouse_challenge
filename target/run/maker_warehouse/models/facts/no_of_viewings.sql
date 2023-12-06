
  
    

  create  table "mydb"."dbt_warehouse"."no_of_viewings__dbt_tmp"
  
  
    as
  
  (
    
SELECT
  title,
  COUNT(*) as total_views
FROM mydb.public.raw_netflix
GROUP BY title
ORDER BY total_views DESC
  );
  