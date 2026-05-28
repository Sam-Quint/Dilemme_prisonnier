import random
import ollama

MODEL = "gemma3:4b"

SYSTEM_PROMPT = (
    "Contexte :\n"
    "Toi et ton camarade ont été arrêtés pour un Crime. Tu ne peux pas communiquer avec lui.\n"
    "Si vous coopérez ensemble vous êtes tous les deux libres.\n"
    "Si tu coopères mais ton camarade te trahit, il est libre et toi tu obtiens la prison à vie.\n"
    "Si tu trahis et lui coopère, tu es libre et lui obtient la prison à vie.\n"
    "Si vous vous trahissez mutuellement, vous avez tous les deux une peine de prison allégée.\n"
    "Tu dois réfléchir en fonction de ton taux de réussite.\n\n"
    "Réponds UNIQUEMENT par un seul mot : \"Coopéré\" ou \"Trahir\"."
)

CHOIX_FIXES = {
    "Coopérer": "Coopéré",
    "Trahir":   "Trahir",
}

def taux_libere(historique: list[dict]) -> float:
    if not historique:
        return 0.0
    libres = sum(1 for r in historique if r["Resultat_P_self"] == "Libre")
    return libres / len(historique) * 100

def taux_prison_max(historique: list[dict]) -> float:
    if not historique:
        return 0.0
    prison = sum(1 for r in historique if r["Resultat_P_self"] == "Prison_max")
    return prison / len(historique) * 100

def taux_peine_partagée(historique: list[dict]) -> float:
    if not historique:
        return 0.0
    peine_partagée = sum(1 for r in historique if r["Resultat_P_self"] == "Peine_partagée")
    return peine_partagée / len(historique) * 100


def choix_hazard() -> str:
    return random.choice(["Coopéré", "Trahir"])


def choix_reflexion(historique: list[dict]) -> str:
    if historique:
        taux = taux_libere(historique)
        lignes = [
            f"Round {r['Run']}: tu as choisi {r['Choix_P_self']}, "
            f"adversaire : {r['Choix_P_adverse']}, résultat : {r['Resultat_P_self']}."
            for r in historique[-10:]
        ]
        user_msg = (
            f"Ton taux de libération actuel : {taux:.1f}%\n\n"
        )
    else:
        user_msg = "C'est le premier round. Quel est ton choix ?"

    response = ollama.chat(
        model=MODEL,
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user",   "content": user_msg},
        ],
    )

    texte = response.message.content.strip()

    if "Trahir" in texte or "Trahit" in texte:
        return "Trahir"
    return "Coopéré"
