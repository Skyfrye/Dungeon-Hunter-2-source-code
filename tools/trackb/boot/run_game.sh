#!/bin/bash
# launch the DungeonHunter2 activity (skipping the Samsung DRM activity) and capture logcat for N seconds
export MSYS_NO_PATHCONV=1
SDK=<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk
ADB="$SDK/platform-tools/adb.exe"
PKG=com.gameloft.android.GAND.GloftD2SS
SECS=${1:-25}
OUT=${2:-build/own-r/run.log}
"$ADB" root >/dev/null 2>&1; "$ADB" wait-for-device
for p in READ_PHONE_STATE WRITE_EXTERNAL_STORAGE READ_EXTERNAL_STORAGE; do "$ADB" shell pm grant $PKG android.permission.$p >/dev/null 2>&1; done
# TelephonyManager.getDeviceId() in DungeonHunter2.onCreate is refused on Android 10+ without this app-op
"$ADB" shell appops set $PKG USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER allow
"$ADB" shell am force-stop $PKG
"$ADB" logcat -c
"$ADB" shell am start -n $PKG/.DungeonHunter2
sleep $SECS
"$ADB" shell pidof $PKG
"$ADB" logcat -d -v threadtime > "$OUT"
"$ADB" exec-out screencap -p > "${OUT%.log}.png"
PID=$(grep -m1 -E "Start proc [0-9]+:$PKG" "$OUT" | sed -E "s/.*Start proc ([0-9]+):.*/\1/")
echo "pid $PID"
# app output (native stdout/log) and crash report
grep -E "^[0-9-]+ [0-9:.]+ +$PID +[0-9]+ [A-Z] " "$OUT" | grep -vE "nativeloader|GraphicsEnv|Surface :|CPU variant|Known variants|Zygote|GC\." | cut -c19-300 | head -${3:-40}
grep -E "F DEBUG|AndroidRuntime" "$OUT" | grep -vE "No guest|Build fingerprint|Kernel Release|Revision|Timestamp|Page size|Executable|Cmdline|^\s*$" | cut -c40-330 | head -40
echo "---- symbolized backtrace (first crash)"
pcs=$(grep -E "DEBUG +: +#[0-9]+ pc [0-9a-f]+ .*libDungeonHunter2.so" "$OUT" | sed -E 's/.* pc ([0-9a-f]+) .*/0x\1/' | head -12)
[ -n "$pcs" ] && bash "$(dirname "$0")/symbolize.sh" $pcs | sed -E 's|.*/port/decomp-reconstruction/||' | paste - - 
echo "---- DH2CRASH (guest handler in the stub libStormGLOFT.so)"
grep DH2CRASH "$OUT" | grep -v "sigaction\|installed" | cut -c34-200 | head -${CRASHLINES:-30}
offs=$(grep DH2CRASH "$OUT" | head -${CRASHLINES:-60} | grep -oE "off 0x[0-9a-f]+" | sed 's/off //' | head -16)
[ -n "$offs" ] && bash "$(dirname "$0")/symbolize.sh" $offs | sed -E 's|.*/port/decomp-reconstruction/||' | paste - -
