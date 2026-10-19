// Batch p1-core-platform-global-f216b6-1: the Android JNI sound natives of the platform pass (nativeResumeSound through
// nativeDetectPhoneLang). Each one calls a static GLMediaPlayer method through the JNIEnv in mEnv, with the class
// mClassGLMediaPlayer and a method ID.
//
// Hex-Rays is the primary source; the ARM listing (tools/decomp_asm.py) confirms the slot and the argument order:
//   - Void Java methods go through CallStaticVoidMethod, table slot 141 (byte offset 0x234). The binary returns the r0
//     left by that call, which has no defined value, so these are void (as p1-core-platform-global-f216b6-0).
//   - Int Java methods go through CallStaticIntMethod, table slot 129 (byte offset 0x204). Their jint result is returned.
//   - nativeSetVolumeBig promotes its float argument with __aeabi_f2d before the variadic call. The C++ variadic call
//     promotes the float to double the same way.
//   - nativeSetVolume and nativeSetPitch take a third float argument, converted by __aeabi_f2d the same way (ARM: R2
//     goes through the call, the double is stored at [SP+8]). The Hex-Rays signature with two arguments dropped it.
//   - nativeStopAllBigSound takes one argument (ARM: only r0 is used). The vox-audio declaration with a second argument
//     is ABI-compatible, since the body never reads r1.

#include "core-platform/tb/android_jni_bridge.hpp"

// Method IDs of the remaining sound natives. Zero-initialised .bss words in the binary (file-local). Their writers
// (GetStaticMethodID calls) are outside this batch and are not located yet.
jmethodID resumeSoundID = nullptr;
jmethodID resumeSoundBigID = nullptr;
jmethodID stopSoundID = nullptr;
jmethodID stopSoundBigID = nullptr;
jmethodID unloadSoundID = nullptr;
jmethodID unloadSoundBigID = nullptr;
jmethodID isSoundLoadedID = nullptr;
jmethodID isSoundLoadedBigID = nullptr;
jmethodID setVolID = nullptr;
jmethodID setVolumeBigID = nullptr;
jmethodID resetSoundID = nullptr;
jmethodID setPitchID = nullptr;
jmethodID stopAllID = nullptr;
jmethodID stopAllPoolID = nullptr;
jmethodID stopAllBigID = nullptr;
jmethodID destroySoundPoolID = nullptr;
jmethodID initSoundPoolArrayID = nullptr;
jmethodID getWidth = nullptr;
jmethodID isMediaPlaying = nullptr;
jmethodID detectPhoneLangID = nullptr;

// 0x53146c nativeResumeSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, resumeSoundID, a1, a2) through slot 141 (+0x234). Void.
extern "C" void nativeResumeSound(int a1, int a2) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, resumeSoundID, a1, a2);
}

// 0x5314c8 nativeResumeSoundBig
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, resumeSoundBigID, a1) through slot 141. Void.
extern "C" void nativeResumeSoundBig(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, resumeSoundBigID, a1);
}

// 0x531514 nativeStopSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopSoundID, a1, a2) through slot 141. Void.
extern "C" void nativeStopSound(int a1, int a2) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopSoundID, a1, a2);
}

// 0x531570 nativeStopSoundBig
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopSoundBigID, a1) through slot 141. Void. The vox-audio header
// declares this as int; the binary's result is the r0 left by the void call, so the declaration needs the integrator.
extern "C" void nativeStopSoundBig(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopSoundBigID, a1);
}

// 0x5315bc nativeUnloadSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, unloadSoundID, a1, a2) through slot 141. Void.
extern "C" void nativeUnloadSound(int a1, int a2) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, unloadSoundID, a1, a2);
}

// 0x531618 nativeUnloadSoundBig
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, unloadSoundBigID, a1) through slot 141. Void.
extern "C" void nativeUnloadSoundBig(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, unloadSoundBigID, a1);
}

// 0x531664 nativeIsSoundLoaded
// ARM: CallStaticIntMethod(mEnv, mClassGLMediaPlayer, isSoundLoadedID, a1, a2) through slot 129 (+0x204). Returns jint.
extern "C" int nativeIsSoundLoaded(int a1, int a2) {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassGLMediaPlayer, isSoundLoadedID, a1, a2);
}

// 0x5316c0 nativeIsSoundLoadedBig
// ARM: CallStaticIntMethod(mEnv, mClassGLMediaPlayer, isSoundLoadedBigID, a1) through slot 129. Returns jint.
extern "C" int nativeIsSoundLoadedBig(int a1) {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassGLMediaPlayer, isSoundLoadedBigID, a1);
}

// 0x53170c nativeSetVolume
// ARM: R0 is saved in R7 and becomes R3 (a1). R1 is stored as an int at [SP+0] (a2). R2 goes through BL __aeabi_f2d
// (a3), and the resulting double is stored at [SP+8]. Then CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, setVolID,
// a1, a2, (double)a3) through slot 141 (+0x234). The third float argument is converted by __aeabi_f2d. Void.
extern "C" void nativeSetVolume(int a1, int a2, float a3) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, setVolID, a1, a2, a3);
}

// 0x53177c nativeSetVolumeBig
// ARM: BL __aeabi_f2d on a2, then CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, setVolumeBigID, a1, (double)a2, a3)
// through slot 141. The variadic call promotes the float to double, as the binary does. Void.
extern "C" void nativeSetVolumeBig(int a1, float a2, int a3) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, setVolumeBigID, a1, a2, a3);
}

// 0x5317f0 nativeResetSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, resetSoundID, a1) through slot 141. Void.
extern "C" void nativeResetSound(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, resetSoundID, a1);
}

// 0x53183c nativeSetPitch
// ARM: R0 is saved in R7 and becomes R3 (a1). R1 is stored as an int at [SP+0] (a2). R2 goes through BL __aeabi_f2d
// (a3), and the resulting double is stored at [SP+8]. Then CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, setPitchID,
// a1, a2, (double)a3) through slot 141 (+0x234). The third float argument is converted by __aeabi_f2d. Void.
extern "C" void nativeSetPitch(int a1, int a2, float a3) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, setPitchID, a1, a2, a3);
}

// 0x5318ac nativeStopAllSounds
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopAllID) through slot 141. No arguments. Void.
extern "C" void nativeStopAllSounds() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopAllID);
}

// 0x5318f4 nativeStopAllSoundPool
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopAllPoolID, a1) through slot 141. Void.
extern "C" void nativeStopAllSoundPool(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopAllPoolID, a1);
}

// 0x531940 nativeStopAllBigSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopAllBigID, a1) through slot 141. One argument. Void.
extern "C" void nativeStopAllBigSound(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, stopAllBigID, a1);
}

// 0x53198c nativeDestroySoundPool
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, destroySoundPoolID) through slot 141. No arguments. Void.
extern "C" void nativeDestroySoundPool() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, destroySoundPoolID);
}

// 0x5319d4 nativeInitSoundPoolArray
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, initSoundPoolArrayID) through slot 141. No arguments. Void.
extern "C" void nativeInitSoundPoolArray() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, initSoundPoolArrayID);
}

// 0x531a1c nativeGetWidth
// ARM: CallStaticIntMethod(mEnv, mClassGLMediaPlayer, getWidth) through slot 129 (+0x204). No arguments. Returns jint.
extern "C" int nativeGetWidth() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassGLMediaPlayer, getWidth);
}

// 0x531a64 nativeIsMediaPlaying
// ARM: CallStaticIntMethod(mEnv, mClassGLMediaPlayer, isMediaPlaying, a1) through slot 129. Returns jint.
extern "C" int nativeIsMediaPlaying(int a1) {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassGLMediaPlayer, isMediaPlaying, a1);
}

// 0x531ab0 nativeDetectPhoneLang
// ARM: CallStaticIntMethod(mEnv, mClassGLMediaPlayer, detectPhoneLangID) through slot 129. No arguments. Returns jint.
extern "C" int nativeDetectPhoneLang() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassGLMediaPlayer, detectPhoneLangID);
}
