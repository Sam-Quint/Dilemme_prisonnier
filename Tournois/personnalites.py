import random

MODEL = "gemma3:4b"

# Personnalités déterministes — pas besoin d'Ollama
CHOIX_FIXES = {
    "Coopérer": "Coopéré",
    "Trahir":   "Trahir",
}


def choix_hazard() -> str:
    return random.choice(["Coopéré", "Trahir"])


def calcul_pct_liberation(historique: list[dict]) -> float:
    """Retourne le % de rounds où le joueur était Libre."""
    if not historique:
        return 0.0
    libres = sum(1 for r in historique if r["Resultat_P_self"] == "Libre")
    return (libres / len(historique)) * 100

## ATTENTION REFLEXION DOIT ETRE UN LMM PAS UN ALGO
def choix_reflexion(historique: list[dict]) -> str:
    """Choisit l'action qui a historiquement produit le plus de 'Libre'."""
    if not historique:
        return "Coopéré"  # premier round : on commence coopératif

    coops    = [r for r in historique if r["Choix_P_self"] == "Coopéré"]
    trahisons = [r for r in historique if r["Choix_P_self"] == "Trahir"]

    pct_libre_coop   = sum(1 for r in coops     if r["Resultat_P_self"] == "Libre") / len(coops)     if coops     else 0.0
    pct_libre_trahir = sum(1 for r in trahisons if r["Resultat_P_self"] == "Libre") / len(trahisons) if trahisons else 0.0

    return "Trahir" if pct_libre_trahir >= pct_libre_coop else "Coopéré"
