{{ config(materialized='table') }}

SELECT
    personnalite,
    adversaire,
    nb_tournois,
    total_rounds,
    taux_libre,
    taux_prison,
    taux_peine
FROM {{ ref('mart_matchup') }}
ORDER BY taux_libre DESC
