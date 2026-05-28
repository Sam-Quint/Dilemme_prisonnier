FROM ghcr.io/windmill-labs/windmill:main

# Dépendances Python nécessaires au pipeline
RUN python3 -m pip install --no-cache-dir \
    orjson \
    pyarrow \
    tqdm \
    ollama \
    rich \
    dbt-core \
    dbt-duckdb

# Note : on utilise dbt-core + dbt-duckdb (standard pip) à la place de dbt-fusion
# qui est un binaire Windows non disponible dans les images Linux.
# La syntaxe SQL et les modèles restent compatibles.
