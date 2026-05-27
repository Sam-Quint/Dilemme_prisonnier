import random

MODEL = "gemma3:4b"

REPONSE_ATTENDUE = "Réponds UNIQUEMENT par le mot 'Coopéré' ou 'Trahir', sans rien d'autre."

PROMPT_REFLEXION = (
    "Toi et ton camarade avez été arrêtés pour un crime. "
    "Tu ne peux pas communiquer avec lui. "
    "Voici les règles :\n"
    "- Si vous coopérez tous les deux : vous êtes tous les deux libres.\n"
    "- Si tu coopères mais ton camarade te trahit : tu obtiens la prison à vie, lui est libre.\n"
    "- Si tu trahis mais ton camarade coopère : tu es libre, lui obtient la prison à vie.\n"
    "- Si vous vous trahissez mutuellement : vous obtenez tous les deux une peine allégée.\n"
    "Tu dois adapter ta stratégie en fonction de l'historique des rounds précédents. "
    + REPONSE_ATTENDUE
)

# Personnalités déterministes — pas besoin d'Ollama
CHOIX_FIXES = {
    "Coopérer": "Coopéré",
    "Trahir":   "Trahir",
}


def choix_hazard() -> str:
    return random.choice(["Coopéré", "Trahir"])


def build_prompt_reflexion(historique: list[dict]) -> str:
    if not historique:
        return "C'est le premier round. Quel est ton choix ?"

    lignes = ["Voici l'historique des rounds précédents :"]
    for run in historique:
        lignes.append(
            f"  Round {run['Run']} : tu as {run['Choix_P_self']}, "
            f"ton camarade a {run['Choix_P_adverse']}. "
            f"Résultat : {run['Resultat_P_self']}."
        )
    lignes.append("Quel est ton choix pour ce round ?")
    return "\n".join(lignes)
