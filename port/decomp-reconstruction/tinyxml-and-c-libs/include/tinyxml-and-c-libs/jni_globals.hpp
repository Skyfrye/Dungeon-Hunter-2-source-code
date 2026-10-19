// JNI state of the DungeonHunter2 Java class, used by the Android glue (VZPurchase_* and the others).
//   mEnv                   the JNIEnv* that Java passes in (a 32-bit global in the binary).
//   mClassDungeonHunter2   the global reference to com/gameloft/android/GAND/GloftD2SS/DungeonHunter2.
//   mMethodVZ*             static method IDs. DungeonHunter2.nativeInit (0x5325c4) looks them up with
//                          GetStaticMethodID (JNI slot +452).
// mEnv is defined once, in core-platform/src/p1-core-platform-global-f216b6-0.cpp (GameRenderer nativeGetJNIEnv
// stores it). The others are defined in tinyxml-and-c-libs/src/p1-tinyxml-and-c-libs-global-f216b6-0.cpp.
#pragma once

#include <jni.h>

extern JNIEnv* mEnv;
extern jclass mClassDungeonHunter2;
extern jmethodID mMethodVZIsInProgress;
extern jmethodID mMethodVZIsErrorOcurred;
extern jmethodID mMethodVZRequestLogin;
extern jmethodID mMethodVZRequestPurchaseGame;
extern jmethodID mMethodVZGetGamePrice;
extern jmethodID mMethodVZGetGameName;
extern jmethodID mMethodVZGetLastServerMsg;
extern jmethodID mMethodVZInitMobileNetwork;
extern jmethodID mMethodVZIsMobileNetworkReady;
extern jmethodID mMethodVZRestoreNetworkState;
