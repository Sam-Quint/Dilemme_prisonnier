{{ config(materialized='table') }}

WITH combined AS (
    SELECT Player_A AS personnalite, Choix_P_A AS choix FROM {{ ref('stg_parquets') }}
    UNION ALL
    SELECT Player_B AS personnalite, Choix_P_B AS choix FROM {{ ref('stg_parquets') }}
)
SELECT
    personnalite,
    COUNT(*)                                                                              AS total_rounds,
    COUNT(CASE WHEN choix = 'Coopéré' THEN 1 END)                                        AS nb_cooperations,
    COUNT(CASE WHEN choix = 'Trahir'  THEN 1 END)                                        AS nb_trahisons,
    ROUND(COUNT(CASE WHEN choix = 'Coopéré' THEN 1 END) * 100.0 / COUNT(*), 2)           AS taux_cooperation,
    ROUND(COUNT(CASE WHEN choix = 'Trahir'  THEN 1 END) * 100.0 / COUNT(*), 2)           AS taux_trahison
FROM combined
GROUP BY personnalite
ORDER BY taux_cooperation DESC
