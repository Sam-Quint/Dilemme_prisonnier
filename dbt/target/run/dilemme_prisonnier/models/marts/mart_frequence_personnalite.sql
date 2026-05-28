
  
    
    

    create  table
      "dilemme_prisonnier"."main"."mart_frequence_personnalite__dbt_tmp"
  
    as (
      

WITH combined AS (
    SELECT Player_A AS personnalite, ID_Tournoi FROM "dilemme_prisonnier"."main"."stg_parquets"
    UNION ALL
    SELECT Player_B AS personnalite, ID_Tournoi FROM "dilemme_prisonnier"."main"."stg_parquets"
)
SELECT
    personnalite,
    COUNT(DISTINCT ID_Tournoi) AS nb_tournois,
    COUNT(*)                   AS total_rounds
FROM combined
GROUP BY personnalite
ORDER BY nb_tournois DESC, total_rounds DESC
    );
  
  