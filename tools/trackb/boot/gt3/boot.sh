#!/bin/bash
# usage: boot.sh AVD  (port 5592), installs debuggable apk + data
export MSYS_NO_PATHCONV=1
SDK="${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}"
W="$HOME/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b"
A="$SDK/platform-tools/adb.exe -s emulator-5592"; PKG=com.gameloft.android.GAND.GloftD2SS
(nohup "$SDK/emulator/emulator.exe" -avd $1 -port 5592 -no-window -no-audio -no-snapshot -no-boot-anim -gpu swiftshader_indirect -memory ${MEM:-4096} -wipe-data $EXTRA > "$W/build/own-gt3/emu.log" 2>&1 &)
timeout 300 $A wait-for-device; for i in $(seq 1 80); do b=$($A shell getprop sys.boot_completed|tr -d '\r'); [ "$b" = 1 ] && break; sleep 5; done; echo boot=$b
$A shell getprop ro.kernel.qemu.dalvik.vm.heapsize
$A install "$W/build/own-gt3/dh2_dbg.apk" | tail -1
$A shell mkdir -p /sdcard/Android/data/$PKG; $A push "$W/build/own-gt/data/$PKG/files" /sdcard/Android/data/$PKG/ | tail -1
