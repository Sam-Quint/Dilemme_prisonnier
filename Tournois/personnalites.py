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
    "Tu dois réfléchir en fonction de ce qui se passe.\n\n"
    "Réponds UNIQUEMENT par un seul mot : \"Coopéré\" ou \"Trahir\"."
)

CHOIX_FIXES = {
    "Coopérer": "Coopéré",
    "Trahir":   "Trahir",
}


def choix_hazard() -> str:
    return random.choice(["Coopéré", "Trahir"])


def choix_reflexion(historique: list[dict]) -> str:
    if historique:
        lignes = [
            f"Round {r['Run']}: tu as choisi {r['Choix_P_self']}, "
            f"adversaire : {r['Choix_P_adverse']}, résultat : {r['Resultat_P_self']}."
            for r in historique[-10:]
        ]
        user_msg = "Historique des derniers rounds :\n" + "\n".join(lignes) + "\n\nQuel est ton choix ?"
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
