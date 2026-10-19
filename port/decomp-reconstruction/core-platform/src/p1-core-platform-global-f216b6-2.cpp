// Batch p1-core-platform-global-f216b6-2: the Android platform JNI glue of the platform pass. It holds the JNI natives of
// GLMediaPlayer (nativeInit, nativeLoadMovie, nativeGetSdFolderPath), GLResLoader (nativeInit), DungeonHunter2 (nativeInit,
// nativeSetPhone and the natives that call its static methods) and JNI_OnLoad.
//
// Hex-Rays is the primary source. Where it differs from the ARM listing (tools/decomp_asm.py), the listing decides:
//   - nativeGetSdFolderPath returns the malloc'd copy in r0 (R6). Hex-Rays shows a void function that drops it. The caller
//     in appInit stores the value as SdFolderPath.
//   - Java_..._DungeonHunter2_nativeInit takes the jclass in r1, which NewGlobalRef reads. Hex-Rays shows no arguments.
//   - JNI_OnLoad calls VoxSetJavaVMC with one argument (r1 is left as it came in, and the callee has one parameter).
//
// The JNI calls go through mEnv->functions in the table slot the binary uses. The +N byte offsets (4 bytes per slot in the
// 32-bit table) are in the comments: NewGlobalRef +84, DeleteLocalRef +92, GetStaticMethodID +452, CallStaticObjectMethod
// +456, NewStringUTF +668, GetStringUTFChars +676, ReleaseStringUTFChars +680, CallStaticIntMethod +516 and
// CallStaticVoidMethod +564. The Java side of each native is void where the binary returns the r0 left by a void call.
// Those wrappers return nothing (as p1-core-platform-global-f216b6-0 does for its void natives).

#include "core-platform/tb/android_jni_platform.hpp"

#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "core-platform/debug_out.hpp"
#include "tinyxml-and-c-libs/nvthread.hpp"
#include "vox-audio/vox/driver_android.hpp"

namespace {

// GetStaticMethodID (+452). Every method lookup in this batch goes through here.
jmethodID GetStaticMethod(jclass cls, const char* name, const char* signature) {
    return mEnv->functions->GetStaticMethodID(mEnv, cls, name, signature);
}

}  // namespace

// Globals written by the nativeInit natives of this batch. Zero-initialised in the binary (.bss).
jmethodID getSDFolderID = nullptr;
jmethodID loadMovie = nullptr;
jclass mClassGLResLoader = nullptr;
jmethodID getResFullID = nullptr;
jmethodID getResBytesID = nullptr;
jmethodID getResLengthID = nullptr;
jmethodID mMethodSendAppToBackground = nullptr;
jmethodID mMethodOpenGLive = nullptr;
jmethodID mMethodOpenIGP = nullptr;
jmethodID mMethodNotifyTrophy = nullptr;
jmethodID mMethodGet_PhoneLanguage = nullptr;
jmethodID mMethodGet_PhoneManufacturer = nullptr;
jmethodID mMethodGet_PhoneModel = nullptr;
jmethodID mMethodExit = nullptr;
jmethodID mMethodIsWifiAlive = nullptr;
jmethodID mMethodIsSupportMM = nullptr;
jmethodID mMethodOpenBrowser = nullptr;
jmethodID mMethodUnlockDemo = nullptr;
jmethodID mMethodLockDemo = nullptr;
jmethodID mMethodDisableLaunchGame = nullptr;
jmethodID mMethodIncreaseLaunchTimes = nullptr;

// 0x531af8 nativeGetSdFolderPath
// ARM, re-read instruction by instruction against Hex-Rays: if getSDFolderID is 0 the guard at 0x531b14 branches
// to locret_531B9C, which pops WITHOUT writing r0, so that path returns the caller's incoming r0; the malloc path
// returns buf, and a NULL GetStringUTFChars result returns r6 = 0 (MOVEQ R6, R7 at 0x531b60, returned at
// loc_531B94). Otherwise folder = CallStaticObjectMethod(mEnv, mClassGLMediaPlayer, getSDFolderID) (table slot
// +456, LDR PC,[R3,#0x1C8]); text = GetStringUTFChars(mEnv, folder, NULL) (+676, [#0x2A4]); if text is not NULL,
// buf = malloc(0x400), strcpy(buf, text), ReleaseStringUTFChars(mEnv, folder, text) (+680, [#0x2A8]). LC_API_MALLOC_0
// and LC_API_STRCPY_0 are the C library's malloc and strcpy (chunk_000.c).
// Named deviation, the only one: the early out passes the caller's r0 through, which a no-argument C++ function
// cannot read, so this returns nullptr there. The value is observable in the binary - appInit (0x530ba8) calls
// this at 0x530bc8 and stores r0 into the RES_PATH global (0x99b108) at 0x530bec, and the shipped chain leaves a
// defined r0 there, because Java_..._GameRenderer_nativeInit (0x5311c8) never writes r0 before BL appInit
// (0x5311f8), so it is still that native's JNIEnv* - a leftover-register return of the same kind the ledger marks
// reconstructed for nativePauseSoundBig (0x531420), nativeLoadSound (0x531230) and nativeResumeSound (0x53146c);
// the RES_PATH consequence belongs to the appInit row (0x530ba8, a skipped row owned by the app/menu batch).
extern "C" char* nativeGetSdFolderPath() {
    if (getSDFolderID == nullptr) {
        return nullptr;
    }
    jstring folder = static_cast<jstring>(
        mEnv->functions->CallStaticObjectMethod(mEnv, mClassGLMediaPlayer, getSDFolderID));  // +456
    const char* text = mEnv->functions->GetStringUTFChars(mEnv, folder, nullptr);            // +676
    char* buffer = nullptr;
    if (text != nullptr) {
        buffer = static_cast<char*>(std::malloc(0x400));
        std::strcpy(buffer, text);
        mEnv->functions->ReleaseStringUTFChars(mEnv, folder, text);  // +680
    }
    return buffer;
}

// 0x531bac nativeLoadMovie
// ARM: log; path = NewStringUTF(mEnv, movie) (+668); log; r0 = CallStaticIntMethod(mEnv, mClassGLMediaPlayer, loadMovie,
// path, language) (+516, language is stored at [SP]); log; DeleteLocalRef(mEnv, path) (+92); log; return r0.
// The Java side is loadMovie(String, int) returning int, so the return is defined.
extern "C" int nativeLoadMovie(const char* movie, int language) {
    appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________11111");
    jstring path = mEnv->functions->NewStringUTF(mEnv, movie);
    appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________222222");
    jint result = mEnv->functions->CallStaticIntMethod(mEnv, mClassGLMediaPlayer, loadMovie, path, language);
    appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________333333");
    mEnv->functions->DeleteLocalRef(mEnv, path);
    appDebugLog("GLMediaPlayer", "Player Init is OK__________________________________444444");
    return result;
}

// 0x531ca4 Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit
// ARM: log; mClassGLMediaPlayer = NewGlobalRef(mEnv, a2) (+84, a2 is the jclass in r1); then 28 GetStaticMethodID lookups
// in order (+452) on that class, and the last one, getSDFolder, is stored in getSDFolderID. The Java side is a static void
// native nativeInit(int), so the r0 of the last lookup is dropped, and the int argument is not read.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit(JNIEnv*, jclass cls,
                                                                                                    jint) {
    appDebugLog("GLMediaPlayer", "Player Init is OK");
    mClassGLMediaPlayer = static_cast<jclass>(mEnv->functions->NewGlobalRef(mEnv, cls));  // +84
    isSoundLoadedID = GetStaticMethod(mClassGLMediaPlayer, "isSoundLoaded", "(II)I");
    isSoundLoadedBigID = GetStaticMethod(mClassGLMediaPlayer, "isSoundLoadedBig", "(I)I");
    unloadSoundID = GetStaticMethod(mClassGLMediaPlayer, "unloadSound", "(II)V");
    unloadSoundBigID = GetStaticMethod(mClassGLMediaPlayer, "unloadSoundBig", "(I)V");
    loadSoundID = GetStaticMethod(mClassGLMediaPlayer, "loadSound", "(II)V");
    loadSoundBigID = GetStaticMethod(mClassGLMediaPlayer, "loadSoundBig", "(I)V");
    playSoundID = GetStaticMethod(mClassGLMediaPlayer, "playSound", "(IIF)V");
    playSoundBigID = GetStaticMethod(mClassGLMediaPlayer, "playSoundBig", "(IFII)V");
    pauseSoundID = GetStaticMethod(mClassGLMediaPlayer, "pauseSound", "(II)V");
    pauseSoundBigID = GetStaticMethod(mClassGLMediaPlayer, "pauseSoundBig", "(I)V");
    resumeSoundID = GetStaticMethod(mClassGLMediaPlayer, "resumeSound", "(II)V");
    resumeSoundBigID = GetStaticMethod(mClassGLMediaPlayer, "resumeSoundBig", "(I)V");
    stopSoundID = GetStaticMethod(mClassGLMediaPlayer, "stopSound", "(II)V");
    stopSoundBigID = GetStaticMethod(mClassGLMediaPlayer, "stopSoundBig", "(I)V");
    setVolID = GetStaticMethod(mClassGLMediaPlayer, "setVolume", "(IIF)V");
    setVolumeBigID = GetStaticMethod(mClassGLMediaPlayer, "setVolumeBig", "(IFI)V");
    resetSoundID = GetStaticMethod(mClassGLMediaPlayer, "resetSound", "(I)V");
    setPitchID = GetStaticMethod(mClassGLMediaPlayer, "setPitch", "(IIF)V");
    stopAllID = GetStaticMethod(mClassGLMediaPlayer, "stopAllSounds", "()V");
    stopAllPoolID = GetStaticMethod(mClassGLMediaPlayer, "stopAllPool", "(I)V");
    stopAllBigID = GetStaticMethod(mClassGLMediaPlayer, "stopAllBig", "(I)V");
    destroySoundPoolID = GetStaticMethod(mClassGLMediaPlayer, "destroySoundPool", "()V");
    initSoundPoolArrayID = GetStaticMethod(mClassGLMediaPlayer, "initSoundPoolArray", "()V");
    loadMovie = GetStaticMethod(mClassGLMediaPlayer, "loadMovie", "(Ljava/lang/String;I)I");
    getWidth = GetStaticMethod(mClassGLMediaPlayer, "getWidth", "()I");
    isMediaPlaying = GetStaticMethod(mClassGLMediaPlayer, "isMediaPlaying", "(I)I");
    detectPhoneLangID = GetStaticMethod(mClassGLMediaPlayer, "detectPhoneLang", "()I");
    getSDFolderID = GetStaticMethod(mClassGLMediaPlayer, "getSDFolder", "()Ljava/lang/String;");
}

// 0x53224c JNI_OnLoad
// ARM: r4 = vm; VoxSetJavaVMC(vm) (r0 is vm; r1 keeps the reserved argument and the callee takes one argument -
// VoxSetJavaVMC is void(_JavaVM*)); MOV R0, R4; NVThreadInit(vm); MOV R0, #0x10004; POP {R4,PC}. 0x10004 is
// JNI_VERSION_1_4. Both calls pass r0 through unchanged, so no cast is involved.
// Verified: NVThreadInit now takes and returns JavaVM* (0x533bd8's listing stores r0 whole and returns it), so the
// VM pointer reaches g_nvThreadVm at host width and is not truncated to int, which was the row's only deviation.
extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
    VoxSetJavaVMC(vm);
    (void)NVThreadInit(vm);
    return JNI_VERSION_1_4;
}

// 0x5324c0 Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit
// ARM: log "GameLoft"/"Loader Init is OK"; mClassGLResLoader = NewGlobalRef(mEnv, a2) (+84); then three GetStaticMethodID
// lookups (+452): getResourceFull, getResourceBytes and getResourceLength. The Java side is a static void nativeInit(int),
// so the r0 of the last lookup is dropped.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit(JNIEnv*, jclass cls, jint) {
    appDebugLog("GameLoft", "Loader Init is OK");
    mClassGLResLoader = static_cast<jclass>(mEnv->functions->NewGlobalRef(mEnv, cls));  // +84
    getResFullID = GetStaticMethod(mClassGLResLoader, "getResourceFull", "(Ljava/lang/String;)[B");
    getResBytesID = GetStaticMethod(mClassGLResLoader, "getResourceBytes", "(Ljava/lang/String;II)[B");
    getResLengthID = GetStaticMethod(mClassGLResLoader, "getResourceLength", "(Ljava/lang/String;)I");
}

// 0x5325c4 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit
// ARM: mClassDungeonHunter2 = NewGlobalRef(mEnv, a2) (+84, the jclass in r1); then 25 GetStaticMethodID lookups (+452) in
// order, each stored in its global. The last one, VZRestoreNetworkState, is returned in r0. The Java side is a static void
// nativeInit(int), so that value is dropped. mClassDungeonHunter2 and the mMethodVZ* IDs are defined in
// tinyxml-and-c-libs/src/p1-tinyxml-and-c-libs-global-f216b6-0.cpp.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit(JNIEnv*, jclass cls,
                                                                                                      jint) {
    mClassDungeonHunter2 = static_cast<jclass>(mEnv->functions->NewGlobalRef(mEnv, cls));  // +84
    mMethodSendAppToBackground = GetStaticMethod(mClassDungeonHunter2, "sendAppToBackground", "()V");
    mMethodOpenGLive = GetStaticMethod(mClassDungeonHunter2, "OpenGLive", "(I)V");
    mMethodOpenIGP = GetStaticMethod(mClassDungeonHunter2, "OpenIGP", "(I)V");
    mMethodNotifyTrophy = GetStaticMethod(mClassDungeonHunter2, "NotifyTrophy", "(I)V");
    mMethodGet_PhoneLanguage = GetStaticMethod(mClassDungeonHunter2, "Get_PhoneLanguage", "()I");
    mMethodGet_PhoneManufacturer = GetStaticMethod(mClassDungeonHunter2, "Get_PhoneManufacturer", "()I");
    mMethodGet_PhoneModel = GetStaticMethod(mClassDungeonHunter2, "Get_PhoneModel", "()I");
    mMethodExit = GetStaticMethod(mClassDungeonHunter2, "Exit", "()V");
    mMethodIsWifiAlive = GetStaticMethod(mClassDungeonHunter2, "isWifiAlive", "()I");
    mMethodIsSupportMM = GetStaticMethod(mClassDungeonHunter2, "isSupportMM", "()I");
    mMethodOpenBrowser = GetStaticMethod(mClassDungeonHunter2, "openBrowser", "(Ljava/lang/String;)V");
    mMethodUnlockDemo = GetStaticMethod(mClassDungeonHunter2, "unlockDemo", "()I");
    mMethodLockDemo = GetStaticMethod(mClassDungeonHunter2, "lockDemo", "()V");
    mMethodDisableLaunchGame = GetStaticMethod(mClassDungeonHunter2, "DisableLaunchGame", "()I");
    mMethodIncreaseLaunchTimes = GetStaticMethod(mClassDungeonHunter2, "IncreaseLaunchTimes", "()V");
    mMethodVZIsInProgress = GetStaticMethod(mClassDungeonHunter2, "VZIsInProgress", "()I");
    mMethodVZIsErrorOcurred = GetStaticMethod(mClassDungeonHunter2, "VZIsErrorOcurred", "()I");
    mMethodVZRequestLogin = GetStaticMethod(mClassDungeonHunter2, "VZRequestLogin", "()V");
    mMethodVZRequestPurchaseGame = GetStaticMethod(mClassDungeonHunter2, "VZRequestPurchaseGame", "()V");
    mMethodVZGetGamePrice = GetStaticMethod(mClassDungeonHunter2, "VZGetGamePrice", "()[B");
    mMethodVZGetGameName = GetStaticMethod(mClassDungeonHunter2, "VZGetGameName", "()[B");
    mMethodVZGetLastServerMsg = GetStaticMethod(mClassDungeonHunter2, "VZGetLastServerMsg", "()[B");
    mMethodVZInitMobileNetwork = GetStaticMethod(mClassDungeonHunter2, "VZInitMobileNetwork", "()V");
    mMethodVZIsMobileNetworkReady = GetStaticMethod(mClassDungeonHunter2, "VZIsMobileNetworkReady", "()I");
    mMethodVZRestoreNetworkState = GetStaticMethod(mClassDungeonHunter2, "VZRestoreNetworkState", "()V");
}

// 0x532a8c nativeSendAppBackground
// ARM: CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodSendAppToBackground) (+564). Void.
extern "C" void nativeSendAppBackground() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodSendAppToBackground);
}

// 0x532ad4 nativeOpenIGP
// ARM: CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodOpenIGP, language) (+564). Void. The game headers declare
// this as int with C++ linkage; the integrator should make the declaration void with extern "C".
extern "C" void nativeOpenIGP(int language) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodOpenIGP, language);
}

// 0x532b20 nativeOpenGLive
// ARM: CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodOpenGLive, language) (+564). Void, as nativeOpenIGP.
extern "C" void nativeOpenGLive(int language) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodOpenGLive, language);
}

// 0x532b6c NotifyTrophy
// ARM: CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodNotifyTrophy, glIndex) (+564). Void. The Hex-Rays body of
// TrophyManager::UnlockTrophiesGLLive (0x37fab4, chunk_006.c) takes this call's r0 as its return value. That value has no
// defined meaning, so the caller must not use it.
extern "C" void NotifyTrophy(int glIndex) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodNotifyTrophy, glIndex);
}

// 0x532bb8 nativeExit
// ARM: CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodExit) (+564). Void.
extern "C" void nativeExit() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodExit);
}

// 0x532c00 nativeIsWifiAlive
// ARM: CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodIsWifiAlive) (+516). Returns the jint.
extern "C" int nativeIsWifiAlive() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodIsWifiAlive);
}

// 0x532c48 nativeOpenBrowser
// ARM: text = NewStringUTF(mEnv, url) (+668); CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodOpenBrowser, text)
// (+564); DeleteLocalRef(mEnv, text) (+92). The Java side is openBrowser(String), void.
extern "C" void nativeOpenBrowser(const char* url) {
    jstring text = mEnv->functions->NewStringUTF(mEnv, url);
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodOpenBrowser, text);
    mEnv->functions->DeleteLocalRef(mEnv, text);
}

// 0x532cc8 nativeGet_PhoneLanguage
// ARM: CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodGet_PhoneLanguage) (+516). Returns the jint.
extern "C" int nativeGet_PhoneLanguage() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodGet_PhoneLanguage);
}

// 0x532d10 nativeGet_PhoneManufacturer
// ARM: CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodGet_PhoneManufacturer) (+516). Returns the jint.
extern "C" int nativeGet_PhoneManufacturer() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodGet_PhoneManufacturer);
}

// 0x532d58 nativeGet_PhoneModel
// ARM: CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodGet_PhoneModel) (+516). Returns the jint.
extern "C" int nativeGet_PhoneModel() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodGet_PhoneModel);
}

// 0x532da0 nativeUnlockDemo
// ARM: CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodUnlockDemo) (+516). Returns the jint.
extern "C" int nativeUnlockDemo() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodUnlockDemo);
}

// 0x532de8 nativeLockDemo
// ARM: CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodLockDemo) (+564). Void.
extern "C" void nativeLockDemo() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodLockDemo);
}

// 0x532e30 nativeDisableLaunchGame
// ARM: CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodDisableLaunchGame) (+516). Returns the jint.
extern "C" int nativeDisableLaunchGame() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodDisableLaunchGame);
}

// 0x532e78 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone
// ARM: Width_Screen = a3 (r2) and Height_Screen = a4 (r3); the binary then returns &Height_Screen in r0. The Java side is a
// static void nativeSetPhone(int, int), so that address is dropped (as the nativeGetJNIEnv wrapper of batch -0 does).
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone(JNIEnv*, jclass,
                                                                                                          jint width,
                                                                                                          jint height) {
    Width_Screen = width;
    Height_Screen = height;
}
