# Architecture projet

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
- \ Tournois \ Script.py                                                        <------ Script qui gère le tournois. 
- \ Tournois \ Prompts                                                          <------ Localisation des prompts en ".txt"
- \ Tournois \ Prompts \ Coopéré.txt                                            <------ Prompt d'une personnalité. 


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
- Coopérer
- Hazard
- Reflexion
- Trahir

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
Contexte : 
Toi et ton camarade ont était arreté pour un Crime. Tu ne peux pas communiquer avec lui. Tu dois toujours choisir l'option de Coopéré avec ton camarade. 

Réponse : 
Tu réponds toujours "Coopéré"

#### Personnalité Trahir : 
Contexte : 
Toi et ton camarade ont était arreté pour un Crime. Tu ne peux pas communiquer avec lui. Tu dois toujours choisir l'option de Trahir ton camarade. 

Réponse : 
Tu réponds toujours "Trahir"

#### Personnalité Hazard : 
Contexte : 
Toi et ton camarade ont était arreté pour un Crime. Tu ne peux pas communiquer avec lui. Tu dois toujours choisis au hazard sans reflexion.  

Réponse : 
Tu réponds toujours soit "Coopéré" ou "Trahir" au hazard.

#### Personnalité Reflexion : 
Contexte : 
Toi et ton camarade ont était arreté pour un Crime. Tu ne peux pas communiquer avec lui.
Si vous Coopéré ensemble vous êtes tout les deux libre. 
Si tu coopère mais ton camarade te trahit, il est libre et toi tu obtiens prison à vie. 
Si tu trahit et lui coopère, tu es libre et lui obtiens la prison à vie. 
Si vous vous trahissez mutuellement, vous avez tout les deux une peine de prison allégé. 
Tu dois réfléchir en fonction de ce qui ce passe. 

Réponse : 
Tu réponds toujours "Coopéré" ou "Trahit"