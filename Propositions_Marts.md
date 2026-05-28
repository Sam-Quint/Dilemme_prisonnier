# Propositions de Marts

Coche ✅ ou ❌ chaque proposition. Une fois validées, les marts seront créés.

---

## Catégorie 1 — Statistiques générales par personnalité

| # | Mart | Description |
|---|---|---|
|✅| `mart_frequence_personnalite` | Nombre de fois que chaque personnalité est apparue en tournoi (total de rounds joués) |
| ✅ | `mart_classement_liberte` | Classement des personnalités par taux de liberté global, toutes confrontations confondues |
| ✅ | `mart_distribution_resultats` | Pour chaque personnalité : % Libre / % Prison_max / % Peine_partagée |
| ✅ | `mart_taux_cooperation` | Pour chaque personnalité : % de rounds où elle a choisi de coopérer (indépendamment du résultat) |

---

## Catégorie 2 — Confrontations (matchups)

| # | Mart | Description |
|---|---|---|
| ✅ | `mart_matchup_liberte` | Pour chaque paire (personnalité A vs personnalité B) : taux de liberté de chacun |
| ✅ | `mart_matchup_cooperation_mutuelle` | Pour chaque paire : % de rounds où les **deux** ont coopéré (les deux sont libres) |
| ✅ | `mart_matchup_trahison_mutuelle` | Pour chaque paire : % de rounds où les **deux** ont trahi (peine partagée) |
| ✅| `mart_exploitation` | Pour chaque paire : % de rounds où A trahit pendant que B coopère (A exploite B) |
| ✅ | `mart_meilleur_adversaire` | Pour chaque personnalité : contre qui elle obtient le meilleur taux de liberté |
| ✅ | `mart_pire_adversaire` | Pour chaque personnalité : contre qui elle obtient le pire taux de liberté |

---

## Catégorie 3 — Comportement au fil du temps

| # | Mart | Description |
|---|---|---|
| ✅ | `mart_evolution_early_late` | Comparaison du taux de liberté en début de tournoi (rounds 1-100) vs fin (derniers 100 rounds) |
| ✅ | `mart_serie_cooperation` | Longueur moyenne des séries de coopération mutuelle consécutives par matchup |
| ✅ | `mart_reaction_apres_trahison` | Après avoir été trahi, quel % de la prochaine décision est "Trahir" vs "Coopérer" selon la personnalité |

---

## Catégorie 4 — Analyses globales

| # | Mart | Description |
|---|---|---|
| ✅ | `mart_meilleur_matchup` | Les paires qui génèrent le plus de liberté combinée (meilleure coopération globale) |
| ✅ | `mart_pire_matchup` | Les paires qui génèrent le plus de Prison_max (les plus destructrices) |
| ✅ | `mart_nb_tournois_par_matchup` | Nombre de tournois joués pour chaque paire de personnalités |
