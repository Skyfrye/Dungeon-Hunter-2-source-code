// vox::DriverAndroid and the VoxSet* exports. The OpenSL path is empty in the original; the audio-thread path drives
// android.media.AudioTrack through JNI (the JavaVM set by VoxSetJavaVM), here and in driver_android_slice.cpp.
#include <chrono>
#include <new>

#include "vox-audio/vox/driver_android.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

_JavaVM* DriverAndroid::s_javaVM = nullptr;
int DriverAndroid::s_androidAPILevel = 3;  // .data 0x99e254
double DriverAndroid::m_dataThresholdRatio = 0.0;
bool DriverAndroid::m_running = false;
double DriverAndroid::m_updateTime = 0.0;
double DriverAndroid::m_updateStartTime = 0.0;
double DriverAndroid::m_dataThreshold = 0.0;
double DriverAndroid::m_dataDuration = 0.0;
jclass DriverAndroid::cAudioTrack = nullptr;
jmethodID DriverAndroid::mAudioTrack = nullptr;
jmethodID DriverAndroid::mGetMinBufferSize = nullptr;
jmethodID DriverAndroid::mPlay = nullptr;
jmethodID DriverAndroid::mPause = nullptr;
jmethodID DriverAndroid::mStop = nullptr;
jmethodID DriverAndroid::mRelease = nullptr;
jmethodID DriverAndroid::mWrite = nullptr;

namespace {

// Seconds from a steady clock, the same stand-in as vox_thread_object.cpp for _GetTime
// (core-platform 0x862bf4). The driver only uses differences of two readings, so the epoch does
// not matter, and vox-audio does not link core-platform.
double DriverAndroidNowSeconds() {
    using Clock = std::chrono::steady_clock;
    return std::chrono::duration<double>(Clock::now().time_since_epoch()).count();
}

}  // namespace

// 0x88fae4 _ZN3vox13DriverAndroidC2Ev (C1 0x88fa80 has the same body)
// Verified against the listing (0x88fa80..0x88faBC): the DriverCallbackInterface base constructor, then mode_ (+0x54) = 0,
// the vtable, then Init(nullptr) (this class's Init, the object is a DriverAndroid by then).
DriverAndroid::DriverAndroid() {
    mode_ = 0;
    Init(nullptr);
}

// 0x88ee78 _ZN3vox13DriverAndroid6UpdateEf
void DriverAndroid::Update(float dt) {
    if (mode_ == 1) {
        _UpdateAT(dt);
        return;
    }
    if (mode_ != 2) {
        return;
    }
    _UpdateOSL(dt);
}

// 0x88f028 _ZN3vox13DriverAndroid6ResumeEv
// Verified against the listing (0x88f028..0x88f048): the mode word (+0x54) is read once; 1 calls
// _ResumeAT (0x88ef6c), 2 calls _ResumeOSL (0x88ee68), anything else returns. The body matches,
// so this row is complete; the JNI play() call that is missing belongs to _ResumeAT's own row.
void DriverAndroid::Resume() {
    if (mode_ == 1) {
        _ResumeAT();
        return;
    }
    if (mode_ != 2) {
        return;
    }
    _ResumeOSL();
}

// 0x88f130 _ZN3vox13DriverAndroid7SuspendEv
// Verified against the listing (0x88f130..0x88f150): the mode word (+0x54) is read once; 1 calls
// _SuspendAT (0x88f044), 2 calls _SuspendOSL (0x88ee64), anything else returns. The body matches,
// so this row is complete; the JNI pause() call that is missing belongs to _SuspendAT's own row.
void DriverAndroid::Suspend() {
    if (mode_ == 1) {
        _SuspendAT();
        return;
    }
    if (mode_ != 2) {
        return;
    }
    _SuspendOSL();
}

// 0x88f644 _ZN3vox13DriverAndroid8ShutdownEv: mode 1 runs the audio-thread shutdown, mode 2
// the OSL shutdown, anything else does nothing.
void DriverAndroid::Shutdown() {
    if (mode_ == 1) {
        _ShutdownAT();
        return;
    }
    if (mode_ != 2) {
        return;
    }
    _ShutdownOSL();
}

// 0x88f9a0 _ZN3vox13DriverAndroid4InitEPv
// Verified against the listing (0x88f9a0..0x88f9e8): the mutex at +0x04 is locked, then
// DriverCallbackInterface::Init(context) (0x8902a8, which only clears the two static scratch
// blocks and takes no lock), DriverCallbackInterface::SetDefaultParameter (0x89039c, also
// lock-free, called twice - before and after _InitAT), _InitAT(context), then Unlock, which is
// what the function returns.
void DriverAndroid::Init(void* context) {
    mutex_.Lock();
    DriverCallbackInterface::Init(context);
    SetDefaultParameter();
    _InitAT(context);
    SetDefaultParameter();
    mutex_.Unlock();
}

// 0x88fbe8 _ZN3vox13DriverAndroid18CreateDriverSourceEPvS1_i
// Verified against the listing (0x88fbe8..0x88fc88): lock; when the byte at +0x08 (the base active_ flag) is set,
// VoxAlloc(0xb4) then DriverAndroidSource(block, params, user, the base source counter at +0x0c) - the counter, not the
// flags argument (which is unused), is the source's flags - and when that returned non-null a 0x0c-byte node is allocated,
// its element word (+0x08) set to the source, and it is linked at the tail of the base list whose sentinel is +0x10 (node
// next at +0x00, prev at +0x04), after which the counter at +0x0c is incremented; unlock and return the source. With
// active_ clear it unlocks and returns null. The two pointer arguments are the source's format and buffer-count words.
DriverSourceInterface* DriverAndroid::CreateDriverSource(const std::int32_t* params, void* user, int /*flags*/) {
    mutex_.Lock();
    if (active_) {
        void* block = VoxAlloc(sizeof(DriverAndroidSource));
        auto* source = new (block)
            DriverAndroidSource(params, static_cast<const std::int32_t*>(user), static_cast<std::uint32_t>(field_0c_));
        auto* node = static_cast<DriverCallbackNode*>(VoxAlloc(sizeof(DriverCallbackNode)));
        node->source = source;
        DriverCallbackNode* tail = list_head_.prev;
        node->next = &list_head_;
        node->prev = tail;
        tail->next = node;
        list_head_.prev = node;
        ++field_0c_;
        mutex_.Unlock();
        return source;
    }
    mutex_.Unlock();
    return nullptr;
}

// 0x88f59c _ZN3vox13DriverAndroid19DestroyDriverSourceEPNS_21DriverSourceInterfaceE
// Verified against the listing (0x88f59c..0x88f618): lock; when the source is non-null the base list (sentinel at +0x10) is
// walked from its first node comparing each node's element word (+0x08) with the source, and on a hit the node is unlinked
// (prev->next and next->prev) and freed with VoxFree; then, whether or not the node was found, the source's virtual
// destructor runs and the source block is VoxFree'd; unlock.
void DriverAndroid::DestroyDriverSource(DriverSourceInterface* source) {
    mutex_.Lock();
    if (source != nullptr) {
        for (DriverCallbackNode* node = list_head_.next; node != &list_head_; node = node->next) {
            if (node->source == source) {
                node->prev->next = node->next;
                node->next->prev = node->prev;
                VoxFree(node);
                break;
            }
        }
        source->~DriverSourceInterface();
        VoxFree(source);
    }
    mutex_.Unlock();
}

// 0x88ee6c _ZN3vox13DriverAndroid10PrintDebugEv
void DriverAndroid::PrintDebug() {}

// 0x88ee5c _ZN3vox13DriverAndroid8_InitOSLEPv
void DriverAndroid::_InitOSL(void* context) {
    (void)context;
}

// 0x88ee60 _ZN3vox13DriverAndroid12_ShutdownOSLEv
void DriverAndroid::_ShutdownOSL() {}

// 0x88ee64 _ZN3vox13DriverAndroid11_SuspendOSLEv
void DriverAndroid::_SuspendOSL() {}

// 0x88ee68 _ZN3vox13DriverAndroid10_ResumeOSLEv
void DriverAndroid::_ResumeOSL() {}

// 0x88ee74 _ZN3vox13DriverAndroid10_UpdateOSLEf
void DriverAndroid::_UpdateOSL(float dt) {
    (void)dt;
}

// 0x88ee70 _ZN3vox13DriverAndroid9_UpdateATEf
void DriverAndroid::_UpdateAT(float dt) {
    (void)dt;
}

// 0x88f618 _ZN3vox13DriverAndroid11_ShutdownATEv (std::thread in place of pthread_join)
void DriverAndroid::_ShutdownAT() {
    m_running = false;
    if (thread_.joinable()) {
        thread_.join();
    }
}

// 0x88f044 _ZN3vox13DriverAndroid10_SuspendATEv
// Verified against the listing (0x88f044..0x88f134): lock; when the byte at +0x08 (active_) is set, GetEnv on s_javaVM
// (JavaVM slot +0x18, version 0x10002), CallNonvirtualVoidMethod(env, track at +0x64, cAudioTrack, mPause), the byte at
// +0x60 (paused_) = 1, then m_dataDuration -= _GetTime() - m_updateStartTime; unlock. The returned Unlock int is dropped (the
// caller ignores it).
// Deviation: without a JavaVM or an env (the host tests) the pause() call is skipped, the rest runs.
void DriverAndroid::_SuspendAT() {
    mutex_.Lock();
    if (active_) {
        JNIEnv* env = nullptr;
        if (s_javaVM != nullptr) {
            s_javaVM->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_2);
        }
        if (env != nullptr && track_ != nullptr) {
            env->CallNonvirtualVoidMethod(track_, cAudioTrack, mPause);
        }
        paused_ = true;
        m_dataDuration = m_dataDuration - (DriverAndroidNowSeconds() - m_updateStartTime);
    }
    mutex_.Unlock();
}

// 0x88ef6c _ZN3vox13DriverAndroid9_ResumeATEv
// Verified against the listing (0x88ef6c..0x88f020): lock; when the byte at +0x08 (active_) is set, GetEnv on s_javaVM
// (version 0x10002), CallNonvirtualVoidMethod(env, track at +0x64, cAudioTrack, mPlay), the byte at +0x60 (paused_) = 0, then
// m_updateStartTime = _GetTime(); unlock. The returned Unlock int is dropped.
// Deviation: without a JavaVM or an env (the host tests) the play() call is skipped, the rest runs.
void DriverAndroid::_ResumeAT() {
    mutex_.Lock();
    if (active_) {
        JNIEnv* env = nullptr;
        if (s_javaVM != nullptr) {
            s_javaVM->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_2);
        }
        if (env != nullptr && track_ != nullptr) {
            env->CallNonvirtualVoidMethod(track_, cAudioTrack, mPlay);
        }
        paused_ = false;
        m_updateStartTime = DriverAndroidNowSeconds();
    }
    mutex_.Unlock();
}

}  // namespace vox

// 0x88ed8c _Z12VoxSetJavaVMP7_JavaVM
void VoxSetJavaVM(_JavaVM* java_vm) {
    vox::DriverAndroid::s_javaVM = java_vm;
}

// 0x88ee1c VoxSetJavaVMC. The asm passes the argument straight through to VoxSetJavaVM
// (R0 is not changed), then tail-branches to VoxSetDataThreshold with 1.0 in R0:R1
// (0x3ff00000 high word, zero low word).
void VoxSetJavaVMC(_JavaVM* java_vm) {
    VoxSetJavaVM(java_vm);
    VoxSetDataThreshold(1.0);
}

// 0x88edac VoxSetDataThreshold. ARM compares the double with 0 and 1: below 0 gives 0,
// above 1 gives 1, otherwise the value is kept.
void VoxSetDataThreshold(double ratio) {
    if (ratio < 0.0) {
        ratio = 0.0;
    } else if (ratio > 1.0) {
        ratio = 1.0;
    }
    vox::DriverAndroid::m_dataThresholdRatio = ratio;
}

// 0x88ee38 _Z21VoxSetAndroidAPILeveli
void VoxSetAndroidAPILevel(int level) {
    vox::DriverAndroid::s_androidAPILevel = level;
}
