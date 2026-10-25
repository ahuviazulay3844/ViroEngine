"""Carry what the engine learned on this machine into the deployed image, without git.

Two things live only locally (both git-ignored): the solved example pages the model sees before
every page read (`reference/fewshot/`) and the learning store (`DATA_DIR/learning.db`: label
texts, locations, shapes and counters - never a value). A Hugging Face Space refuses binary files
pushed without LFS, so `pack` writes them as text:

    python scripts/training_pack.py pack --out <space>/deploy/seed

and the Docker build turns them back into files:

    python scripts/training_pack.py unpack deploy/seed --fewshot reference/fewshot \
        --db /tmp/safeline/learning.db

`unpack` on a seed directory with nothing packed does nothing, so a plain `docker build` of the
repository still works.
"""

from __future__ import annotations

import argparse
import base64
import json
from pathlib import Path
import sqlite3
import sys

ROOT = Path(__file__).resolve().parents[1]
EXAMPLES_FILE = "examples.json"
DB_DUMP = "learning.sql"


def pack(out: Path, fewshot: Path, db: Path) -> None:
    out.mkdir(parents=True, exist_ok=True)
    examples = fewshot / EXAMPLES_FILE
    if examples.is_file():
        target = out / "fewshot"
        target.mkdir(exist_ok=True)
        (target / EXAMPLES_FILE).write_bytes(examples.read_bytes())
        items = json.loads(examples.read_text(encoding="utf-8")).get("examples", [])
        for item in items:
            image = fewshot / str(item.get("image", ""))
            if image.is_file():
                (target / f"{image.name}.b64").write_text(
                    base64.b64encode(image.read_bytes()).decode("ascii"), encoding="ascii"
                )
        print(f"fewshot: {len(items)} examples")
    else:
        print(f"fewshot: none ({examples} missing)")
    if db.is_file():
        # A consistent copy first: the live store runs in WAL mode.
        snapshot = sqlite3.connect(":memory:")
        with sqlite3.connect(db) as live:
            live.backup(snapshot)
        (out / DB_DUMP).write_text("\n".join(snapshot.iterdump()), encoding="utf-8")
        snapshot.close()
        print(f"learning store: packed from {db}")
    else:
        print(f"learning store: none ({db} missing)")


def unpack(seed: Path, fewshot: Path, db: Path) -> None:
    packed = seed / "fewshot"
    if (packed / EXAMPLES_FILE).is_file():
        fewshot.mkdir(parents=True, exist_ok=True)
        (fewshot / EXAMPLES_FILE).write_bytes((packed / EXAMPLES_FILE).read_bytes())
        for encoded in packed.glob("*.b64"):
            (fewshot / encoded.stem).write_bytes(base64.b64decode(encoded.read_text("ascii")))
        print(f"fewshot: unpacked into {fewshot}")
    dump = seed / DB_DUMP
    if dump.is_file() and not db.exists():
        db.parent.mkdir(parents=True, exist_ok=True)
        with sqlite3.connect(db) as conn:
            conn.executescript(dump.read_text(encoding="utf-8"))
        print(f"learning store: seeded {db}")


def main(argv: list[str]) -> None:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    sub = parser.add_subparsers(dest="command", required=True)
    p = sub.add_parser("pack")
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--fewshot", type=Path, default=ROOT / "reference" / "fewshot")
    p.add_argument("--db", type=Path, default=ROOT / ".tmp" / "learning.db")
    u = sub.add_parser("unpack")
    u.add_argument("seed", type=Path)
    u.add_argument("--fewshot", type=Path, required=True)
    u.add_argument("--db", type=Path, required=True)
    args = parser.parse_args(argv)
    if args.command == "pack":
        pack(args.out, args.fewshot, args.db)
    else:
        unpack(args.seed, args.fewshot, args.db)


if __name__ == "__main__":
    main(sys.argv[1:])
