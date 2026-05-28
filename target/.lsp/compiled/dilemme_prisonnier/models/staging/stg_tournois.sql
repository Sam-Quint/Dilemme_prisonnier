SELECT DISTINCT
    ID_Tournoi,
    Date::TIMESTAMP AS date_tournoi,
    Nb_tour,
    Player_A,
    Player_B
FROM read_parquet('Data/Silver/silver.parquet')