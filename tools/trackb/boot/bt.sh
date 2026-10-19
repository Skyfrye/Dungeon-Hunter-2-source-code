#!/bin/bash
# symbolize every libDungeonHunter2.so frame of the tombstone in a run log (default build/own-r/run.log)
cd "$(dirname "$0")/../../.."
LOG=${1:-build/own-r/run.log}
grep -E "DEBUG +: +#[0-9]+ pc [0-9a-f]+ .*libDungeonHunter2.so" "$LOG" | sed -E 's/.*#([0-9]+) pc ([0-9a-f]+) .*/\1 0x\2/' | while read n pc; do
  printf "#%s %s " $n $pc; bash tools/trackb/boot/symbolize.sh $pc | head -2 | sed -E 's|.*/port/decomp-reconstruction/||' | paste -s -d' '
done
