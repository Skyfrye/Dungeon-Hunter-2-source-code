#!/bin/bash
# owner M: second, private AVD dh2_m on port 5558 (never touches emulator-5554/5556)
SDK=${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}
export ANDROID_SDK_ROOT=$SDK ANDROID_HOME=$SDK
"$SDK/emulator/emulator.exe" -avd dh2_m -port 5558 -no-window -no-audio -no-snapshot -no-boot-anim -gpu swiftshader_indirect -memory ${MEM:-2560} -wipe-data > ${TEMP:-/tmp}/dh2_emulator_m.log 2>&1 &
A="$SDK/platform-tools/adb.exe -s emulator-5558"
$SDK/platform-tools/adb.exe -s emulator-5558 wait-for-device
until [ "$($SDK/platform-tools/adb.exe -s emulator-5558 shell getprop sys.boot_completed | tr -d '\r')" = 1 ]; do sleep 3; done
echo booted
