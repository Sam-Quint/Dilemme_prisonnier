SELECT
    ID_Tournoi,
    Run,
    Choix_P_A,
    Choix_P_B,
    Resultat_P_A,
    Resultat_P_B
FROM read_parquet('Data/Silver/silver.parquet')