
  
    

  create  table "mydb"."dbt_warehouse"."select_movies__dbt_tmp"
  
  
    as
  
  (
    
  
SELECT
*
FROM "mydb"."dbt_warehouse"."movies"
  );
  