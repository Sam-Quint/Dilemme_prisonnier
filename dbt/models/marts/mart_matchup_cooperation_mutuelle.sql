{{ config(materialized='table') }}

SELECT
    personnalite,
    adversaire,
    nb_tournois,
    total_rounds,
    taux_cooperation        AS taux_cooperation_mutuelle
FROM {{ ref('mart_matchup') }}
ORDER BY taux_cooperation DESC
