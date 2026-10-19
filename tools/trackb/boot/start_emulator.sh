#!/bin/bash
# start the headless AVD dh2_r (created as in FIRST-BOOT.md) and wait for boot
SDK=${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}
export ANDROID_SDK_ROOT=$SDK ANDROID_HOME=$SDK
LOG=${TEMP:-/tmp}/dh2_emulator.log
"$SDK/emulator/emulator.exe" -avd dh2_r -no-window -no-audio -no-snapshot -no-boot-anim -gpu swiftshader_indirect -memory 3072 -wipe-data > "$LOG" 2>&1 &
"$SDK/platform-tools/adb.exe" wait-for-device
until [ "$("$SDK/platform-tools/adb.exe" shell getprop sys.boot_completed | tr -d '\r')" = 1 ]; do sleep 3; done
echo booted
