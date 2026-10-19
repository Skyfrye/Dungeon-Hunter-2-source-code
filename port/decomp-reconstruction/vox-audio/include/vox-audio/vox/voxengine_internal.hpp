// vox::VoxEngineInternal: the engine object behind the static vox::VoxEngine facade.
// The emitter forwarders, the listener and general 3D accessors, and the driver,
// suspend and gain forwarders have bodies. The constructor, destructor and the
// virtual update and gain methods are declared only.
//
// Vtable (52 bytes, 13 slots): +0x00/+0x04 destructor, +0x08 Initialize, +0x0c Suspend,
// +0x10 Resume, +0x14 IsSuspended, +0x18 UpdateSources, +0x1c UpdateEmitters,
// +0x20 KillEmitter(EmitterObj*), +0x24 SetGroupGain, +0x28 SetMasterGain.
// The two slots after +0x28 are not named in the symbols.
#pragma once

#include <cstdint>
#include <vector>
#include <list>

#include "vox-audio/vox/access_controller.hpp"
#include "vox-audio/vox/gain_fade.hpp"
#include "vox-audio/vox/handlable.hpp"
#include "vox-audio/vox/mutex.hpp"
#include "vox-audio/vox/voxengine_types.hpp"

namespace vox {

class DriverInterface;
class PriorityBankManager;
class DataObj;
class FileSystemInterface;

// Node of the intrusive list at +0x43c. The first word is the next node (the destructor reads it).
struct VoxListNode {
    VoxListNode* next = nullptr;
};

class VoxEngineInternal {
public:
    VoxEngineInternal();                                                   // 0x869a94, 0x869d8c (partial)
    virtual ~VoxEngineInternal();                                          // 0x86be68 (D1), 0x86c02c (D2)
    virtual FileSystemInterface* Initialize();                             // +0x08 (returns FileSystemInterface::GetInstance())
    virtual void Suspend();                                                // +0x0c
    virtual void Resume();                                                 // +0x10
    virtual bool IsSuspended();                                            // +0x14
    virtual void UpdateSources();                                          // +0x18
    virtual int UpdateEmitters(float dt);                                  // +0x1c (ReleaseReadAccess result)
    virtual void KillEmitter(EmitterObj* emitter);                         // +0x20
    virtual int SetGroupGain(unsigned int group, float gain, float time);  // +0x24 (Mutex::Unlock result)
    virtual int SetMasterGain(float gain, float time);                     // +0x28 (Mutex::Unlock result)

    // Non-virtual entry points that the facade calls directly (no vtable slot).
    void GetDebugInfo(DebugInfo& info);
    void PrintDebug();
    void Update3D();                        // 0x862ec0: sends the dirty 3D blocks to the driver
    int SetOutputMode(VoxOutputMode mode);  // 0x8630e4: driver result, 0 without a driver
    int GetOutputMode();                    // 0x8630b8: driver result, -1 without a driver
    void UpdateDSP(float dt);               // 0x86308c: forwards to the driver's Update
    void _SetDefault3DParameters();         // 0x8630b0 (empty in the binary)
    int SetInteractiveMusicState(EmitterHandle& emitter, const char* state);  // 0x86764c (Mutex::Unlock result)
    int SetDSPEmitterParameter(EmitterHandle& emitter, int param, void* value);  // 0x8676d8 (ReleaseReadAccess result)
    void SetSFXPresetActive(int preset, bool active, float level);
    void SetRoutingVolume(char* from, char* to, VoxDSPGeneralParameter::BusRoutingType type,
                          float volume, float fade_in, float fade_out);  // 0x8630b4 (empty)
    void SetDynamicBusRouting(char* name);
    void SetStaticBusRouting(char* name);

    void Get3DGeneralParameteri(int param, int& value);
    void Get3DGeneralParameterf(int param, float& value);
    void Get3DGeneralParameter(Vox3DGeneralParameters& params);
    void Get3DListenerOrientation(float& fx, float& fy, float& fz, float& ux, float& uy, float& uz);
    void Get3DListenerVelocity(float& x, float& y, float& z);
    void Get3DListenerPosition(float& x, float& y, float& z);
    void Set3DGeneralParameteri(int param, int value);
    void Set3DGeneralParameterf(int param, float value);
    void Set3DGeneralParameter(const Vox3DGeneralParameters& params);
    void Set3DListenerOrientation(float fx, float fy, float fz, float ux, float uy, float uz);
    void Set3DListenerVelocity(float x, float y, float z);
    void Set3DListenerPosition(float x, float y, float z);

    void Get3DEmitterParameteri(EmitterHandle& emitter, int param, int& value);
    void Get3DEmitterParameterf(EmitterHandle& emitter, int param, float& value);
    void Get3DEmitterParameters(EmitterHandle& emitter, Vox3DEmitterParameters& params);
    void Get3DEmitterDirection(EmitterHandle& emitter, float& x, float& y, float& z);
    void Get3DEmitterVelocity(EmitterHandle& emitter, float& x, float& y, float& z);
    void Get3DEmitterPosition(EmitterHandle& emitter, float& x, float& y, float& z);
    void Set3DEmitterParameteri(EmitterHandle& emitter, int param, int value);
    void Set3DEmitterParameterf(EmitterHandle& emitter, int param, float value);
    void Set3DEmitterParameters(EmitterHandle& emitter, const Vox3DEmitterParameters& params);
    void Set3DEmitterDirection(EmitterHandle& emitter, float x, float y, float z);
    void Set3DEmitterVelocity(EmitterHandle& emitter, float x, float y, float z);
    void Set3DEmitterPosition(EmitterHandle& emitter, float x, float y, float z);

    float GetGroupGain(int group);
    float GetMasterGain();
    int GetStatus(EmitterHandle& emitter);
    bool IsDone(EmitterHandle& emitter);
    int IsPlaying(EmitterHandle& emitter);
    int IsAlive(EmitterHandle& emitter);
    int IsValid(EmitterHandle& emitter);
    int IsReady(EmitterHandle& emitter);
    void SetPlayCursor(EmitterHandle& emitter, float position);
    float GetPlayCursor(EmitterHandle& emitter);
    int GetGroup(EmitterHandle& emitter);
    void SetGroup(EmitterHandle& emitter, int group);
    void ResumeAllEmitters(unsigned int group, float fade);
    void PauseAllEmitters(unsigned int group, float fade);
    void StopAllEmitters(unsigned int group, float fade);
    void PlayAllEmitters(unsigned int group, float fade);
    // Reference counts for handles (0x868054, 0x8682e0, 0x868d10, 0x86ab10). Declared
    // only: the bodies need GetEmitterObject, which is not reconstructed yet.
    void IncreaseEmitterObjectRefCount(EmitterHandle& emitter);
    void DecreaseEmitterObjectRefCount(EmitterHandle& emitter);
    void IncreaseDataObjectRefCount(DataHandle& data);
    void DecreaseDataObjectRefCount(DataHandle& data);

    int GetAllEmitters(EmitterHandle* out, int max_count);  // 0x868468: returns the count written
    int Resume(EmitterHandle& emitter, float fade);
    void Pause(EmitterHandle& emitter, float fade);
    void Stop(EmitterHandle& emitter, float fade);
    void Play(EmitterHandle& emitter, bool loop, float fade);
    // Overloads on the emitter object itself (the handle versions look it up first).
    void Play(EmitterObj* emitter, bool loop, float fade);     // 0x86ef8c
    int Pause(EmitterObj* emitter, float fade);                // 0x86e618
    int Stop(EmitterObj* emitter, float fade);                 // 0x86ed00
    int Resume(EmitterObj* emitter, float fade);               // 0x86c2cc
    void RegisterForEmitterStateChangeNotification(EmitterHandle& emitter, EmitterStateCallback callback,
                                                   void* user_data);  // 0x868008
    void UnregisterForEmitterStateChangeNotification(EmitterHandle& emitter);  // 0x867fcc
    float GetPitch(EmitterHandle& emitter);
    void SetPitch(EmitterHandle& emitter, float pitch, float time);
    void SetLoop(EmitterHandle& emitter, bool loop);
    float GetGain(EmitterHandle& emitter);
    int SetGain(EmitterHandle& emitter, float gain, float time);
    void SetAutoKillAfterDone(EmitterHandle& emitter, bool on);
    void KillEmitter(EmitterHandle& emitter);
    std::uintptr_t GetUserData(EmitterHandle& emitter);   // word from EmitterObj::GetUserData; 0 without an emitter
    int SetUserData(EmitterHandle& emitter, EmitterHandleUserData& user_data);

    std::uint32_t GetDuration(DataHandle& data);
    int IsValid(DataHandle& data);
    int IsReady(DataHandle& data);
    int GetAllDataSources(DataHandle* out, int max_count);  // 0x86ac94: returns the count written
    int GetEmitterHandles(DataHandle& data, EmitterHandle* out, int max_count);  // 0x8689bc: returns the count
    void ReleaseDatasource(unsigned int id);
    void ReleaseDatasource(DataHandle& data);
    int GetUid(DataHandle& data);
    void SetUid(DataHandle& data, int uid);
    void SetPriorityBankId(DataHandle& data, int bank);
    int GetUserData(DataHandle& data);
    void SetUserData(DataHandle& data, DataHandleUserData& user_data);

    void SetPriorityBank(int index, int min_priority, int max_priority, PriorityBankBehavior behavior);
    int RegisterDecoderType(DecoderInterface* (*factory)(void*));  // 0x862e94
    int RegisterStreamType(StreamInterface* (*factory)(void*));    // 0x862e70
    void UpdateDebugServer();                                       // 0x862ebc (empty)

    // Source loading (declared only; the facade forwards to these).
    DataHandle GetData(EmitterHandle& emitter);                                       // 0x868f9c
    EmitterHandle CreateEmitterAsync(DataHandle& data, int flags, void* user);
    EmitterHandle CreateEmitter(DataHandle& data, int flags, void* user);
    DataHandle ConvertToRamBufferSource(DataHandle& data);
    DataHandle ConvertToRawSource(DataHandle& data);
    DataHandle LoadDataSourceAsync(int a, void* b, int c, void* d, int e, VoxSourceLoadingFlags flags);  // 0x86aee8
    DataHandle LoadDataSource(int a, void* b, int c, void* d, int e);

    // Next free id for a new emitter (0x869068) or data object (0x869314). Each takes write
    // access to its table's AccessController and returns the id from the HandlableContainer.
    std::int64_t GetFreeEmitterObjectId();
    std::int64_t GetFreeDataObjectId();

    // The process-wide engine (0x869d3c). Created with VoxAlloc on first use. The original
    // constructor (0x869a94) is not reconstructed yet.
    static VoxEngineInternal* GetVoxEngineInternal();
    // The process-wide instance (vox::VoxEngineInternal::s_voxEngineInternal). Handles keep its address.
    static VoxEngineInternal* s_voxEngineInternal;

    // Emitter lookup (0x8674cc) and the emitter fast path use these. Offsets from the original.
    EmitterObj* GetEmitterObject(EmitterHandle& emitter);  // 0x8674cc (partial, see the .cpp)
    EmitterObj* DetachEmitterObject(std::int64_t id);      // 0x86a5d0 (declared only)
    DataObj* GetDataObject(DataHandle& data);              // 0x8686bc (partial, see the .cpp)
    Handlable* DetachDataObject(std::int64_t id);          // 0x86a940
    void ReleaseDatasource(DataObj* data);                 // 0x86a628: destroys a data object
    void _ReleaseAllDatasource();                          // 0x86a710: releases every data object

private:
    // Listener state (+0x3f8..+0x43a). Each Set marks its block dirty (the bytes the
    // driver update reads); the values are copied as the original stores them.
    float listener_position_[3] = {};          // +0x3f8, x y z
    float listener_velocity_[3] = {};          // +0x404, x y z
    float listener_orientation_[6] = {};       // +0x410, front x y z then up x y z
    Vox3DGeneralParameters general_3d_;        // +0x428 (param 0), +0x42c (param 1), +0x430 (param 2)
    bool general_dirty_[3] = {};               // +0x434, +0x435, +0x436 (params 0, 1, 2)
    bool listener_dirty_[3] = {};              // +0x437 position, +0x438 velocity, +0x439 orientation

    VoxGainFade master_fade_;                  // +0xe0 (target at +0xe4 is read by GetMasterGain)
    PriorityBankManager* priority_bank_ = nullptr;  // +0xdc
    // Emitters that UpdateEmitters found dead. The original is a vector of object pointers
    // (+0xb8 begin, +0xbc end, +0xc0 capacity); UpdateEmitters pops them after the read pass.
    std::vector<EmitterObj*> dead_emitters_;   // +0xb8..+0xc0
    VoxGainFade group_fades_[32];              // +0xf4, 32 records of 20 bytes (targets at +0xf8)
    // Master times group gain per group, written by UpdateEmitters and read by each emitter's
    // SetGainModifier call. The original keeps it at +0x374 (32 floats), right after the fades.
    float group_gains_[32] = {};               // +0x374
    int suspend_count_ = 0;                    // +0x594 (nested Suspend/Resume depth)
    // Intrusive list sentinel at +0x43c (next) and +0x440 (prev). The original points both words at
    // the sentinel itself when the list is empty; the port uses nullptr for that. Nothing in the
    // binary links a node into this list (no writer outside the constructor and destructor).
    VoxListNode* list_head_ = nullptr;         // +0x43c
    VoxListNode* list_tail_ = nullptr;         // +0x440
    // +0x598: a buffer pointer the destructor frees with VoxFree when it is non-null. No other
    // code in the binary writes it; the constructor zeroes it.
    void* side_buffer_ = nullptr;              // +0x598
    // +0x59c: zeroed by the constructor; the binary never reads it.
    std::int32_t side_word_ = 0;               // +0x59c
    // Factory tables with 31 slots each. Streams at +0x444 with the count at +0x4c4;
    // decoders at +0x4c8 with the count at +0x548.
    StreamInterface* (*stream_factories_[31])(void*) = {};    // +0x444
    int stream_factory_count_ = 0;                            // +0x4c4
    DecoderInterface* (*decoder_factories_[31])(void*) = {};  // +0x4c8
    int decoder_factory_count_ = 0;                           // +0x548

    AccessController data_objects_access_;     // +0x54 (guards data_objects_ in the data forwarders)
    AccessController data_access_;             // +0x60 (guards data_pending_)
    HandlableContainer data_objects_;          // +0x08 (lookup by id)
    HandlableContainer data_pending_;          // +0x28
    AccessController emitter_pending_access_;  // +0xd0 (guards emitter_pending_)
    AccessController emitter_access_;          // +0xc4 (read/write access for emitter calls)
    HandlableContainer emitters_;              // +0x78 (lookup by id)
    HandlableContainer emitter_pending_;       // +0x98
    DriverInterface* driver_ = nullptr;        // +0x54c
    Mutex mutex_;                              // +0x3f4
    // +0x550: stamp per slot, shared by data and emitter handles (CreateEmitter and the emitter
    // constructors index the same words as GetDataObject). A handle is current when its stamp matches.
    std::uint32_t data_stamps_[16] = {};
    unsigned int next_data_slot_ = 0;          // +0x590: slot for the next data object (mod 16)
    std::list<DataObj*> data_queue_;           // +0x6c (sentinel), +0x70 (tail): data objects waiting for the update loop
    Mutex data_queue_mutex_;                   // +0x74
    // Adds a data object to data_queue_ unless its +0x4c flag (queued_) is already set.
    void QueueForRelease(DataObj* data);
};

}  // namespace vox
