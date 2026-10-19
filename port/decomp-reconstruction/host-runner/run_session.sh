#!/bin/bash
# Run one scripted session from a known save state (repeatable: the same script gives the same game).
# usage: run_session.sh <exe> <script> <out dir> <frames> [log-every] [extra runner args...]
# DATA = data folder (default build/own-w2/data/files); BASE = folder with the savegames to restore first (default: ../saves-fresh next to it, use BASE=none for a brand-new hero)
# Sanitizer builds: PATH must contain llvm-mingw's bin (libclang_rt.asan_dynamic-x86_64.dll). ASAN_OPTIONS/UBSAN_OPTIONS are set here.
exe=$1; script=$2; out=$3; frames=$4; every=${5:-500}; shift 5 2>/dev/null
DATA=${DATA:-build/own-w2/data/files}
BASE=${BASE:-$(dirname "$DATA")/saves-fresh}
rm -f "$DATA"/dh2_000* 2>/dev/null
if [ "$BASE" != none ] && [ -d "$BASE" ]; then cp "$BASE"/* "$DATA"/; fi
mkdir -p "$out"
export ASAN_OPTIONS=${ASAN_OPTIONS:-detect_leaks=0:halt_on_error=1:symbolize=1:allocator_may_return_null=1}
export UBSAN_OPTIONS=${UBSAN_OPTIONS:-print_stacktrace=0:halt_on_error=0}
"$exe" --data "$DATA" --size 2400x1080 --frames "$frames" --out "$out" --log-every "$every" --script "$script" "$@" > "$out/console.txt" 2>&1
echo "exit $?" >> "$out/console.txt"
