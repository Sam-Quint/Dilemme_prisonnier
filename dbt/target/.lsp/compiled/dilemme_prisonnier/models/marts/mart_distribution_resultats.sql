

WITH combined AS (
    SELECT Player_A AS personnalite, Resultat_P_A AS resultat FROM "dilemme_prisonnier"."main"."stg_parquets"
    UNION ALL
    SELECT Player_B AS personnalite, Resultat_P_B AS resultat FROM "dilemme_prisonnier"."main"."stg_parquets"
)
SELECT
    personnalite,
    COUNT(*)                                                                               AS total_rounds,
    COUNT(CASE WHEN resultat = 'Libre'           THEN 1 END)                              AS nb_libre,
    COUNT(CASE WHEN resultat = 'Prison_max'      THEN 1 END)                              AS nb_prison,
    COUNT(CASE WHEN resultat = 'Peine_partagée'  THEN 1 END)                              AS nb_peine,
    ROUND(COUNT(CASE WHEN resultat = 'Libre'          THEN 1 END) * 100.0 / COUNT(*), 2)  AS pct_libre,
    ROUND(COUNT(CASE WHEN resultat = 'Prison_max'     THEN 1 END) * 100.0 / COUNT(*), 2)  AS pct_prison,
    ROUND(COUNT(CASE WHEN resultat = 'Peine_partagée' THEN 1 END) * 100.0 / COUNT(*), 2)  AS pct_peine
FROM combined
GROUP BY personnalite
ORDER BY personnalite