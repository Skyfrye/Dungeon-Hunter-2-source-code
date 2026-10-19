#!/bin/bash
# push original game data to the dh2_orig32 emulator (port 5590). data extracted into build/own-gt2/data (reuses build/own-gt/data if present)
export MSYS_NO_PATHCONV=1
SDK=${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}
ADB="$SDK/platform-tools/adb.exe -s emulator-5590"
D=build/own-gt/data
[ -d $D/com.gameloft.android.GAND.GloftD2SS ] || { mkdir -p $D; python -c "import zipfile,sys;zipfile.ZipFile(sys.argv[1]).extractall(sys.argv[2])" "$HOME/Downloads/Dungeon-Hunter-2-HD-v1-0-2-cache.zip" $D; }
PKG=com.gameloft.android.GAND.GloftD2SS
$ADB root >/dev/null 2>&1; sleep 3; $ADB wait-for-device
$ADB shell mkdir -p /sdcard/Android/data/$PKG
$ADB push $D/$PKG/files /sdcard/Android/data/$PKG/
$ADB root >/dev/null 2>&1; $ADB wait-for-device
U=$($ADB shell stat -c %u /data/data/$PKG | tr -d '\r')
$ADB shell "chown -R $U:1078 /data/media/0/Android/data/$PKG && chmod -R u+rwX,g+rwX /data/media/0/Android/data/$PKG && restorecon -R /data/media/0/Android/data/$PKG"
$ADB shell "ls /sdcard/Android/data/$PKG/files | head; find /data/data/$PKG -name '*.savegame'; find /sdcard/Android/data/$PKG -name '*.savegame'"
