{{ config(materialized='table') }}

WITH combined AS (
    SELECT
        Player_A AS personnalite, Run, Nb_tour, Resultat_P_A AS resultat
    FROM {{ ref('stg_parquets') }}
    UNION ALL
    SELECT
        Player_B AS personnalite, Run, Nb_tour, Resultat_P_B AS resultat
    FROM {{ ref('stg_parquets') }}
),
phased AS (
    SELECT
        personnalite,
        resultat,
        CASE
            WHEN Run <= 100              THEN 'early'
            WHEN Run > Nb_tour - 100     THEN 'late'
        END AS phase
    FROM combined
    WHERE Run <= 100 OR Run > Nb_tour - 100
)
SELECT
    personnalite,
    phase,
    COUNT(*)                                                                             AS total_rounds,
    ROUND(COUNT(CASE WHEN resultat = 'Libre'          THEN 1 END) * 100.0 / COUNT(*), 2) AS taux_libre,
    ROUND(COUNT(CASE WHEN resultat = 'Prison_max'     THEN 1 END) * 100.0 / COUNT(*), 2) AS taux_prison,
    ROUND(COUNT(CASE WHEN resultat = 'Peine_partagée' THEN 1 END) * 100.0 / COUNT(*), 2) AS taux_peine
FROM phased
GROUP BY personnalite, phase
ORDER BY personnalite, phase
