{{ config(materialized='table') }}

SELECT
    LEAST(Player_A, Player_B)    AS perso_1,
    GREATEST(Player_A, Player_B) AS perso_2,
    COUNT(*)                     AS total_rounds,
    ROUND(
        (COUNT(CASE WHEN Resultat_P_A = 'Prison_max' THEN 1 END)
       + COUNT(CASE WHEN Resultat_P_B = 'Prison_max' THEN 1 END)) * 100.0 / (COUNT(*) * 2), 2
    )                            AS taux_prison_combine,
    ROUND(COUNT(CASE WHEN Resultat_P_A = 'Prison_max' OR Resultat_P_B = 'Prison_max' THEN 1 END) * 100.0 / COUNT(*), 2)
                                 AS taux_rounds_avec_prison
FROM {{ ref('stg_parquets') }}
GROUP BY LEAST(Player_A, Player_B), GREATEST(Player_A, Player_B)
ORDER BY taux_prison_combine DESC
