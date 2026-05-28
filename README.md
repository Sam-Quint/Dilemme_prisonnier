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
│           ├── schema.yml
│           ├── mart_tournois_stats.sql
│           ├── mart_matchup.sql
│           ├── mart_personnalite_global.sql
│           ├── mart_frequence_personnalite.sql
│           ├── mart_classement_liberte.sql
│           ├── mart_distribution_resultats.sql
│           ├── mart_taux_cooperation.sql
│           ├── mart_matchup_liberte.sql
│           ├── mart_matchup_cooperation_mutuelle.sql
│           ├── mart_matchup_trahison_mutuelle.sql
│           ├── mart_exploitation.sql
│           ├── mart_meilleur_adversaire.sql
│           ├── mart_pire_adversaire.sql
│           ├── mart_evolution_early_late.sql
│           ├── mart_serie_cooperation.sql
│           ├── mart_reaction_apres_trahison.sql
│           ├── mart_meilleur_matchup.sql
│           ├── mart_pire_matchup.sql
│           └── mart_nb_tournois_par_matchup.sql
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

# 3. Construire les modèles DBT (Gold) — depuis le dossier dbt/
cd dbt
dbt run
dbt test
```

> Les commandes dbt doivent être lancées depuis le dossier `dbt/` pour que les chemins relatifs (`../Data/Gold/`, `../Data/Silver/`) soient résolus correctement.

## Modèles DBT

### Staging

| Modèle | Type | Description |
|---|---|---|
| `stg_parquets` | View | Vue brute de silver.parquet — base de tous les marts |

### Marts — Personnalités

| Modèle | Description |
|---|---|
| `mart_personnalite_global` | Performance globale par personnalité (taux libre moyen pondéré) |
| `mart_frequence_personnalite` | Nombre de tournois et total de rounds par personnalité |
| `mart_classement_liberte` | Classement des personnalités par taux de liberté |
| `mart_distribution_resultats` | Distribution en % des résultats (Libre / Prison_max / Peine_partagée) |
| `mart_taux_cooperation` | % de rounds avec choix Coopéré vs Trahir par personnalité |
| `mart_reaction_apres_trahison` | Comportement au round suivant une trahison subie |
| `mart_evolution_early_late` | Comportement en début (early) vs fin (late) de tournoi |

### Marts — Matchups (paire personnalité/adversaire)

| Modèle | Description |
|---|---|
| `mart_matchup` | Taux libre/prison/peine par couple (personnalité, adversaire) |
| `mart_matchup_liberte` | Taux de liberté par paire |
| `mart_matchup_cooperation_mutuelle` | % de rounds où les deux coopèrent |
| `mart_matchup_trahison_mutuelle` | % de rounds où les deux trahissent |
| `mart_exploitation` | % de rounds où une personnalité trahit l'autre qui coopère |
| `mart_meilleur_adversaire` | Adversaire contre qui chaque personnalité obtient le plus de liberté |
| `mart_pire_adversaire` | Adversaire contre qui chaque personnalité obtient le moins de liberté |

### Marts — Paires symétriques

| Modèle | Description |
|---|---|
| `mart_nb_tournois_par_matchup` | Nombre de tournois et de rounds par paire (ordre non significatif) |
| `mart_meilleur_matchup` | Paires avec le meilleur taux de liberté combiné |
| `mart_pire_matchup` | Paires avec le plus fort taux de prison combiné |
| `mart_serie_cooperation` | Séries de coopération mutuelle consécutives par paire |

### Marts — Historique brut

| Modèle | Description |
|---|---|
| `mart_tournois_stats` | Stats brutes par tournoi (une ligne par tournoi) |
