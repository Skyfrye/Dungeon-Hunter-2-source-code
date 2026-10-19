#!/bin/bash
export MSYS_NO_PATHCONV=1
A="${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}/platform-tools/adb.exe -s emulator-5592"
cd "$(dirname "$0")/rec"
for i in $(seq 1 ${1:-400}); do t=$(date +%H%M%S_%N | cut -c1-10); $A exec-out screencap -p > s_$t.png; done
