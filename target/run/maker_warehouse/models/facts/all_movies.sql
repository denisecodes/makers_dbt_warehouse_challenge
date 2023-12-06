
  
    

  create  table "mydb"."dbt_warehouse"."all_movies__dbt_tmp"
  
  
    as
  
  (
    
  
SELECT
*
FROM "mydb"."dbt_warehouse"."movies"
  );
  