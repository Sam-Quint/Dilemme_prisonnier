import os
import subprocess
import sys
from pathlib import Path

BASE_DIR = Path(os.getenv("PROJECT_DIR") or Path(__file__).resolve().parent.parent)
SCRIPT   = BASE_DIR / "Traitement" / "Transforme_json_to_parquet.py"


def main() -> dict:
    """Transforme tous les JSON Bronze en un seul silver.parquet (Silver)."""
    result = subprocess.run(
        [sys.executable, str(SCRIPT)],
        capture_output=True,
        text=True,
        encoding="utf-8",
    )
    print(result.stdout)
    if result.returncode != 0:
        raise RuntimeError(f"Erreur transformation parquet :\n{result.stderr}")

    return {"success": True, "output": result.stdout.strip()}
