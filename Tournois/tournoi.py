import json
import uuid
from datetime import datetime
from pathlib import Path
import random

from rich.progress import Progress, BarColumn, TextColumn, MofNCompleteColumn, TimeRemainingColumn

from personnalites import (
    CHOIX_FIXES,
    choix_hazard, choix_tit_for_tat, choix_grim_trigger,
    choix_random_tit_for_tat, choix_pavlov,
    choix_reflexion, choix_llm_libre, choix_egoiste, choix_altruiste,
)

BRONZE_DIR = Path(__file__).parent.parent / "Data" / "Bronze"

RESULTATS = {
    ("Coopéré", "Coopéré"): ("Libre",         "Libre"),
    ("Coopéré", "Trahir"):  ("Prison_max",     "Libre"),
    ("Trahir",  "Coopéré"): ("Libre",          "Prison_max"),
    ("Trahir",  "Trahir"):  ("Peine_partagée", "Peine_partagée"),
}

PERSONNALITES_DISPONIBLES = [
    "Coopérer", "Trahir",
    "Hazard",
    "TitforTat", "GrimTrigger", "RandomTitforTat", "Pavlov",
    "Reflexion", "LLMLibre", "Egoiste", "Altruiste",
]

PERSONNALITES_RAPIDES = [
    "Coopérer", "Trahir",
    "Hazard",
    "TitforTat", "GrimTrigger", "RandomTitforTat", "Pavlov",
]


def get_choix(personnalite: str, historique_self: list[dict] = None) -> str:
    h = historique_self or []
    if personnalite in CHOIX_FIXES:
        return CHOIX_FIXES[personnalite]
    if personnalite == "Hazard":           return choix_hazard()
    if personnalite == "TitforTat":        return choix_tit_for_tat(h)
    if personnalite == "GrimTrigger":      return choix_grim_trigger(h)
    if personnalite == "RandomTitforTat":  return choix_random_tit_for_tat(h)
    if personnalite == "Pavlov":           return choix_pavlov(h)
    if personnalite == "Reflexion":        return choix_reflexion(h)
    if personnalite == "LLMLibre":         return choix_llm_libre()
    if personnalite == "Egoiste":          return choix_egoiste(h)
    if personnalite == "Altruiste":        return choix_altruiste(h)
    raise ValueError(f"Personnalité inconnue : {personnalite}")


def run_tournoi(personnalite_a: str, personnalite_b: str, nb_tours: int) -> dict:
    id_tournoi = str(uuid.uuid4())[:8]
    runs = []
    historique_a = []
    historique_b = []

    with Progress(
        TextColumn(f"[bold]{personnalite_a}[/] vs [bold]{personnalite_b}[/]  •  {nb_tours} rounds"),
        BarColumn(bar_width=40),
        MofNCompleteColumn(),
        TextColumn("[progress.percentage]{task.percentage:>5.1f}%"),
        TimeRemainingColumn(),
    ) as progress:
        task = progress.add_task("", total=nb_tours)

        for i in range(1, nb_tours + 1):
            choix_a = get_choix(personnalite_a, historique_a)
            choix_b = get_choix(personnalite_b, historique_b)

            resultat_a, resultat_b = RESULTATS[(choix_a, choix_b)]

            runs.append({
                "Run":          i,
                "Choix_P_A":    choix_a,
                "Choix_P_B":    choix_b,
                "Resultat_P_A": resultat_a,
                "Resultat_P_B": resultat_b,
            })
            historique_a.append({
                "Run":             i,
                "Choix_P_self":    choix_a,
                "Choix_P_adverse": choix_b,
                "Resultat_P_self": resultat_a,
            })
            historique_b.append({
                "Run":             i,
                "Choix_P_self":    choix_b,
                "Choix_P_adverse": choix_a,
                "Resultat_P_self": resultat_b,
            })

            progress.advance(task)

    return {
        "ID_Tournoi": id_tournoi,
        "Date":       datetime.now().isoformat(),
        "Nb_tour":    nb_tours,
        "Player_A":   personnalite_a,
        "Player_B":   personnalite_b,
        "Runs":       runs,
    }


def sauvegarder(tournoi: dict) -> Path:
    BRONZE_DIR.mkdir(parents=True, exist_ok=True)
    chemin = BRONZE_DIR / f"tournoi_{tournoi['ID_Tournoi']}.json"
    with open(chemin, "w", encoding="utf-8") as f:
        json.dump(tournoi, f, ensure_ascii=False, indent=2)
    return chemin

# Liste des personnalités disponibles
# - "Coopérer" : toujours coopère
# - "Trahir"   : toujours trahit
# - "Hazard"   : choix aléatoire
# - "Reflexion" : utilise l'historique pour décider (via Ollama) Optimisé pour sortir
# - "TitforTat" : coopère au premier round, puis imite le choix de l'adversaire au round précédent 
# - "GrimTrigger": coopère tant que l'adversaire coopère, mais trahit à jamais si l'adversaire trahit une fois 
# - "RandomTitforTat": coopère au premier round, puis imite le choix de l'adversaire au round précédent avec une probabilité de 80%, sinon fait un choix aléatoire 
# - "Pavlov" : coopère si les deux joueurs ont fait le même choix au round précédent, sinon trahit 
# - "LLM libre" : utilise un modèle de langage pour décider, mais sans historique ni objectif. 
# - "Egoiste" : Il veut maximiser son taux de libération et  faire baisser celui de son adversaire. Il utilise l'historique pour décider, mais de manière égoïste
# - "Altruiste" : Il veut maximiser le taux de libération global (lui + adversaire). Il utilise l'historique pour décider, mais de manière altruiste

if __name__ == "__main__":
    # Ajout du random pour varier les matchups et le nombre de tours à chaque exécution
    Random = True
    if Random:
        personnalite_a = random.choice(PERSONNALITES_DISPONIBLES)
        personnalite_b = random.choice(PERSONNALITES_DISPONIBLES)
        nb_tours       = 2000 #random.randint(1000, 3000)
    else:
        personnalite_a = "Hazard"
        personnalite_b = "Trahir"
        nb_tours       = 2000

    tournoi = run_tournoi(personnalite_a, personnalite_b, nb_tours)
    chemin  = sauvegarder(tournoi)
    print(f"Sauvegardé : {chemin}")