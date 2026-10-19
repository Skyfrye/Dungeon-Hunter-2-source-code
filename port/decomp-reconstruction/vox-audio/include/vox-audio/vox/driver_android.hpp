// vox::DriverAndroid: the Android output driver. Its two back ends are the audio thread
// (AT, mode 1 at +0x54) and the OpenSL-style output (OSL, mode 2, empty in the original). The audio thread drives
// android.media.AudioTrack through JNI (the JavaVM set by VoxSetJavaVM). It derives from DriverCallbackInterface, whose
// mutex (+0x04), active byte (+0x08), source counter (+0x0c) and source list (+0x10) it shares.
#pragma once

#include <jni.h>

#include <thread>

#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/driver_callback.hpp"
#include "vox-audio/vox/mutex.hpp"

namespace vox {

class DriverAndroid : public DriverCallbackInterface {
public:
    // C1 0x88fa80, C2 0x88fae4: the base constructor, mode 0 and then Init(nullptr).
    DriverAndroid();
    // D1 0x88f9ec and D2 0x88fa44, same body: Shutdown then the base destructor. D0 0x88fa28 is the deleting form.
    ~DriverAndroid() override;

    // 0x88ee78: dispatches Update to the audio thread (mode 1) or OSL (mode 2).
    void Update(float dt) override;
    // 0x88f028: dispatches Resume by the mode word.
    void Resume() override;
    // 0x88f130: dispatches Suspend by the mode word.
    void Suspend() override;
    // 0x88f644: dispatches Shutdown; _ShutdownAT joins the thread.
    void Shutdown() override;

    // 0x88f9a0: the lock, DriverCallbackInterface::Init, SetDefaultParameter, _InitAT, SetDefaultParameter and the unlock.
    void Init(void* context) override;
    // 0x88fbe8: under the lock, an active driver creates a DriverAndroidSource (the base source counter at +0x0c is the
    // source's flags), links it at the tail of the base source list and counts it; an inactive one returns null.
    DriverSourceInterface* CreateDriverSource(const std::int32_t* params, void* user, int flags) override;
    // 0x88f59c: under the lock, unlinks and frees the source's list node, runs the source's destructor and frees it.
    void DestroyDriverSource(DriverSourceInterface* source) override;

    // 0x88ee6c: the original prints nothing here.
    void PrintDebug() override;

    // OSL and audio-thread bodies. 0x88ee5c, 0x88ee60, 0x88ee64, 0x88ee68 and
    // 0x88ee70, 0x88ee74 are empty in the original.
    void _InitOSL(void* context);
    void _ShutdownOSL();
    void _SuspendOSL();
    void _ResumeOSL();
    void _UpdateOSL(float dt);
    void _UpdateAT(float dt);

    // 0x88f328: the audio thread entry: attaches the thread to the JavaVM, creates and plays the AudioTrack
    // (3 = STREAM_MUSIC, 44100 Hz, 12 = CHANNEL_OUT_STEREO, 2 = ENCODING_PCM_16BIT, 4 * frames bytes, 1 = MODE_STREAM), then
    // writes chunks (DoCallbackAT) until m_running clears, and stops and releases the track.
    int UpdateThreadedAT(void* unused);
    // 0x88f14c: one chunk: mixes `chunk_` frames into the byte array (the base _FillBuffer under the lock), writes it to the
    // track, and sleeps when the buffered duration is ahead of the clock by more than the threshold.
    void DoCallbackAT(jarray& array);
    // 0x88f660: stores the sample rate 44100 and, under a JavaVM, caches the AudioTrack class and method ids, sizes the
    // ring from getMinBufferSize / 4, sets the timing statics, selects mode 1 and starts the audio thread.
    int _InitAT(void* context);

    // 0x88f618: running flag cleared, then the thread is joined (pthread_join in the original).
    void _ShutdownAT();
    // 0x88f044 and 0x88ef6c: under the lock and while the audio thread is active: AudioTrack pause()/play(), the paused byte
    // and the buffered duration / start time.
    void _SuspendAT();
    void _ResumeAT();

    // Static JNI and tuning values set by the VoxSet* exports.
    static _JavaVM* s_javaVM;             // _ZN3vox13DriverAndroid8s_javaVME
    static int s_androidAPILevel;         // _ZN3vox13DriverAndroid17s_androidAPILevelE
    static double m_dataThresholdRatio;   // _ZN3vox13DriverAndroid20m_dataThresholdRatioE
    static bool m_running;                // _ZN3vox13DriverAndroid9m_runningE

    // Audio-thread timing in seconds (differences only are used). m_updateTime is one chunk
    // (chunk frames / 44100), m_dataThreshold is negative, m_dataDuration is the buffered audio.
    static double m_updateTime;           // _ZN3vox13DriverAndroid12m_updateTimeE
    static double m_updateStartTime;      // _ZN3vox13DriverAndroid17m_updateStartTimeE
    static double m_dataThreshold;        // _ZN3vox13DriverAndroid15m_dataThresholdE
    static double m_dataDuration;         // _ZN3vox13DriverAndroid14m_dataDurationE

    // android.media.AudioTrack: the class (a global reference) and the method ids _InitAT caches.
    static jclass cAudioTrack;            // _ZN3vox13DriverAndroid11cAudioTrackE
    static jmethodID mAudioTrack;         // "<init>" (IIIIII)V
    static jmethodID mGetMinBufferSize;   // static (III)I
    static jmethodID mPlay;               // ()V
    static jmethodID mPause;              // ()V
    static jmethodID mStop;               // ()V
    static jmethodID mRelease;            // ()V
    static jmethodID mWrite;              // ([BII)I

    friend struct DriverAndroidTestAccess;
    int mode_ = 0;                 // +0x54: 1 audio thread, 2 OSL
    std::int32_t frames_ = 0;      // +0x58: the ring frames (getMinBufferSize / 4)
    std::int32_t chunk_ = 0;       // +0x5c: frames per write, min(frames_, 1024)
    bool paused_ = false;          // +0x60: set by _SuspendAT, cleared by _ResumeAT and _InitAT
    jobject track_ = nullptr;      // +0x64: the AudioTrack object
    std::thread thread_;           // +0x68 (pthread_t in the original)
};

}  // namespace vox

// Exported VoxSet* functions. The original names have no vox:: prefix.
void VoxSetJavaVM(_JavaVM* java_vm);           // 0x88ed8c
void VoxSetJavaVMC(_JavaVM* java_vm);          // 0x88ee1c: VoxSetJavaVM, then the threshold 1.0
void VoxSetDataThreshold(double ratio);        // 0x88edac: clamped to [0, 1]
void VoxSetAndroidAPILevel(int level);         // 0x88ee38

namespace vox {

// vox::DriverAndroidSource: the callback source used by the Android driver.
class DriverAndroidSource : public DriverCallbackSourceInterface {
public:
    // 0x88fbac (C1) and 0x88fc8c (C2): the base constructor, the vtable, then Init.
    DriverAndroidSource(const std::int32_t* format, const std::int32_t* buffer_count,
                        std::uint32_t flags);
    // D1 0x88fb28 and D2 0x88fb78 (identical bodies); D0 0x88fb5c is the deleting form.
    ~DriverAndroidSource() override = default;

    // 0x88ee58: empty in the original.
    void PrintDebug();
};

}  // namespace vox
