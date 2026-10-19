#!/bin/bash
# after iterate.sh: dismiss the old-SDK dialog, wait for the title screen, tap it, wait for the main menu; screenshot to build/own-r/menu.png
A=<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/platform-tools/adb.exe
sleep 2; $A shell input tap 1884 656; sleep ${1:-85}; $A shell input tap 1000 700; sleep ${2:-25}
$A exec-out screencap -p > build/own-r/menu.png
echo "pid: $($A shell pidof com.gameloft.android.GAND.GloftD2SS)"
$A logcat -d -v threadtime > build/own-r/run.log
grep -E "DH2CRASH: (signal|pc)|Fatal signal|FORTIFY" build/own-r/run.log | cut -c34-200 | head -4
