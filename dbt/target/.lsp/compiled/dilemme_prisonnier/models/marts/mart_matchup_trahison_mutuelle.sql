

SELECT
    personnalite,
    adversaire,
    nb_tournois,
    total_rounds,
    taux_trahison_mutuelle
FROM "dilemme_prisonnier"."main"."mart_matchup"
ORDER BY taux_trahison_mutuelle DESC