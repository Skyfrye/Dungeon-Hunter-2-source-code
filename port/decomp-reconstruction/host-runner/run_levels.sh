#!/bin/bash
# Level-by-level runs: every script of a folder (default scripts/levels, the playthrough; SCRIPTS=scripts/soak for the soaks) with <exe>, four at
# a time, each worker on its own data folder (build/own-w2/data{,b,c,d}/files, see HOST-RUNNER.md). Results: <out>/<script>/console.txt and
# game.log; summarize with level_report.py (playthrough) or soak_report.py (deduplicated findings).
# usage: [SCRIPTS=dir] [FRAMES=n] run_levels.sh <exe> <out dir> [script names without .txt...]
exe=$1; out=$2; shift 2
here=$(cd "$(dirname "$0")" && pwd)
scripts=${SCRIPTS:-$here/scripts/levels}
frames=${FRAMES:-7460}
if [ $# -gt 0 ]; then names=("$@"); else names=($(cd "$scripts" && ls *.txt | sed 's/\.txt$//')); fi
root=${DATA_ROOT:-build/own-w2}   # DATA_ROOT=build/own-l2 selects another set of data{,b,c,d}/files folders (and BASE=<root>/data/saves-fresh)
datas=($root/data/files $root/datab/files $root/datac/files $root/datad/files)
mkdir -p "$out"
workers=${WORKERS:-4}   # fewer parallel runs when the machine is short of memory (each ASan run takes 0.5-1.5 GB)
for ((w = 0; w < workers; w++)); do
  (
    for ((i = w; i < ${#names[@]}; i += workers)); do
      n=${names[$i]}
      [ -f "$out/$n/console.txt" ] && grep -q '^exit ' "$out/$n/console.txt" && continue   # resumable: finished runs are kept
      DATA=${datas[$w]} BASE=${BASE:-$root/data/saves-fresh} bash "$here/run_session.sh" "$exe" "$scripts/$n.txt" "$out/$n" "$frames" 1000
    done
  ) &
done
wait
