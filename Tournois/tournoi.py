import json
import uuid
from datetime import datetime
from pathlib import Path
import random

from rich.progress import Progress, BarColumn, TextColumn, MofNCompleteColumn, TimeRemainingColumn

from personnalites import CHOIX_FIXES, choix_hazard, choix_reflexion

BRONZE_DIR = Path(__file__).parent.parent / "Data" / "Bronze"

RESULTATS = {
    ("Coopéré", "Coopéré"): ("Libre",         "Libre"),
    ("Coopéré", "Trahir"):  ("Prison_max",     "Libre"),
    ("Trahir",  "Coopéré"): ("Libre",          "Prison_max"),
    ("Trahir",  "Trahir"):  ("Peine_partagée", "Peine_partagée"),
}



def get_choix(personnalite: str, historique_self: list[dict] = None) -> str:
    if personnalite in CHOIX_FIXES:
        return CHOIX_FIXES[personnalite]
    if personnalite == "Hazard":
        return choix_hazard()
    if personnalite == "Reflexion":
        return choix_reflexion(historique_self or [])
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
# - "Réflexion" : utilise l'historique pour décider (via Ollama) Optimisé pour sortir
# - "TitforTat" : coopère au premier round, puis imite le choix de l'adversaire au round précédent (non implémenté ici)
# - "GrimTrigger": coopère tant que l'adversaire coopère, mais trahit à jamais si l'adversaire trahit une fois (non implémenté ici)
# - "RandomTitforTat": coopère au premier round, puis imite le choix de l'adversaire au round précédent avec une probabilité de 80%, sinon fait un choix aléatoire (non implémenté ici)
# - "Pavlov" : coopère si les deux joueurs ont fait le même choix au round précédent, sinon trahit (non implémenté ici)
# - "LLM libre" : utilise un modèle de langage pour décider, mais sans historique ni objectif. (non implémenté ici)

if __name__ == "__main__":
    # Ajout du random pour varier les matchups et le nombre de tours à chaque exécution
    Random = True
    if Random:
        personnalite_a = random.choice(["Coopéré", "Trahir", "Hazard", "Réflexion"])
        personnalite_b = random.choice(["Coopéré", "Trahir", "Hazard", "Réflexion"])
        nb_tours       = random.randint(1000, 3000)
    else:
        personnalite_a = "Hazard"
        personnalite_b = "Trahir"
        nb_tours       = 1000

    tournoi = run_tournoi(personnalite_a, personnalite_b, nb_tours)
    chemin  = sauvegarder(tournoi)
    print(f"Sauvegardé : {chemin}")