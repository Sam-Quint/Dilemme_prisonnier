{{ config(materialized='table') }}

SELECT
    personnalite,
    SUM(nb_tournois)                                                               AS nb_tournois,
    SUM(total_rounds)                                                              AS total_rounds,
    ROUND(SUM(taux_libre             * total_rounds) / SUM(total_rounds), 2)      AS avg_taux_libre,
    ROUND(SUM(taux_prison            * total_rounds) / SUM(total_rounds), 2)      AS avg_taux_prison,
    ROUND(SUM(taux_peine             * total_rounds) / SUM(total_rounds), 2)      AS avg_taux_peine,
    ROUND(SUM(taux_cooperation       * total_rounds) / SUM(total_rounds), 2)      AS avg_taux_cooperation,
    ROUND(SUM(taux_trahison_mutuelle * total_rounds) / SUM(total_rounds), 2)      AS avg_taux_trahison_mutuelle

FROM {{ ref('mart_matchup') }}
GROUP BY personnalite
ORDER BY avg_taux_libre DESC
