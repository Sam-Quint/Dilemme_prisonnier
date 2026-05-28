SELECT
    ID_Tournoi,
    Date::TIMESTAMP                                                                               AS date_tournoi,
    Player_A,
    Player_B,
    Nb_tour,

    -- Résultats Player A
    COUNT(CASE WHEN Resultat_P_A = 'Libre'           THEN 1 END)                                  AS libres_A,
    COUNT(CASE WHEN Resultat_P_A = 'Prison_max'      THEN 1 END)                                  AS prisons_A,
    COUNT(CASE WHEN Resultat_P_A = 'Peine_partagée'  THEN 1 END)                                  AS peines_A,
    ROUND(COUNT(CASE WHEN Resultat_P_A = 'Libre'          THEN 1 END) * 100.0 / Nb_tour, 2)       AS taux_libre_A,
    ROUND(COUNT(CASE WHEN Resultat_P_A = 'Prison_max'     THEN 1 END) * 100.0 / Nb_tour, 2)       AS taux_prison_A,
    ROUND(COUNT(CASE WHEN Resultat_P_A = 'Peine_partagée' THEN 1 END) * 100.0 / Nb_tour, 2)       AS taux_peine_A,

    -- Résultats Player B
    COUNT(CASE WHEN Resultat_P_B = 'Libre'           THEN 1 END)                                  AS libres_B,
    COUNT(CASE WHEN Resultat_P_B = 'Prison_max'      THEN 1 END)                                  AS prisons_B,
    COUNT(CASE WHEN Resultat_P_B = 'Peine_partagée'  THEN 1 END)                                  AS peines_B,
    ROUND(COUNT(CASE WHEN Resultat_P_B = 'Libre'          THEN 1 END) * 100.0 / Nb_tour, 2)       AS taux_libre_B,
    ROUND(COUNT(CASE WHEN Resultat_P_B = 'Prison_max'     THEN 1 END) * 100.0 / Nb_tour, 2)       AS taux_prison_B,
    ROUND(COUNT(CASE WHEN Resultat_P_B = 'Peine_partagée' THEN 1 END) * 100.0 / Nb_tour, 2)       AS taux_peine_B,

    -- Coopération et trahison mutuelle
    COUNT(CASE WHEN Choix_P_A = 'Coopéré' AND Choix_P_B = 'Coopéré' THEN 1 END)                  AS rounds_cooperation,
    COUNT(CASE WHEN Choix_P_A = 'Trahir'  AND Choix_P_B = 'Trahir'  THEN 1 END)                  AS rounds_trahison_mutuelle,
    ROUND(COUNT(CASE WHEN Choix_P_A = 'Coopéré' AND Choix_P_B = 'Coopéré' THEN 1 END) * 100.0 / Nb_tour, 2) AS taux_cooperation,
    ROUND(COUNT(CASE WHEN Choix_P_A = 'Trahir'  AND Choix_P_B = 'Trahir'  THEN 1 END) * 100.0 / Nb_tour, 2) AS taux_trahison_mutuelle

FROM "dilemme_prisonnier"."main"."stg_parquets"
GROUP BY ID_Tournoi, Date, Player_A, Player_B, Nb_tour