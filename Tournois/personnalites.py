import random
import ollama

MODEL = "gemma3:4b"

# ─── Prompts système ────────────────────────────────────────────────────────────

_BASE = (
    "Contexte :\n"
    "Toi et ton camarade ont été arrêtés pour un Crime. Tu ne peux pas communiquer avec lui.\n"
    "Si vous coopérez ensemble vous êtes tous les deux libres.\n"
    "Si tu coopères mais ton camarade te trahit, il est libre et toi tu obtiens la prison à vie.\n"
    "Si tu trahis et lui coopère, tu es libre et lui obtient la prison à vie.\n"
    "Si vous vous trahissez mutuellement, vous avez tous les deux une peine de prison allégée.\n"
)

SYSTEM_PROMPT = (
    _BASE +
    "Tu dois réfléchir en fonction de ton taux de réussite.\n\n"
    "Réponds UNIQUEMENT par un seul mot : \"Coopéré\" ou \"Trahir\"."
)

SYSTEM_PROMPT_LLM_LIBRE = (
    _BASE +
    "Réponds UNIQUEMENT par un seul mot : \"Coopéré\" ou \"Trahir\"."
)

SYSTEM_PROMPT_EGOISTE = (
    _BASE +
    "Ton objectif est ÉGOÏSTE : maximise TON propre taux de libération "
    "et fais baisser celui de ton adversaire.\n\n"
    "Réponds UNIQUEMENT par un seul mot : \"Coopéré\" ou \"Trahir\"."
)

SYSTEM_PROMPT_ALTRUISTE = (
    _BASE +
    "Ton objectif est ALTRUISTE : maximise le taux de libération GLOBAL "
    "(toi + ton adversaire combinés).\n\n"
    "Réponds UNIQUEMENT par un seul mot : \"Coopéré\" ou \"Trahir\"."
)

# ─── Personnalités fixes ────────────────────────────────────────────────────────

CHOIX_FIXES = {
    "Coopérer": "Coopéré",
    "Trahir":   "Trahir",
}

# ─── Utilitaires ───────────────────────────────────────────────────────────────

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


def taux_peine_partagee(historique: list[dict]) -> float:
    if not historique:
        return 0.0
    peine = sum(1 for r in historique if r["Resultat_P_self"] == "Peine_partagée")
    return peine / len(historique) * 100


def _taux_libere_adverse(historique: list[dict]) -> float:
    """Adversaire est Libre exactement quand self a coopéré."""
    if not historique:
        return 0.0
    return sum(1 for r in historique if r["Choix_P_self"] == "Coopéré") / len(historique) * 100


def _historique_lignes(historique: list[dict]) -> str:
    return "\n".join(
        f"Round {r['Run']}: tu as choisi {r['Choix_P_self']}, "
        f"adversaire : {r['Choix_P_adverse']}, résultat : {r['Resultat_P_self']}."
        for r in historique[-10:]
    )


def _llm_decision(system_prompt: str, user_msg: str) -> str:
    response = ollama.chat(
        model=MODEL,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user",   "content": user_msg},
        ],
    )
    texte = response.message.content.strip()
    if "Trahir" in texte or "Trahit" in texte:
        return "Trahir"
    return "Coopéré"

# ─── Personnalités algorithmiques ──────────────────────────────────────────────

def choix_hazard() -> str:
    return random.choice(["Coopéré", "Trahir"])


def choix_tit_for_tat(historique: list[dict]) -> str:
    """Coopère au premier round, puis imite le dernier choix de l'adversaire."""
    if not historique:
        return "Coopéré"
    return historique[-1]["Choix_P_adverse"]


def choix_grim_trigger(historique: list[dict]) -> str:
    """Coopère jusqu'à la première trahison adverse, puis trahit à jamais."""
    if any(r["Choix_P_adverse"] == "Trahir" for r in historique):
        return "Trahir"
    return "Coopéré"


def choix_random_tit_for_tat(historique: list[dict]) -> str:
    """Imite l'adversaire à 80%, choix aléatoire à 20%."""
    if not historique:
        return "Coopéré"
    if random.random() < 0.8:
        return historique[-1]["Choix_P_adverse"]
    return random.choice(["Coopéré", "Trahir"])


def choix_pavlov(historique: list[dict]) -> str:
    """Coopère si les deux ont fait le même choix au round précédent, sinon trahit."""
    if not historique:
        return "Coopéré"
    last = historique[-1]
    if last["Choix_P_self"] == last["Choix_P_adverse"]:
        return "Coopéré"
    return "Trahir"

# ─── Personnalités LLM ─────────────────────────────────────────────────────────

def choix_reflexion(historique: list[dict]) -> str:
    if historique:
        taux = taux_libere(historique)
        user_msg = (
            f"Ton taux de libération actuel : {taux:.1f}%\n\n"
            "Historique des derniers rounds :\n"
            + _historique_lignes(historique)
            + "\n\nQuel est ton choix ?"
        )
    else:
        user_msg = "C'est le premier round. Quel est ton choix ?"
    return _llm_decision(SYSTEM_PROMPT, user_msg)


def choix_llm_libre() -> str:
    return _llm_decision(SYSTEM_PROMPT_LLM_LIBRE, "Quel est ton choix ?")


def choix_egoiste(historique: list[dict]) -> str:
    if historique:
        taux_self = taux_libere(historique)
        taux_adv  = _taux_libere_adverse(historique)
        user_msg = (
            f"Ton taux de libération : {taux_self:.1f}% | "
            f"Taux de libération de l'adversaire : {taux_adv:.1f}%\n\n"
            "Historique des derniers rounds :\n"
            + _historique_lignes(historique)
            + "\n\nQuel est ton choix égoïste ?"
        )
    else:
        user_msg = "C'est le premier round. Quel est ton choix égoïste ?"
    return _llm_decision(SYSTEM_PROMPT_EGOISTE, user_msg)


def choix_altruiste(historique: list[dict]) -> str:
    if historique:
        taux_self   = taux_libere(historique)
        taux_adv    = _taux_libere_adverse(historique)
        taux_global = (taux_self + taux_adv) / 2
        user_msg = (
            f"Taux de libération global (toi + adversaire) : {taux_global:.1f}% "
            f"(toi : {taux_self:.1f}%, adversaire : {taux_adv:.1f}%)\n\n"
            "Historique des derniers rounds :\n"
            + _historique_lignes(historique)
            + "\n\nQuel est ton choix altruiste ?"
        )
    else:
        user_msg = "C'est le premier round. Quel est ton choix altruiste ?"
    return _llm_decision(SYSTEM_PROMPT_ALTRUISTE, user_msg)
