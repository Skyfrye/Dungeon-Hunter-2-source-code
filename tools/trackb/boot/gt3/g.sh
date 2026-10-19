#!/bin/bash
export MSYS_NO_PATHCONV=1
A="${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}/platform-tools/adb.exe -s emulator-5592"
D="$HOME/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b/build/own-gt3"
case $1 in
 t) $A shell input tap $2 $3;;
 s) $A exec-out screencap -p > "$D/$2.png";;
 mv) $A shell input swipe 165 590 $((165+$2)) $((590+$3)) $4;;
 s2) $A exec-out screencap -p > "$D/$2.png";;
 *) $A "$@";;
esac
