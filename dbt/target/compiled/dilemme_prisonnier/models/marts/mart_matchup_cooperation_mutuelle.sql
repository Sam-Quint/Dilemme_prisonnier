

SELECT
    personnalite,
    adversaire,
    nb_tournois,
    total_rounds,
    taux_cooperation        AS taux_cooperation_mutuelle
FROM "dilemme_prisonnier"."main"."mart_matchup"
ORDER BY taux_cooperation DESC