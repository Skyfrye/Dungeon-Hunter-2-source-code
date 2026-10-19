// vox::VoxEngine: the static facade the game calls. Every entry point forwards to
// the engine object m_internal (vox::VoxEngineInternal) when one exists; without an
// engine each call does nothing and returns the default shown per function.
#pragma once

#include <cstdint>

#include "vox-audio/vox/voxengine_internal.hpp"
#include "vox-audio/vox/voxengine_types.hpp"

namespace vox {

class VoxThread;
class Mutex;

class VoxEngine {
public:
    // Process-wide facade object. The instance owns the two update threads and the
    // timestamp of the last emitter update (see engine_instance.cpp).
    VoxEngine();                                    // 0x862abc (C1), 0x862b80 (C2)
    virtual ~VoxEngine();                           // 0x862990 (D1), 0x862a34 (D2); D0 0x862a18
    static VoxEngine* GetVoxEngine();               // 0x862b30
    static void DestroyVoxEngine();                 // 0x8628f8
    // Initialize and Shutdown are virtual in the original: the class vtable at 0x993448 is
    // D1, D0, Initialize (+0x08), Shutdown (+0x0c). Declared in that slot order.
    virtual void Initialize();                      // 0x862d10
    virtual void Shutdown();                        // 0x862944
    int UpdateEmittersThreaded();                   // 0x862c4c (VoxEngineInternal::UpdateEmitters result)
    int UpdateThreaded();                           // 0x862cf0 (the emitters update result)
    // Thread callback for the emitter thread (the 0x862d0c thunk forwards to 0x862c4c).
    static void UpdateEmittersThreaded(void* engine, void* unused);

    static void SuspendEngine();                    // 0x8616f8
    static void ResumeEngine();                     // 0x861734
    static bool IsEngineSuspended();                // 0x861770 (true without an engine)
    static void Update(float dt);                   // 0x8617b4 (empty)
    static void UpdateSources();                    // 0x8617b8 (empty)
    static void UpdateEmitters(float dt);           // 0x8617bc (empty)
    static int SetMasterGain(float gain, float time);                      // 0x8617c0 (vtable +0x28 result)
    static int SetGroupGain(unsigned int group, float gain, float time);   // 0x8617fc (vtable +0x24 result)
    static void RegisterForEmitterStateChangeNotification(EmitterHandle& emitter,
                                                          void (*callback)(EmitterHandle&, void*, EmitterExternState),
                                                          void* user_data);  // 0x861838 (empty)
    static void UnregisterForEmitterStateChangeNotification(EmitterHandle& emitter);  // 0x86183c (empty)
    static void UpdateSourcesThreaded();            // 0x861840
    static void UpdateSourcesThreaded(void* a, void* b);  // 0x86187c (empty)

    static void GetDebugInfo(DebugInfo& info);      // 0x861880
    static void PrintDebug();                       // 0x8618a8
    static int SetOutputMode(VoxOutputMode mode);   // 0x8618d0 (0 without an engine)
    static VoxOutputMode GetOutputMode();           // 0x8618f8 (-1 without an engine)
    static int SetInteractiveMusicState(EmitterHandle& emitter, const char* state);  // 0x861928 (0 without an engine)
    static int SetDSPEmitterParameter(EmitterHandle& emitter, int param, void* value);   // 0x861950 (0 without an engine)
    static void SetSFXPresetActive(int preset, bool active, float level);  // 0x861978
    static void SetRoutingVolume(char* from, char* to, VoxDSPGeneralParameter::BusRoutingType type,
                                 float volume, float fade_in, float fade_out);  // 0x8619a0
    static void SetDynamicBusRouting(char* name);   // 0x8619e0
    static void SetStaticBusRouting(char* name);    // 0x861a08

    static void Get3DGeneralParameteri(int param, int& value);   // 0x861a30
    static void Get3DGeneralParameterf(int param, float& value); // 0x861a58
    static void Get3DGeneralParameter(Vox3DGeneralParameters& params);  // 0x861a80
    static void Get3DListenerOrientation(float& fx, float& fy, float& fz, float& ux, float& uy, float& uz);  // 0x861aa8
    static void Get3DListenerVelocity(float& x, float& y, float& z);   // 0x861ae8
    static void Get3DListenerPosition(float& x, float& y, float& z);   // 0x861b10
    static void Set3DGeneralParameteri(int param, int value);          // 0x861b38
    static void Set3DGeneralParameterf(int param, float value);        // 0x861b60
    static void Set3DGeneralParameter(const Vox3DGeneralParameters& params);  // 0x861b88
    static void Set3DListenerOrientation(float fx, float fy, float fz, float ux, float uy, float uz);  // 0x861bb0
    static void Set3DListenerVelocity(float x, float y, float z);      // 0x861bf0
    static void Set3DListenerPosition(float x, float y, float z);      // 0x861c18

    static void Get3DEmitterParameteri(EmitterHandle& emitter, int param, int& value);  // 0x861c40
    static void Get3DEmitterParameterf(EmitterHandle& emitter, int param, float& value);  // 0x861c68
    static void Get3DEmitterParameters(EmitterHandle& emitter, Vox3DEmitterParameters& params);  // 0x861c90
    static void Get3DEmitterDirection(EmitterHandle& emitter, float& x, float& y, float& z);  // 0x861cb8
    static void Get3DEmitterVelocity(EmitterHandle& emitter, float& x, float& y, float& z);   // 0x861cf0
    static void Get3DEmitterPosition(EmitterHandle& emitter, float& x, float& y, float& z);   // 0x861d28
    static void Set3DEmitterParameteri(EmitterHandle& emitter, int param, int value);  // 0x861d60
    static void Set3DEmitterParameterf(EmitterHandle& emitter, int param, float value);  // 0x861d88
    static void Set3DEmitterParameters(EmitterHandle& emitter, const Vox3DEmitterParameters& params);  // 0x861db0
    static void Set3DEmitterDirection(EmitterHandle& emitter, float x, float y, float z);  // 0x861dd8
    static void Set3DEmitterVelocity(EmitterHandle& emitter, float x, float y, float z);   // 0x861e10
    static void Set3DEmitterPosition(EmitterHandle& emitter, float x, float y, float z);   // 0x861e48

    static float GetGroupGain(int group);           // 0x861e80 (0 without an engine)
    static float GetMasterGain();                   // 0x861eb0 (0 without an engine)
    static int GetStatus(EmitterHandle& emitter);   // 0x861ee0 (0 without an engine)
    static bool IsDone(EmitterHandle& emitter);     // 0x861f08 (true without an engine)
    static int IsPlaying(EmitterHandle& emitter);   // 0x861f38
    static int IsAlive(EmitterHandle& emitter);     // 0x861f60
    static int IsValid(EmitterHandle& emitter);     // 0x861f88
    static int IsReady(EmitterHandle& emitter);     // 0x861fb0
    static void SetPlayCursor(EmitterHandle& emitter, float position);  // 0x861fd8
    static float GetPlayCursor(EmitterHandle& emitter);  // 0x862000 (0 without an engine)
    static int GetGroup(EmitterHandle& emitter);    // 0x862030
    static void SetGroup(EmitterHandle& emitter, int group);  // 0x862058
    static void ResumeAllEmitters(unsigned int group, float fade);  // 0x862080
    static void PauseAllEmitters(unsigned int group, float fade);   // 0x8620a8
    static void StopAllEmitters(unsigned int group, float fade);    // 0x8620d0
    static void PlayAllEmitters(unsigned int group, float fade);    // 0x8620f8
    static int GetAllEmitters(EmitterHandle* out, int max_count);  // 0x862120 (0 without an engine)
    static void Resume(EmitterHandle& emitter, float fade);         // 0x862148
    static void Pause(EmitterHandle& emitter, float fade);          // 0x862170
    static void Stop(EmitterHandle& emitter, float fade);           // 0x862198
    static void Play(EmitterHandle& emitter, bool loop, float fade);  // 0x8621c0
    static float GetPitch(EmitterHandle& emitter);                  // 0x8621e8 (0 without an engine)
    static void SetPitch(EmitterHandle& emitter, float pitch, float time);  // 0x862218
    static void SetLoop(EmitterHandle& emitter, bool loop);         // 0x862240
    static float GetGain(EmitterHandle& emitter);                   // 0x862268 (0 without an engine)
    static void SetGain(EmitterHandle& emitter, float gain, float time);  // 0x862298
    static void SetAutoKillAfterDone(EmitterHandle& emitter, bool on);    // 0x8622c0
    static void KillEmitter(EmitterHandle& emitter);                // 0x862348
    static int GetUserData(EmitterHandle& emitter);                 // 0x862370 (-1 without an engine)
    static void SetUserData(EmitterHandle& emitter, EmitterHandleUserData& user_data);  // 0x8623a8

    static std::uint32_t GetDuration(DataHandle& data);  // 0x8624a0 (0 without an engine)
    static int IsValid(DataHandle& data);           // 0x8624d0
    static int IsReady(DataHandle& data);           // 0x8624f8
    static void GetAllDataSources(DataHandle* out, int max_count);  // 0x862520
    static int GetEmitterHandles(DataHandle& data, EmitterHandle* out, int max_count);  // 0x862548 (returns the count)
    static void ReleaseDatasource(unsigned int id);  // 0x862570
    static void ReleaseDatasource(DataHandle& data); // 0x862598
    static int GetUid(DataHandle& data);            // 0x8625c0 (-1 without an engine)
    static void SetUid(DataHandle& data, int uid);  // 0x8625f0
    static void SetPriorityBankId(DataHandle& data, int bank);  // 0x862618
    static int GetUserData(DataHandle& data);       // 0x862640 (-1 without an engine)
    static void SetUserData(DataHandle& data, DataHandleUserData& user_data);  // 0x862678

    static void SetPriorityBank(int index, int min_priority, int max_priority, PriorityBankBehavior behavior);  // 0x862858
    static DataHandle GetData(EmitterHandle& emitter);                                    // 0x8622e8 (partial)
    static EmitterHandle CreateEmitterAsync(DataHandle& data, int flags, void* user);     // 0x8623d0 (partial)
    static EmitterHandle CreateEmitter(DataHandle& data, int flags, void* user);          // 0x862438 (partial)
    static DataHandle ConvertToRamBufferSource(DataHandle& data);                         // 0x8626a0 (partial)
    static DataHandle ConvertToRawSource(DataHandle& data);                               // 0x862700 (partial)
    static DataHandle LoadDataSourceAsync(int a, void* b, int c, void* d, int e,
                                          VoxSourceLoadingFlags flags);                   // 0x862760 (partial)
    static DataHandle LoadDataSource(int a, void* b, int c, void* d, int e);              // 0x8627e0 (partial)
    static int RegisterDecoderType(DecoderInterface* (*factory)(void*));  // 0x862898 (-1 without an engine)
    static int RegisterStreamType(StreamInterface* (*factory)(void*));   // 0x8628c8 (-1 without an engine)

private:
    // Engine object created by Initialize; null until then. Declared, not reconstructed.
    static VoxEngineInternal* m_internal;  // _ZN3vox9VoxEngine10m_internalE
    static VoxEngine* s_voxEngine;         // _ZN3vox9VoxEngine9s_voxEngineE

    // Instance layout (original offsets in comments; the 64-bit object is larger).
    VoxThread* emitter_thread_ = nullptr;  // +0x04, thread running UpdateEmittersThreaded
    VoxThread* source_thread_ = nullptr;   // +0x08, thread running UpdateSourcesThreaded
    double last_update_time_ = 0.0;        // +0x10, time of the last emitter update
    Mutex* mutex_ = nullptr;               // +0x18
};

}  // namespace vox
