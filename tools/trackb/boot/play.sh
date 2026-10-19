#!/bin/bash
# after iterate.sh: dismiss the old-SDK dialog, wait N seconds, collect log + screenshot, show crash summary
A=${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}/platform-tools/adb.exe
sleep 1; $A shell input tap 1884 656; sleep ${1:-80}
$A logcat -d -v threadtime > build/own-r/run.log
$A exec-out screencap -p > build/own-r/play.png
echo "pid: $($A shell pidof com.gameloft.android.GAND.GloftD2SS)"
grep -E "DH2GL |DH2CRASH: (signal|pc)|GSInit step 1[3-9]|can't create" build/own-r/run.log | cut -c34-230 | tail -8
bash tools/trackb/boot/bt2.sh build/own-r/run.log 12 2>/dev/null | cut -c1-200 | sed -n 6,16p
