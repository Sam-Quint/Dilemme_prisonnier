
  
    
    

    create  table
      "dilemme_prisonnier"."main"."mart_matchup__dbt_tmp"
  
    as (
      

WITH as_player_a AS (
    SELECT
        Player_A     AS personnalite,
        Player_B     AS adversaire,
        ID_Tournoi,
        Choix_P_A    AS choix,
        Choix_P_B    AS choix_adverse,
        Resultat_P_A AS resultat
    FROM "dilemme_prisonnier"."main"."stg_parquets"
),

as_player_b AS (
    SELECT
        Player_B     AS personnalite,
        Player_A     AS adversaire,
        ID_Tournoi,
        Choix_P_B    AS choix,
        Choix_P_A    AS choix_adverse,
        Resultat_P_B AS resultat
    FROM "dilemme_prisonnier"."main"."stg_parquets"
),

combined AS (
    SELECT * FROM as_player_a
    UNION ALL
    SELECT * FROM as_player_b
)

SELECT
    personnalite,
    adversaire,
    COUNT(DISTINCT ID_Tournoi)                                                                    AS nb_tournois,
    COUNT(*)                                                                                       AS total_rounds,
    ROUND(COUNT(CASE WHEN resultat = 'Libre'          THEN 1 END) * 100.0 / COUNT(*), 2)          AS taux_libre,
    ROUND(COUNT(CASE WHEN resultat = 'Prison_max'     THEN 1 END) * 100.0 / COUNT(*), 2)          AS taux_prison,
    ROUND(COUNT(CASE WHEN resultat = 'Peine_partagée' THEN 1 END) * 100.0 / COUNT(*), 2)          AS taux_peine,
    ROUND(COUNT(CASE WHEN choix = 'Coopéré' AND choix_adverse = 'Coopéré' THEN 1 END) * 100.0 / COUNT(*), 2) AS taux_cooperation,
    ROUND(COUNT(CASE WHEN choix = 'Trahir'  AND choix_adverse = 'Trahir'  THEN 1 END) * 100.0 / COUNT(*), 2) AS taux_trahison_mutuelle

FROM combined
GROUP BY personnalite, adversaire
ORDER BY personnalite, adversaire
    );
  
  