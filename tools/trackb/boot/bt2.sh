#!/bin/bash
# symbolize the DH2CRASH guest handler output (first crash only): pc, lr, then the stack-scan return addresses
cd "$(dirname "$0")/../../.."
LOG=${1:-build/own-r/run.log}
grep DH2CRASH "$LOG" | grep -v "sigaction\|installed" | awk '/signal/{n++} n==1' > build/own-r/crash1.txt
head -2 build/own-r/crash1.txt | cut -c34-200
grep -E "x(0|1|2|3|4|5|6|7|8) " build/own-r/crash1.txt | head -3 | cut -c34-200
offs=$(grep -oE "off 0x[0-9a-f]+" build/own-r/crash1.txt | sed 's/off //' | head -${2:-24})
bash tools/trackb/boot/symbolize.sh $offs | sed -E 's|.*/port/decomp-reconstruction/||' | paste - - | cut -c1-210
