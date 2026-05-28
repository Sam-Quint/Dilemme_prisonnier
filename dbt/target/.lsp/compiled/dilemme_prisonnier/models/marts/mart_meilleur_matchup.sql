

SELECT
    LEAST(Player_A, Player_B)    AS perso_1,
    GREATEST(Player_A, Player_B) AS perso_2,
    COUNT(*)                     AS total_rounds,
    ROUND(
        (COUNT(CASE WHEN Resultat_P_A = 'Libre' THEN 1 END)
       + COUNT(CASE WHEN Resultat_P_B = 'Libre' THEN 1 END)) * 100.0 / (COUNT(*) * 2), 2
    )                            AS taux_liberte_combine,
    ROUND(COUNT(CASE WHEN Resultat_P_A = 'Libre' AND Resultat_P_B = 'Libre' THEN 1 END) * 100.0 / COUNT(*), 2)
                                 AS taux_double_liberte
FROM "dilemme_prisonnier"."main"."stg_parquets"
GROUP BY LEAST(Player_A, Player_B), GREATEST(Player_A, Player_B)
ORDER BY taux_liberte_combine DESC