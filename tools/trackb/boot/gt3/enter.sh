#!/bin/bash
# launch, skip intro movie, title -> menu -> Start -> single player -> loading screen -> gameplay
G=<home>/Documents/Projects/Dungeon\ Hunter\ 2\ Recomp/DH_sc/.worktrees/track-b/build/own-gt3/g.sh
PKG=com.gameloft.android.GAND.GloftD2SS
"$G" shell am force-stop $PKG; "$G" logcat -c
"$G" shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1
sleep 12; "$G" t 640 360; sleep 3; "$G" t 640 680
sleep 12; "$G" t 640 360; sleep 8; "$G" t 1130 228; sleep 5; "$G" t 1100 262; sleep 40
"$G" t 640 600; sleep 15
"$G" shell pidof $PKG
