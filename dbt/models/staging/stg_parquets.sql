{{ config(materialized='view') }}

SELECT * FROM read_parquet('{{ get_silver_path() }}')
