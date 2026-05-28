{{ config(materialized='table') }}

WITH ranked AS (
    SELECT
        personnalite,
        adversaire,
        taux_libre,
        total_rounds,
        RANK() OVER (PARTITION BY personnalite ORDER BY taux_libre ASC) AS rang
    FROM {{ ref('mart_matchup') }}
)
SELECT
    personnalite,
    adversaire          AS pire_adversaire,
    taux_libre,
    total_rounds
FROM ranked
WHERE rang = 1
ORDER BY personnalite
