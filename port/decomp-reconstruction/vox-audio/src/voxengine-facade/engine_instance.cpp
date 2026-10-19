// VoxEngine instance: singleton lifetime, the two update threads and the update
// timestamp. The threads' constructor and destructor are declared (vox_thread.hpp)
// but not defined yet, so the bodies that create or destroy them stay partial.
#include <chrono>
#include <cstdint>
#include <new>

#include "vox-audio/vox/decoder_raw.hpp"
#include "vox-audio/vox/decoder_stb_vorbis.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/mutex.hpp"
#include "vox-audio/vox/stream.hpp"
#include "vox-audio/vox/vox_thread.hpp"
#include "vox-audio/vox/voxengine.hpp"

namespace vox {

// Factories whose headers do not declare them yet (decoder_mswav.hpp, decoder_mpc8.hpp and
// decoder_native.hpp only name them in comments).
void* DecoderMSWavFactory(void* params);
void* DecoderMPC8Factory(void* params);
void* DecoderNativeFactory(void* params);

namespace {

// Object size the listing allocates for each update thread (VoxAlloc(0x68)).
constexpr std::size_t kVoxThreadObjectBytes = 0x68;

using StreamFactory = StreamInterface* (*)(void*);
using DecoderFactory = DecoderInterface* (*)(void*);

// Stand-in for _GetTime (0x862bf4, gettimeofday seconds in the original). The port reads a
// monotonic clock instead: only differences between two stamps are used, so the epoch does
// not matter.
double EngineGetTime() {
    return std::chrono::duration<double>(std::chrono::steady_clock::now().time_since_epoch()).count();
}

// GetTimeDT(previous, now) (0x8616ac): now - previous, clamped to 0 when negative.
double EngineGetTimeDelta(double previous, double now) {
    const double delta = now - previous;
    return delta < 0.0 ? 0.0 : delta;
}

}  // namespace

VoxEngine* VoxEngine::s_voxEngine = nullptr;

// 0x862abc _ZN3vox9VoxEngineC1Ev and 0x862b80 _ZN3vox9VoxEngineC2Ev
// The listing zeroes the thread slots and the timestamp, allocates the mutex and takes
// the engine object from VoxEngineInternal. The vtable write is the C++ object model's.
VoxEngine::VoxEngine() {
    void* storage = VoxAlloc(sizeof(Mutex), kVoxMemHintDefault);
    mutex_ = new (storage) Mutex();
    m_internal = VoxEngineInternal::GetVoxEngineInternal();
}

// 0x862990 _ZN3vox9VoxEngineD1Ev and 0x862a34 _ZN3vox9VoxEngineD2Ev.
// The listing calls the engine's virtual destructor (slot 0) and frees it with VoxFree,
// then destroys and frees the mutex.
VoxEngine::~VoxEngine() {
    Shutdown();
    if (m_internal != nullptr) {
        m_internal->~VoxEngineInternal();
        VoxFree(m_internal);
    }
    m_internal = nullptr;
    if (mutex_ != nullptr) {
        mutex_->~Mutex();
        VoxFree(mutex_);
    }
}

// 0x862a18 _ZN3vox9VoxEngineD0Ev: compiler-generated deleting destructor. It runs the
// complete destructor above and then frees the object, which `delete` provides.

// 0x862b30 _ZN3vox9VoxEngine12GetVoxEngineEv
VoxEngine* VoxEngine::GetVoxEngine() {
    if (s_voxEngine != nullptr) {
        return s_voxEngine;
    }
    void* storage = VoxAlloc(sizeof(VoxEngine), kVoxMemHintDefault);
    s_voxEngine = new (storage) VoxEngine();
    return s_voxEngine;
}

// 0x8628f8 _ZN3vox9VoxEngine16DestroyVoxEngineEv
void VoxEngine::DestroyVoxEngine() {
    if (s_voxEngine != nullptr) {
        s_voxEngine->~VoxEngine();
        VoxFree(s_voxEngine);
        s_voxEngine = nullptr;
    }
}

// 0x862944 _ZN3vox9VoxEngine8ShutdownEv (reconstructed: VoxThread destructor is in drivers-threads)
// Destroys the emitter thread (+0x04) and then the source thread (+0x08).
void VoxEngine::Shutdown() {
    if (emitter_thread_ != nullptr) {
        emitter_thread_->~VoxThread();
        VoxFree(emitter_thread_);
        emitter_thread_ = nullptr;
    }
    if (source_thread_ != nullptr) {
        source_thread_->~VoxThread();
        VoxFree(source_thread_);
        source_thread_ = nullptr;
    }
}

// 0x862d10 _ZN3vox9VoxEngine10InitializeEv (reconstructed)
// Verified against the listing: m_internal null check, the vtable +0x08 Initialize call, the
// stream and decoder factory registrations in order (StreamMemoryBuffer/CFile, Raw/MSWav/
// StbVorbis/MPC8/Native, then a null terminator), two VoxAlloc(0x68) VoxThread objects built
// with (UpdateEmittersThreaded, this, nullptr, name) and stored at +0x04 and +0x08, then the
// start time into +0x10. Deviations, both named: (a) the listing leaves r0 as the low word of
// the _GetTime double and IDA calls the result int, but the only caller in the binary
// (VoxSoundManager's constructor, 0x36c9d8) discards r0 -- the next instruction reloads it --
// so the int is an unobservable register leftover and the port keeps void; (b) the port clock
// is a steady clock (EngineGetTime) instead of gettimeofday, which only moves the epoch, and
// every reader takes a difference, so the stamp stays consistent. The VoxThread priority step
// is applied from the same place the listing applies it (vox_thread_object.cpp, POSIX branch).
void VoxEngine::Initialize() {
    if (m_internal == nullptr) {
        return;
    }
    m_internal->Initialize();

    RegisterStreamType(reinterpret_cast<StreamFactory>(&StreamMemoryBufferFactory));
    RegisterStreamType(reinterpret_cast<StreamFactory>(&StreamCFileFactory));
    RegisterDecoderType(reinterpret_cast<DecoderFactory>(&DecoderRawFactory));
    RegisterDecoderType(reinterpret_cast<DecoderFactory>(&DecoderMSWavFactory));
    RegisterDecoderType(reinterpret_cast<DecoderFactory>(&DecoderStbVorbisFactory));
    RegisterDecoderType(reinterpret_cast<DecoderFactory>(&DecoderMPC8Factory));
    RegisterDecoderType(reinterpret_cast<DecoderFactory>(&DecoderNativeFactory));
    RegisterDecoderType(nullptr);

    auto emitter_callback = static_cast<void (*)(void*, void*)>(&VoxEngine::UpdateEmittersThreaded);
    void* emitter_storage = VoxAlloc(kVoxThreadObjectBytes);
    emitter_thread_ = new (emitter_storage)
        VoxThread(emitter_callback, this, nullptr, "VoxEngine::UpdateEmitters");

    auto source_callback = static_cast<void (*)(void*, void*)>(&VoxEngine::UpdateSourcesThreaded);
    void* source_storage = VoxAlloc(kVoxThreadObjectBytes);
    source_thread_ = new (source_storage) VoxThread(source_callback, this, nullptr, "VoxEngine::UpdateSources");

    last_update_time_ = EngineGetTime();
}

// 0x862c4c _ZN3vox9VoxEngine22UpdateEmittersThreadedEv (reconstructed)
// Verified against the listing: now = _GetTime(); the delta is GetTimeDT(*(double*)(this+0x10),
// now), i.e. now - previous clamped at 0 (the arguments are in that order at 0x862c88/0x862c8c);
// the stamp never moves backwards (if now < previous, now = previous) and is stored to +0x10;
// the delta is converted to float and passed to m_internal's vtable +0x1C UpdateEmitters, whose
// int result is returned. Deviations, both named: the clock is a host steady clock stand-in for
// _GetTime/0x862bf4 (accepted; only differences are read), and without an engine the port
// returns 0 where the listing returns r0 = the incoming `this` pointer (a register leftover --
// the return value reaches no reader: the two callers in the binary, 0x862cf0 UpdateThreaded and
// the 0x862d0c thread thunk, have no code xrefs and the thread discards the result).
int VoxEngine::UpdateEmittersThreaded() {
    if (m_internal == nullptr) {
        return 0;
    }
    double now = EngineGetTime();
    float dt = static_cast<float>(EngineGetTimeDelta(last_update_time_, now));
    if (now < last_update_time_) {
        now = last_update_time_;
    }
    last_update_time_ = now;
    return m_internal->UpdateEmitters(dt);
}

// 0x862d0c _ZN3vox9VoxEngine22UpdateEmittersThreadedEPvS1_ is a thunk to 0x862c4c. The thread
// callback needs a (void*, void*) function, so this static overload is void and drops the int
// (the thread entry points stay void).
void VoxEngine::UpdateEmittersThreaded(void* engine, void* unused) {
    (void)unused;
    (void)static_cast<VoxEngine*>(engine)->UpdateEmittersThreaded();
}

// 0x862cf0 _ZN3vox9VoxEngine14UpdateThreadedEv (partial: VoxEngineInternal::UpdateSources (0x8617b8
// slot +0x18) has no body in the port; the sources update result is dropped as in the listing)
// The listing calls the sources update and then tail-calls the emitters update, so the emitters
// result is the result of this function.
int VoxEngine::UpdateThreaded() {
    UpdateSourcesThreaded();
    return UpdateEmittersThreaded();
}

}  // namespace vox
