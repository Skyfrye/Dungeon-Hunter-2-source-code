// vox::DriverAndroid and vox::DriverAndroidSource: the destructor, the JNI-bound audio
// thread (AudioTrack through the JavaVM) and the callback source constructor.
#include <chrono>
#include <thread>

#if defined(__ANDROID__)
#include <android/log.h>
#endif

#include "vox-audio/vox/driver_android.hpp"

namespace vox {

namespace {

// Smallest AudioTrack buffer, in frames: four 1024-frame mixer chunks (see _InitAT).
constexpr int kMinTrackFrames = 4 * 1024;

// Same stand-in as driver_android.cpp for _GetTime: a steady clock, differences only.
double DriverAndroidNowSeconds() {
    using Clock = std::chrono::steady_clock;
    return std::chrono::duration<double>(Clock::now().time_since_epoch()).count();
}

}  // namespace

// 0x88fbac _ZN3vox19DriverAndroidSourceC1EPvS1_j and 0x88fc8c (C2): the callback source
// base is built first, then the vtable is set and Init builds the ring.
DriverAndroidSource::DriverAndroidSource(const std::int32_t* format,
                                         const std::int32_t* buffer_count,
                                         std::uint32_t flags)
    : DriverCallbackSourceInterface(format, buffer_count, flags) {
    (void)Init();  // the constructor does not use the Init result (0x88fbac)
}

// 0x88ee58 _ZN3vox19DriverAndroidSource10PrintDebugEv
void DriverAndroidSource::PrintDebug() {}

// D1 0x88f9ec and D2 0x88fa44, same body; D0 0x88fa28 is the deleting form.
// Verified against the listing (0x88f9ec..0x88fa1c and 0x88fa44..0x88fa74): the vtable is stored, then Shutdown() (0x88f644),
// then DriverCallbackInterface::~DriverCallbackInterface (0x891120), which the base-class destructor runs after this body.
// 0x88fa28 calls this destructor and then LC_API_FREE_0 on the object (the deleting form releases the block with operator
// delete, the project's convention).
DriverAndroid::~DriverAndroid() {
    Shutdown();
}

// 0x88f328 _ZN3vox13DriverAndroid16UpdateThreadedATEPv
// Verified against the listing (0x88f328..0x88f574). A null this returns 0 without locking (not expressible on a member).
// Otherwise: lock, AttachCurrentThread (the JavaVM vtable slot at +0x10, called with 0), and when an env comes back:
// PushLocalFrame(2); NewObject(cAudioTrack, mAudioTrack, 3, 44100, 12, 2, 4 * frames at +0x58, 1) into the track word +0x64;
// CallNonvirtualVoidMethod(track, cAudioTrack, mPlay); NewByteArray(4 * frames); then the active byte +0x08 = 1, unlock,
// m_updateStartTime = _GetTime(), and the loop: while m_running, while the byte at +0x60 is set usleep(m_updateTime * 1e6),
// otherwise DoCallbackAT(&array); at the end the active byte takes m_running, the lock is retaken,
// CallNonvirtualVoidMethod(mStop) and (mRelease) run, PopLocalFrame(env, 0) and DetachCurrentThread (JavaVM slot +0x14)
// follow. Every failure path only detaches; the lock taken first is released at the end on every path.
// Deviation: without a JavaVM (s_javaVM null, the host tests) nothing can be attached, so the thread does nothing (the
// original dereferences the null JavaVM); the PopLocalFrame argument is the running byte the listing leaves in r6 (it is
// 0, since the loop only ends when m_running is clear), i.e. a null result reference.
int DriverAndroid::UpdateThreadedAT(void* unused) {
    (void)unused;
    JNIEnv* env = nullptr;
    jarray array = nullptr;
    mutex_.Lock();
    if (s_javaVM != nullptr) {
        s_javaVM->AttachCurrentThread(&env, nullptr);
    }
    if (env != nullptr) {
        env->PushLocalFrame(2);
        track_ = env->NewObject(cAudioTrack, mAudioTrack, 3, 44100, 12, 2, 4 * frames_, 1);
        if (track_ != nullptr) {
            env->CallNonvirtualVoidMethod(track_, cAudioTrack, mPlay);
            array = env->NewByteArray(4 * frames_);
        }
        if (track_ != nullptr && array != nullptr) {
            active_ = true;
            mutex_.Unlock();
            m_updateStartTime = DriverAndroidNowSeconds();
            while (m_running) {
                bool stopped = false;
                while (paused_) {
                    std::this_thread::sleep_for(
                        std::chrono::microseconds(static_cast<unsigned int>(m_updateTime * 1000000.0)));
                    if (!m_running) {
                        stopped = true;
                        break;
                    }
                }
                if (stopped) {
                    break;
                }
                DoCallbackAT(array);
            }
            active_ = m_running;
            mutex_.Lock();
            env->CallNonvirtualVoidMethod(track_, cAudioTrack, mStop);
            env->CallNonvirtualVoidMethod(track_, cAudioTrack, mRelease);
            env->PopLocalFrame(nullptr);
            s_javaVM->DetachCurrentThread();
        } else {
            s_javaVM->DetachCurrentThread();
        }
    }
    mutex_.Unlock();
    return 0;
}

// 0x88f14c _ZN3vox13DriverAndroid12DoCallbackATERP7_jarray
// Verified against the listing (0x88f14c..0x88f2dc): GetEnv (JavaVM slot +0x18, version 0x10002);
// GetPrimitiveArrayCritical(env, array, 0) into a buffer; when it is non-null, Lock,
// DriverCallbackInterface::_FillBuffer(this, buffer, frames at +0x5C), Unlock,
// ReleasePrimitiveArrayCritical(env, array, buffer, 0), then CallNonvirtualIntMethod(track,
// cAudioTrack, mWrite, array, 0, 4 * frames) and m_dataDuration += m_updateTime. The timing tail
// then runs on both paths: the first call stores m_updateStartTime = _GetTime() (the function-local flag isFirst, initially
// 1), and the function sleeps usleep(m_updateTime * 1e6) when m_dataDuration - (now - m_updateStartTime) exceeds
// m_dataThreshold. The original returns the usleep result (or the comparison); the only caller (UpdateThreadedAT) ignores it.
// Deviation: without a JavaVM or an env (the host tests) there is no array to fill, so the JNI block is skipped and the
// timing tail still runs; std::this_thread::sleep_for stands in for usleep.
void DriverAndroid::DoCallbackAT(jarray& array) {
    JNIEnv* env = nullptr;
    if (s_javaVM != nullptr) {
        s_javaVM->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_2);
    }
    if (env != nullptr) {
        void* buffer = env->GetPrimitiveArrayCritical(array, nullptr);
        if (buffer != nullptr) {
            const int frames = chunk_;
            mutex_.Lock();
            _FillBuffer(static_cast<std::int16_t*>(buffer), frames);
            mutex_.Unlock();
            env->ReleasePrimitiveArrayCritical(array, buffer, 0);
            env->CallNonvirtualIntMethod(track_, cAudioTrack, mWrite, array, 0, 4 * frames);
            m_dataDuration = m_dataDuration + m_updateTime;
        }
    }
    static bool is_first = true;  // DoCallbackAT(_jarray*&)::isFirst
    if (is_first) {
        const double time = DriverAndroidNowSeconds();
        is_first = false;
        m_updateStartTime = time;
    }
    const double buffered = m_dataDuration;
    if (buffered - (DriverAndroidNowSeconds() - m_updateStartTime) > m_dataThreshold) {
        std::this_thread::sleep_for(
            std::chrono::microseconds(static_cast<unsigned int>(m_updateTime * 1000000.0)));
    }
}

// 0x88f660 _ZN3vox13DriverAndroid7_InitATEPv
// Verified against the listing (0x88f660..0x88f7C4): the first call is SetDriverSampleRate with the immediate 44100 (MOVW
// R0,#0xAC44 at 0x88f664) and the argument is never read; with no JavaVM the function returns whatever that void call leaves
// in r0 (44100 here). With a JavaVM: GetEnv (slot +0x18, 0x10002); when cAudioTrack is not cached yet:
// FindClass("android/media/AudioTrack") into cAudioTrack (a failed lookup returns), NewGlobalRef of it, GetMethodID("<init>",
// "(IIIIII)V") into mAudioTrack, GetStaticMethodID("getMinBufferSize", "(III)I") into mGetMinBufferSize, GetMethodID for
// "play", "pause", "stop", "release" ("()V") and "write" ("([BII)I"); then CallStaticIntMethod(mGetMinBufferSize, 44100,
// 12, 2) / 4 into the ring frames word (+0x58), the chunk word (+0x5C) = min(frames, 1024), m_updateTime = chunk / 44100.0,
// m_dataThreshold = -(frames / 44100.0 * m_dataThresholdRatio), m_dataDuration = 0, mode (+0x54) = 1, m_running = 1, the byte
// at +0x60 = 0 and pthread_create with the thread handle at +0x68 and UpdateThreadedAT (std::thread here).
// Deviation: an env that GetEnv does not supply ends the function (the original dereferences it); the original returns the
// pthread_create result, 0 on success, which is what a started std::thread gives.
int DriverAndroid::_InitAT(void* context) {
    (void)context;
    constexpr int kDriverSampleRate = 44100;
    DriverCallbackSourceInterface::SetDriverSampleRate(kDriverSampleRate);
    if (s_javaVM == nullptr) {
        return kDriverSampleRate;
    }
    JNIEnv* env = nullptr;
    s_javaVM->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_2);
    if (env == nullptr) {
        return 0;
    }
    if (cAudioTrack == nullptr) {
        cAudioTrack = env->FindClass("android/media/AudioTrack");
        if (cAudioTrack == nullptr) {
            return 0;
        }
        cAudioTrack = static_cast<jclass>(env->NewGlobalRef(cAudioTrack));
        mAudioTrack = env->GetMethodID(cAudioTrack, "<init>", "(IIIIII)V");
        mGetMinBufferSize = env->GetStaticMethodID(cAudioTrack, "getMinBufferSize", "(III)I");
        mPlay = env->GetMethodID(cAudioTrack, "play", "()V");
        mPause = env->GetMethodID(cAudioTrack, "pause", "()V");
        mStop = env->GetMethodID(cAudioTrack, "stop", "()V");
        mRelease = env->GetMethodID(cAudioTrack, "release", "()V");
        mWrite = env->GetMethodID(cAudioTrack, "write", "([BII)I");
    }
    const int min_frames = env->CallStaticIntMethod(cAudioTrack, mGetMinBufferSize, 44100, 12, 2) / 4;
    int frames = min_frames;
    // Port: the track holds at least four 1024-frame mixer chunks (93 ms). The original takes the device minimum
    // as it is; on its 2011 devices that minimum was 2048-8192 frames (two to eight chunks), so the audio thread
    // had a chunk or more of slack before AudioFlinger ran dry. Current devices answer two HAL periods (1764-3528
    // frames at 44.1 kHz): once the thread is in its steady state (blocking writes keep the track full) it must
    // refill within one period of a pull, and every late cycle is a silent period (the "flicker" of continuous
    // sounds). The chunk, the pacing and the threshold still derive from frames_ as in the original.
    if (frames < kMinTrackFrames) {
        frames = kMinTrackFrames;
    }
#if defined(__ANDROID__)
    __android_log_print(ANDROID_LOG_INFO, "vox", "AudioTrack 44100 Hz stereo: minBufferSize %d frames, track %d frames, chunk %d",
                        min_frames, frames, frames < 1024 ? frames : 1024);
#endif
    chunk_ = 1024;
    frames_ = frames;
    if (frames < 1024) {
        chunk_ = frames;
    } else {
        frames = 1024;
    }
    m_updateTime = static_cast<double>(frames) / 44100.0;
    m_dataThreshold = -(static_cast<double>(frames_) / 44100.0 * m_dataThresholdRatio);
    m_dataDuration = 0.0;
    mode_ = 1;
    m_running = true;
    paused_ = false;
    thread_ = std::thread([this]() { UpdateThreadedAT(nullptr); });
    return 0;
}

}  // namespace vox
