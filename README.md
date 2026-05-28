# Dilemme_prisonnier

## Contexte

2 prisonniers sont dans des salles séparées sans communication.
Ils ont 2 choix menant à 3 conséquences possibles.

| Joueur A | Joueur B | Résultat A | Résultat B |
|---|---|---|---|
| Coopère | Coopère | Libre | Libre |
| Coopère | Trahit | Prison_max | Libre |
| Trahit | Coopère | Libre | Prison_max |
| Trahit | Trahit | Peine_partagée | Peine_partagée |

## Arborescence

```
Dilemme_prisonnier/
├── Data/
│   ├── Bronze/       → Tournois bruts (JSON)
│   ├── Silver/       → silver.parquet (1 ligne par round)
│   └── Gold/         → dilemme_prisonnier.duckdb (DBT)
│
├── Tournois/
│   ├── tournoi.py        → Moteur de tournoi + sauvegarde JSON
│   └── personnalites.py  → Toutes les personnalités et leurs logiques
│
├── Traitement/
│   └── Transforme_json_to_parquet.py  → Bronze → Silver
│
├── dbt/
│   ├── dbt_project.yml
│   ├── profiles.yml
│   └── models/
│       ├── staging/
│       │   ├── stg_parquets.sql   → Vue brute de silver.parquet
│       │   └── schema.yml
│       └── marts/
│           ├── mart_tournois_stats.sql       → Stats par tournoi
│           ├── mart_matchup.sql              → Comparaison personnalité vs adversaire
│           ├── mart_personnalite_global.sql  → Classement global par personnalité
│           └── schema.yml
│
└── Windmill/
    ├── s1_Bronze.py  → Transforme JSON en parquet (Windmill)
    └── s2_Dbt.py     → Lance DBT (Windmill)
```

## Structure du JSON (Bronze)

```json
{
    "ID_Tournoi": "04581d3b",
    "Date": "2026-05-27T11:24:19",
    "Nb_tour": 2000,
    "Player_A": "TitforTat",
    "Player_B": "Hazard",
    "Runs": [
        {
            "Run": 1,
            "Choix_P_A": "Coopéré",
            "Choix_P_B": "Trahir",
            "Resultat_P_A": "Prison_max",
            "Resultat_P_B": "Libre"
        }
    ]
}
```

## Structure du Parquet (Silver)

`silver.parquet` — une ligne par round, métadonnées du tournoi répétées :

| ID_Tournoi | Date | Nb_tour | Player_A | Player_B | Run | Choix_P_A | Choix_P_B | Resultat_P_A | Resultat_P_B |

## Personnalités

### Algorithmiques (rapides)

| Nom | Comportement |
|---|---|
| `Coopérer` | Toujours coopère |
| `Trahir` | Toujours trahit |
| `Hazard` | Choix aléatoire 50/50 |
| `TitforTat` | Coopère au round 1, imite ensuite le dernier choix de l'adversaire |
| `GrimTrigger` | Coopère jusqu'à la 1ère trahison adverse, puis trahit à jamais |
| `RandomTitforTat` | Imite l'adversaire à 80%, choix aléatoire à 20% |
| `Pavlov` | Coopère si même choix que l'adversaire au round précédent, sinon trahit |

### LLM via Ollama (lentes)

| Nom | Comportement |
|---|---|
| `Reflexion` | Décide en fonction de son taux de libération |
| `LLMLibre` | Décide librement sans historique ni objectif |
| `Egoiste` | Maximise son propre taux de libération, minimise celui de l'adversaire |
| `Altruiste` | Maximise le taux de libération global (soi + adversaire) |

## Lancer un tournoi

```bash
cd Tournois
python tournoi.py
```

Par défaut : 2 personnalités aléatoires parmi les rapides, 2000 rounds.
Pour inclure les LLM, passer `PERSONNALITES_RAPIDES` → `PERSONNALITES_DISPONIBLES` dans le `__main__`.

## Pipeline Bronze → Silver → Gold

```bash
# 1. Générer les tournois (Bronze)
cd Tournois && python tournoi.py

# 2. Transformer en Parquet (Silver)
cd Traitement && python Transforme_json_to_parquet.py

# 3. Construire les modèles DBT (Gold)
dbt run  --project-dir dbt --profiles-dir dbt
dbt test --project-dir dbt --profiles-dir dbt
```

## Modèles DBT

| Modèle | Type | Description |
|---|---|---|
| `stg_parquets` | View | Vue brute de silver.parquet |
| `mart_tournois_stats` | Table | Stats complètes par tournoi |
| `mart_matchup` | Table | Taux libre/prison/peine par couple (personnalité, adversaire) |
| `mart_personnalite_global` | Table | Classement global par personnalité (trié par taux libre) |
