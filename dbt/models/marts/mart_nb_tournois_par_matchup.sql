{{ config(materialized='table') }}

SELECT
    LEAST(Player_A, Player_B)    AS perso_1,
    GREATEST(Player_A, Player_B) AS perso_2,
    COUNT(DISTINCT ID_Tournoi)   AS nb_tournois,
    SUM(Nb_tour)                 AS total_rounds
FROM {{ ref('stg_parquets') }}
GROUP BY LEAST(Player_A, Player_B), GREATEST(Player_A, Player_B)
ORDER BY nb_tournois DESC
