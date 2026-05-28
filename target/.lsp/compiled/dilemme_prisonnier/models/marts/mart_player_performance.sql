SELECT
    Player_A                                       AS personnalite,
    Player_B                                       AS adversaire,
    COUNT(*)                                       AS nb_tournois,
    SUM(Nb_tour)                                   AS total_rounds,
    ROUND(AVG(taux_libre_A),           2)          AS avg_taux_libre,
    ROUND(AVG(taux_prison_A),          2)          AS avg_taux_prison,
    ROUND(AVG(taux_peine_A),           2)          AS avg_taux_peine,
    ROUND(AVG(taux_cooperation),       2)          AS avg_taux_cooperation,
    ROUND(AVG(taux_trahison_mutuelle), 2)          AS avg_taux_trahison_mutuelle

FROM "dilemme_prisonnier"."main"."mart_tournois_stats"
GROUP BY Player_A, Player_B
ORDER BY Player_A, Player_B