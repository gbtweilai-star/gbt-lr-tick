#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_lr_tick info
PYTHONPATH=src python -m gbt_lr_tick check --payload '{}'
PYTHONPATH=src python -m gbt_lr_tick run   --payload '{}'
