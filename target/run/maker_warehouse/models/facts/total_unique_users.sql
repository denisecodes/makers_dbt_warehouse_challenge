
  
    

  create  table "mydb"."dbt_warehouse"."total_unique_users__dbt_tmp"
  
  
    as
  
  (
    
SELECT 
COUNT(DISTINCT(user_id)) AS total_unique_users
FROM mydb.public.raw_netflix
  );
  