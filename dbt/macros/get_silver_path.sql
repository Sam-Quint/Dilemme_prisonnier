{% macro get_silver_path() %}
{%- if execute -%}
    {%- set query -%}
        SELECT regexp_replace(path, '[/\\][^/\\]+$', '') || '/../Silver/silver.parquet'
        FROM duckdb_databases()
        WHERE path IS NOT NULL AND path != ''
        LIMIT 1
    {%- endset -%}
    {%- set result = run_query(query) -%}
    {{ result.columns[0].values()[0] }}
{%- else -%}
    Data/Silver/silver.parquet
{%- endif -%}
{% endmacro %}
