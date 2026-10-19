#!/bin/bash
# rebuild libdh2.so (build/own-arm64), repackage, install and run: iterate.sh [seconds]
cd "$(dirname "$0")/../../.."
SDK=<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk
(cd build/own-arm64 && ninja dh2 > ../own-r/ninja.log 2>&1; rc=$?; tail -${NLINES:-8} ../own-r/ninja.log; exit $rc) || { echo "BUILD FAILED"; exit 1; }
py -3 tools/trackb/boot/build_apk.py > build/own-r/apk.log 2>&1 || { tail build/own-r/apk.log; exit 1; }
"$SDK/platform-tools/adb.exe" install -r build/own-r/dh2-debug.apk | tail -1
bash tools/trackb/boot/run_game.sh ${1:-20}
