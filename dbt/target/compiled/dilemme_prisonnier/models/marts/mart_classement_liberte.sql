

WITH combined AS (
    SELECT Player_A AS personnalite, Resultat_P_A AS resultat FROM "dilemme_prisonnier"."main"."stg_parquets"
    UNION ALL
    SELECT Player_B AS personnalite, Resultat_P_B AS resultat FROM "dilemme_prisonnier"."main"."stg_parquets"
)
SELECT
    ROW_NUMBER() OVER (ORDER BY COUNT(CASE WHEN resultat = 'Libre' THEN 1 END) * 1.0 / COUNT(*) DESC) AS classement,
    personnalite,
    COUNT(*)                                                                                            AS total_rounds,
    COUNT(CASE WHEN resultat = 'Libre' THEN 1 END)                                                     AS nb_libres,
    ROUND(COUNT(CASE WHEN resultat = 'Libre' THEN 1 END) * 100.0 / COUNT(*), 2)                        AS taux_libre
FROM combined
GROUP BY personnalite
ORDER BY classement