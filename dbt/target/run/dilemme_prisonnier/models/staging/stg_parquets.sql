
  
  create view "dilemme_prisonnier"."main"."stg_parquets__dbt_tmp" as (
    

SELECT * FROM read_parquet('D:\Cours\VenvPyt\ETLELT\Dilemme_prisonnier\Data\Gold/../Silver/silver.parquet')
  );
