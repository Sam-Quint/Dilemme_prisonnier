{{ config(materialized='table') }}

WITH reactions AS (
    SELECT
        Player_A AS personnalite,
        Choix_P_B AS choix_adverse,
        LEAD(Choix_P_A) OVER (PARTITION BY ID_Tournoi ORDER BY Run) AS prochain_choix
    FROM {{ ref('stg_parquets') }}
    UNION ALL
    SELECT
        Player_B AS personnalite,
        Choix_P_A AS choix_adverse,
        LEAD(Choix_P_B) OVER (PARTITION BY ID_Tournoi ORDER BY Run) AS prochain_choix
    FROM {{ ref('stg_parquets') }}
)
SELECT
    personnalite,
    COUNT(*)                                                                                    AS nb_trahisons_subies,
    COUNT(CASE WHEN prochain_choix = 'Trahir'  THEN 1 END)                                     AS reactions_trahir,
    COUNT(CASE WHEN prochain_choix = 'Coopéré' THEN 1 END)                                     AS reactions_cooperer,
    ROUND(COUNT(CASE WHEN prochain_choix = 'Trahir'  THEN 1 END) * 100.0 / COUNT(*), 2)        AS pct_repond_trahison,
    ROUND(COUNT(CASE WHEN prochain_choix = 'Coopéré' THEN 1 END) * 100.0 / COUNT(*), 2)        AS pct_repond_cooperation
FROM reactions
WHERE choix_adverse = 'Trahir' AND prochain_choix IS NOT NULL
GROUP BY personnalite
ORDER BY personnalite
