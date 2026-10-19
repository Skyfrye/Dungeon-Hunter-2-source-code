#!/bin/bash
# rebuild + package + install + drive to single player; poll build/own-r/g.done. usage: cycle.sh [wait-seconds-after-start]
cd "$(dirname "$0")/../../.."
rm -f build/own-r/g.done
(NLINES=3 bash tools/trackb/boot/iterate.sh 3 > build/own-r/it.log 2>&1; grep -q "BUILD FAILED" build/own-r/it.log || bash tools/trackb/boot/to_game.sh ${1:-40} > build/own-r/game.out 2>&1; echo done > build/own-r/g.done) >/dev/null 2>&1 &
