{{ config(materialized='table') }}

WITH base AS (
    SELECT
        ID_Tournoi,
        LEAST(Player_A, Player_B)    AS perso_1,
        GREATEST(Player_A, Player_B) AS perso_2,
        Run,
        CASE WHEN Choix_P_A = 'Coopéré' AND Choix_P_B = 'Coopéré' THEN 1 ELSE 0 END AS is_coop
    FROM {{ ref('stg_parquets') }}
),
grouped AS (
    SELECT *,
        Run - ROW_NUMBER() OVER (PARTITION BY ID_Tournoi, is_coop ORDER BY Run) AS streak_id
    FROM base
),
streaks AS (
    SELECT
        ID_Tournoi, perso_1, perso_2,
        COUNT(*) AS longueur_serie
    FROM grouped
    WHERE is_coop = 1
    GROUP BY ID_Tournoi, perso_1, perso_2, streak_id
)
SELECT
    perso_1,
    perso_2,
    COUNT(*)                            AS nb_series,
    ROUND(AVG(longueur_serie), 2)       AS longueur_moyenne,
    MAX(longueur_serie)                 AS longueur_max,
    MIN(longueur_serie)                 AS longueur_min
FROM streaks
GROUP BY perso_1, perso_2
ORDER BY longueur_moyenne DESC
