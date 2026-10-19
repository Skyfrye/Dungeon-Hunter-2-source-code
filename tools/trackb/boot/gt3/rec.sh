#!/bin/bash
export MSYS_NO_PATHCONV=1
A="<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/platform-tools/adb.exe -s emulator-5592"
cd "$(dirname "$0")/rec"
for i in $(seq 1 ${1:-400}); do t=$(date +%H%M%S_%N | cut -c1-10); $A exec-out screencap -p > s_$t.png; done
