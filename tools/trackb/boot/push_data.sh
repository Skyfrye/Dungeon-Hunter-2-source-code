#!/bin/bash
# extract the game data cache zip once (build/own-r/data, untracked) and push it to the app's external files dir
export MSYS_NO_PATHCONV=1
SDK=${ANDROID_HOME:-$HOME/AppData/Local/Android/Sdk}
ADB="$SDK/platform-tools/adb.exe"
ZIP="${DH2_DATA_ZIP:-$HOME/Documents/Projects/Dungeon Hunter 2 Recomp/Dungeon-Hunter-2-HD-v1-0-2-cache.zip}"
D=build/own-r/data
[ -d $D/com.gameloft.android.GAND.GloftD2SS ] || { mkdir -p $D; python -c "import zipfile,sys;zipfile.ZipFile(sys.argv[1]).extractall(sys.argv[2])" "$ZIP" $D; }
"$ADB" shell mkdir -p /sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS
"$ADB" push $D/com.gameloft.android.GAND.GloftD2SS/files /sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/
# the dir/files pushed by adb are owned by shell(2000); the app (its own uid) must own them or FUSE denies the open
PKG=com.gameloft.android.GAND.GloftD2SS
"$ADB" root >/dev/null 2>&1; "$ADB" wait-for-device
U=$("$ADB" shell stat -c %u /data/data/$PKG | tr -d '\r')
"$ADB" shell "chown -R $U:1078 /data/media/0/Android/data/$PKG && chmod -R u+rwX,g+rwX /data/media/0/Android/data/$PKG && restorecon -R /data/media/0/Android/data/$PKG"
