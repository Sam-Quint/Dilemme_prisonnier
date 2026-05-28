{{ config(materialized='view') }}

SELECT * FROM read_parquet('../Data/Silver/*.parquet')
