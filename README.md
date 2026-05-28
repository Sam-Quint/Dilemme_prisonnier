# Dilemme_prisonnier

## Context : 

2 prisonniers sont dans des salles séparé sans communication. 
Ils sont 2 choix menant à 3 concéquences possibles.
- Coopéré (avec leur camarade)
- Trahir (leur camarade)

voici les conséquences : 

Conséquences 1 : 
- Coopère -> Libre
- Coopère -> Libre

Dans ce cas, les deux ont coopéré ensemble et sont libre.

Conséquences 2 : 
- Coopère -> Prison_max
- Trahit -> Libre
 
Dans ce cas, celui qui a trahit est libre mais l'autre qui a coopéré ce retrouve avec une sentence maximal.

 Conséquences 3 : 
 - Trahit -> Prison moitié 
 - Trahit -> Prison moitié

Dans ce cas, les deux ont trahit l'autre et donc les deux on obtenue une peine de prison allégé. 

## Arborescence

- \ data                                                                        <------ Localisation des données
- \ data \ Bronze (json)                                                        <------ Bronze
- \ data \ Silver (parquet)                                                     <------ Silver
- \ data \ Gold (DuckDB)                                                        <------ Gold

- \ Tournois                                                                    <------ Localisation du traitement et déroulement des tournois
- \ Tournois \ tournoi.py                                                       <------ Script qui gère les tounois et le déroulé. 
- \ Tournois \ personnalites.py                                                 <------ Gère les personnalités et leur choix.

- \ Traitement \ Transforme_json_to_parquet.py                                  <------ Transforme JSON en parquet

- \ Windmill \ s1_Bronze.py                                                     <------ Transforme JSON en parquet pour windmill
- \ Windmill \ s2_Dbt.py                                                        <------ Lance et traite dbt pour windmill

- \ models \ marts (Tables - DBT)                                               <------ Tables pour DuckDB
- \ models \ marts \ schema.yml (Schéma des tables)                             <------ Tables pour DuckDB
- \ models \ staging (View - DBT)                                               <------ Views pour DuckDB
- \ models \ staging \ schema.yml (Schéma des tables)                           <------ Tables pour DuckDB

## Structure Json 

{ 
    - ID_Tournoi : "Exemple ID"
    - Nb_tour : XXXX
    - Player_A : "Personnalité"
    - Player_B : "Personnalité"
    - Runs : [
        {
            - Run : X
            - Choix_P_A : "Choix"
            - Choix_P_B : "Choix"
            - Resultat_P_A : "Resultat"
            - Resultat_P_B : "Resultat"
        }
    ]
}

### Possibilité 

Personnalité : 
- Coopérer : coopère tout le temps
- Hazard : choisit au hazard
- Reflexion : réagit en fonction de son taux de libération
- Trahir : trahit tout le temps
- TitforTat" : coopère au premier round, puis imite le choix de l'adversaire au round précédent (non implémenté ici)
- "GrimTrigger": coopère tant que l'adversaire coopère, mais trahit à jamais si l'adversaire trahit une fois (non implémenté ici)
- "RandomTitforTat": coopère au premier round, puis imite le choix de l'adversaire au round précédent avec une probabilité de 80%, sinon fait un choix aléatoire (non implémenté ici)
- "Pavlov" : coopère si les deux joueurs ont fait le même choix au round précédent, sinon trahit (non implémenté ici)
- "LLM libre" : utilise un modèle de langage pour décider, mais sans historique ni objectif. (non implémenté ici)

Choix : 
- Balancé
- Ne rien dire

Résultat : 
- Prison max
- Libre
- Peine partagé

## Tournois 

### Prompt : 

#### Personnalité Coopérer : 
Répond toujours "Coopérer"

#### Personnalité Trahir : 
Répond toujours "Trahir"

#### Personnalité Hazard : 
Choisit une réponse au hazard

#### Personnalité Reflexion : 
Contexte : 
Toi et ton camarade ont était arreté pour un Crime. Tu ne peux pas communiquer avec lui.
Si vous Coopéré ensemble vous êtes tout les deux libre. 
Si tu coopère mais ton camarade te trahit, il est libre et toi tu obtiens prison à vie. 
Si tu trahit et lui coopère, tu es libre et lui obtiens la prison à vie. 
Si vous vous trahissez mutuellement, vous avez tout les deux une peine de prison allégé. 
Tu dois réfléchir en fonction de ton taux de libération.

Réponse : 
Tu réponds toujours "Coopéré" ou "Trahit"


