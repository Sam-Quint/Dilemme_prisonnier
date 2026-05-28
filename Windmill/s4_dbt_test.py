import os
import subprocess
import shutil
from pathlib import Path

BASE_DIR = Path(os.getenv("PROJECT_DIR") or Path(__file__).resolve().parent.parent)
DBT_DIR  = BASE_DIR / "dbt"


def main() -> dict:
    """Exécute dbt test depuis le dossier dbt/ et lève une erreur si des tests échouent."""
    dbt_cmd = shutil.which("dbt")
    if not dbt_cmd:
        raise RuntimeError("dbt introuvable dans le PATH. Active le venv ou vérifie l'image Docker.")

    result = subprocess.run(
        [dbt_cmd, "test"],
        cwd=str(DBT_DIR),
        capture_output=True,
        text=True,
        encoding="utf-8",
    )
    print(result.stdout)
    if result.returncode != 0:
        raise RuntimeError(f"dbt test a échoué :\n{result.stdout}\n{result.stderr}")

    return {"success": True, "output": result.stdout.strip()}
