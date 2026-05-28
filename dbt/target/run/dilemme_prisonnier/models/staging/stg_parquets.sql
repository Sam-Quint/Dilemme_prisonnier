
  
  create view "dilemme_prisonnier"."main"."stg_parquets__dbt_tmp" as (
    

SELECT * FROM read_parquet('../Data/Silver/*.parquet')
  );
