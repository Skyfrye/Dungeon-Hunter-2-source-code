#!/bin/bash
# after iterate.sh: title -> main menu -> Start -> Single player -> wait; screenshot build/own-r/game.png
A=<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/platform-tools/adb.exe
sleep 2; $A shell input tap 1884 656; sleep 80; $A shell input tap 1000 700; sleep 20
$A shell input tap 2148 322; sleep 8; $A shell input tap 2136 368; sleep ${1:-40}
$A exec-out screencap -p > build/own-r/game.png
echo "pid: $($A shell pidof com.gameloft.android.GAND.GloftD2SS)"
$A logcat -d -v threadtime > build/own-r/run.log
grep -E "DH2CRASH: (signal|pc)|Fatal signal" build/own-r/run.log | cut -c34-200 | head -3
