
  
    
    

    create  table
      "dilemme_prisonnier"."main"."mart_matchup_liberte__dbt_tmp"
  
    as (
      

SELECT
    personnalite,
    adversaire,
    nb_tournois,
    total_rounds,
    taux_libre,
    taux_prison,
    taux_peine
FROM "dilemme_prisonnier"."main"."mart_matchup"
ORDER BY taux_libre DESC
    );
  
  