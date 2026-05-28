import os
import sys
import random
from pathlib import Path

# En local : __file__ donne le chemin réel
# Dans Windmill/Docker : PROJECT_DIR=/app est injecté via docker-compose
BASE_DIR = Path(os.getenv("PROJECT_DIR") or Path(__file__).resolve().parent.parent)
sys.path.insert(0, str(BASE_DIR / "Tournois"))

from tournoi import run_tournoi, sauvegarder, PERSONNALITES_RAPIDES, PERSONNALITES_DISPONIBLES


def main(
    personnalite_a: str = "",
    personnalite_b: str = "",
    nb_tours: int = 2000,
    llm: bool = False,
) -> dict:
    """Lance un tournoi et sauvegarde le JSON dans Data/Bronze."""
    pool = PERSONNALITES_DISPONIBLES if llm else PERSONNALITES_RAPIDES
    p_a = personnalite_a or random.choice(pool)
    p_b = personnalite_b or random.choice(pool)

    print(f"Tournoi : {p_a} vs {p_b} ({nb_tours} rounds)")
    tournoi = run_tournoi(p_a, p_b, nb_tours)
    chemin  = sauvegarder(tournoi)
    print(f"Sauvegardé : {chemin}")

    return {
        "id_tournoi": tournoi["ID_Tournoi"],
        "player_a":   p_a,
        "player_b":   p_b,
        "nb_tours":   nb_tours,
        "chemin":     str(chemin),
    }
