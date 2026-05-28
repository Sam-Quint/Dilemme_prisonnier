
  
    
    

    create  table
      "dilemme_prisonnier"."main"."mart_meilleur_adversaire__dbt_tmp"
  
    as (
      

WITH ranked AS (
    SELECT
        personnalite,
        adversaire,
        taux_libre,
        total_rounds,
        RANK() OVER (PARTITION BY personnalite ORDER BY taux_libre DESC) AS rang
    FROM "dilemme_prisonnier"."main"."mart_matchup"
)
SELECT
    personnalite,
    adversaire          AS meilleur_adversaire,
    taux_libre,
    total_rounds
FROM ranked
WHERE rang = 1
ORDER BY personnalite
    );
  
  