import glob
import os
import time
import orjson
import pyarrow as pa
import pyarrow.parquet as pq
from tqdm import tqdm
from concurrent.futures import ProcessPoolExecutor, as_completed
from multiprocessing import cpu_count

BRONZE_DIR = os.path.join(os.path.dirname(__file__), "..", "Data", "Bronze")
SILVER_DIR = os.path.join(os.path.dirname(__file__), "..", "Data", "Silver")

os.makedirs(SILVER_DIR, exist_ok=True)

WRITE_OPTS = dict(compression="snappy")


def process_json(json_file):
    with open(json_file, "rb") as f:
        data = orjson.loads(f.read())

    id_tournoi = data["ID_Tournoi"]
    date       = data["Date"]
    nb_tour    = data["Nb_tour"]
    player_a   = data["Player_A"]
    player_b   = data["Player_B"]

    return [
        {
            "ID_Tournoi":   id_tournoi,
            "Date":         date,
            "Nb_tour":      nb_tour,
            "Player_A":     player_a,
            "Player_B":     player_b,
            "Run":          r["Run"],
            "Choix_P_A":    r["Choix_P_A"],
            "Choix_P_B":    r["Choix_P_B"],
            "Resultat_P_A": r["Resultat_P_A"],
            "Resultat_P_B": r["Resultat_P_B"],
        }
        for r in data["Runs"]
    ]


if __name__ == "__main__":
    json_files = [
        f for f in glob.glob(os.path.join(BRONZE_DIR, "*.json"))
        if os.path.basename(f) != ".gitkeep"
    ]

    num_workers = max(cpu_count() - 1, 1)
    print(f"Utilisation de {num_workers} processus | {len(json_files)} fichier(s) à traiter...")

    all_rows = []

    start = time.perf_counter()
    with ProcessPoolExecutor(max_workers=num_workers) as executor:
        futures = {executor.submit(process_json, f): f for f in json_files}
        for future in tqdm(as_completed(futures), total=len(futures), desc="Tournois en traitement"):
            all_rows.extend(future.result())

    pq.write_table(
        pa.table({
            "ID_Tournoi":   pa.array([r["ID_Tournoi"]   for r in all_rows]),
            "Date":         pa.array([r["Date"]         for r in all_rows]),
            "Nb_tour":      pa.array([r["Nb_tour"]      for r in all_rows], type=pa.int32()),
            "Player_A":     pa.array([r["Player_A"]     for r in all_rows]),
            "Player_B":     pa.array([r["Player_B"]     for r in all_rows]),
            "Run":          pa.array([r["Run"]          for r in all_rows], type=pa.int32()),
            "Choix_P_A":    pa.array([r["Choix_P_A"]    for r in all_rows]),
            "Choix_P_B":    pa.array([r["Choix_P_B"]    for r in all_rows]),
            "Resultat_P_A": pa.array([r["Resultat_P_A"] for r in all_rows]),
            "Resultat_P_B": pa.array([r["Resultat_P_B"] for r in all_rows]),
        }),
        os.path.join(SILVER_DIR, "silver.parquet"),
        **WRITE_OPTS,
    )

    print(f"Terminé en {time.perf_counter() - start:.2f}s")
    print(f"  → silver.parquet  ({len(all_rows)} lignes | {len(json_files)} tournoi(s))")
    print(f"Fichier écrit dans : {os.path.abspath(SILVER_DIR)}")
