// VoxEngineInternal emitter forwarders: each takes the emitter access (+0xc4), looks
// the emitter object up from the handle and calls one EmitterObj method. When the
// lookup fails, the getters return the default shown per function and the setters
// do nothing.
#include <cstdint>
#include <limits>

#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x8674cc _ZN3vox17VoxEngineInternal16GetEmitterObjectERNS_13EmitterHandleE (reconstructed)
// The handle's first stamp word is compared with the slot table entry (+0x550, data_stamps_)
// at the handle's second word. When they match and the handle has an object, that object is
// the answer. Otherwise the emitter is searched by id in emitters_ (+0x78), then in
// emitter_pending_ (+0x98, under the read access +0xd0). A found emitter rewrites the handle's
// stamp from its slot (stamp_index_, +0x14), as the listing does. The slot index is checked
// against the 16-entry table, which the listing does not do: an out-of-range index takes the
// search path.
EmitterObj* VoxEngineInternal::GetEmitterObject(EmitterHandle& emitter) {
    std::uint32_t stamp = 0;
    std::uint32_t slot = 0;
    emitter.GetTimeStamp(stamp, slot);
    if (slot < 16 && data_stamps_[slot] == stamp) {
        if (void* object = emitter.GetObjectPointer()) {
            return static_cast<EmitterObj*>(object);
        }
    }
    Handlable* found = emitters_.Find(emitter.GetId());
    if (found == nullptr) {
        emitter_pending_access_.GetReadAccess();
        found = emitter_pending_.Find(emitter.GetId());
        emitter_pending_access_.ReleaseReadAccess();
    }
    if (found == nullptr) {
        return nullptr;
    }
    EmitterObj* object = static_cast<EmitterObj*>(found);
    const auto object_slot = static_cast<std::uint32_t>(object->stamp_index_);
    emitter.SetTimeStamp(data_stamps_[object_slot], object_slot);
    return object;
}

// 0x867724 _ZN3vox17VoxEngineInternal22Get3DEmitterParameteriERNS_13EmitterHandleEiRi
void VoxEngineInternal::Get3DEmitterParameteri(EmitterHandle& emitter, int param, int& value) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Get3DParameteri(param, value);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867770 _ZN3vox17VoxEngineInternal22Get3DEmitterParameterfERNS_13EmitterHandleEiRf
void VoxEngineInternal::Get3DEmitterParameterf(EmitterHandle& emitter, int param, float& value) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Get3DParameterf(param, value);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x8677bc _ZN3vox17VoxEngineInternal22Get3DEmitterParametersERNS_13EmitterHandleERNS_22Vox3DEmitterParametersE
void VoxEngineInternal::Get3DEmitterParameters(EmitterHandle& emitter, Vox3DEmitterParameters& params) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Get3DParameteri(0, params.param0);
        for (int i = 0; i < 7; ++i) {
            obj->Get3DParameterf(i + 1, params.params[i]);
        }
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867874 _ZN3vox17VoxEngineInternal21Get3DEmitterDirectionERNS_13EmitterHandleERfS3_S3_
void VoxEngineInternal::Get3DEmitterDirection(EmitterHandle& emitter, float& x, float& y, float& z) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Get3DParameter3f(10, x, y, z);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x8678d4 _ZN3vox17VoxEngineInternal20Get3DEmitterVelocityERNS_13EmitterHandleERfS3_S3_
void VoxEngineInternal::Get3DEmitterVelocity(EmitterHandle& emitter, float& x, float& y, float& z) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Get3DParameter3f(9, x, y, z);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867934 _ZN3vox17VoxEngineInternal20Get3DEmitterPositionERNS_13EmitterHandleERfS3_S3_
void VoxEngineInternal::Get3DEmitterPosition(EmitterHandle& emitter, float& x, float& y, float& z) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Get3DParameter3f(8, x, y, z);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867994 _ZN3vox17VoxEngineInternal22Set3DEmitterParameteriERNS_13EmitterHandleEii
void VoxEngineInternal::Set3DEmitterParameteri(EmitterHandle& emitter, int param, int value) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Set3DParameteri(param, value);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x8679e0 _ZN3vox17VoxEngineInternal22Set3DEmitterParameterfERNS_13EmitterHandleEif
void VoxEngineInternal::Set3DEmitterParameterf(EmitterHandle& emitter, int param, float value) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Set3DParameterf(param, value);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867a2c _ZN3vox17VoxEngineInternal22Set3DEmitterParametersERNS_13EmitterHandleERKNS_22Vox3DEmitterParametersE
void VoxEngineInternal::Set3DEmitterParameters(EmitterHandle& emitter, const Vox3DEmitterParameters& params) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Set3DParameteri(0, params.param0);
        for (int i = 0; i < 7; ++i) {
            obj->Set3DParameterf(i + 1, params.params[i]);
        }
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867ae4 _ZN3vox17VoxEngineInternal21Set3DEmitterDirectionERNS_13EmitterHandleEfff
void VoxEngineInternal::Set3DEmitterDirection(EmitterHandle& emitter, float x, float y, float z) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Set3DParameter3f(10, x, y, z);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867b44 _ZN3vox17VoxEngineInternal20Set3DEmitterVelocityERNS_13EmitterHandleEfff
void VoxEngineInternal::Set3DEmitterVelocity(EmitterHandle& emitter, float x, float y, float z) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Set3DParameter3f(9, x, y, z);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867ba4 _ZN3vox17VoxEngineInternal20Set3DEmitterPositionERNS_13EmitterHandleEfff
void VoxEngineInternal::Set3DEmitterPosition(EmitterHandle& emitter, float x, float y, float z) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Set3DParameter3f(8, x, y, z);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867c04 _ZN3vox17VoxEngineInternal8GetGroupERNS_13EmitterHandleE
int VoxEngineInternal::GetGroup(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    int group = 0;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        group = obj->GetGroup();
    }
    emitter_access_.ReleaseReadAccess();
    return group;
}

// 0x867c48 _ZN3vox17VoxEngineInternal8SetGroupERNS_13EmitterHandleEi
void VoxEngineInternal::SetGroup(EmitterHandle& emitter, int group) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetGroup(group);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867d64 _ZN3vox17VoxEngineInternal6IsDoneERNS_13EmitterHandleE
// A missing emitter counts as done.
bool VoxEngineInternal::IsDone(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    bool done = true;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        done = obj->IsDone();
    }
    emitter_access_.ReleaseReadAccess();
    return done;
}

// 0x867dac _ZN3vox17VoxEngineInternal9IsPlayingERNS_13EmitterHandleE
int VoxEngineInternal::IsPlaying(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    int playing = 0;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        playing = obj->IsPlaying() ? 1 : 0;
    }
    emitter_access_.ReleaseReadAccess();
    return playing;
}

// 0x867df0 _ZN3vox17VoxEngineInternal7IsAliveERNS_13EmitterHandleE
int VoxEngineInternal::IsAlive(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    int alive = 0;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        alive = obj->IsAlive() ? 1 : 0;
    }
    emitter_access_.ReleaseReadAccess();
    return alive;
}

// 0x867e34 _ZN3vox17VoxEngineInternal7IsValidERNS_13EmitterHandleE
// Valid when the lookup finds an object. The lookup itself runs under the access.
int VoxEngineInternal::IsValid(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    const bool found = GetEmitterObject(emitter) != nullptr;
    emitter_access_.ReleaseReadAccess();
    return found ? 1 : 0;
}

// 0x867e70 _ZN3vox17VoxEngineInternal7IsReadyERNS_13EmitterHandleE
int VoxEngineInternal::IsReady(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    int ready = 0;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        ready = obj->IsReady() ? 1 : 0;
    }
    emitter_access_.ReleaseReadAccess();
    return ready;
}

// 0x867eb4 _ZN3vox17VoxEngineInternal8GetPitchERNS_13EmitterHandleE
float VoxEngineInternal::GetPitch(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    float pitch = 0.0f;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        pitch = obj->GetPitch();
    }
    emitter_access_.ReleaseReadAccess();
    return pitch;
}

// 0x867efc _ZN3vox17VoxEngineInternal7SetLoopERNS_13EmitterHandleEb
void VoxEngineInternal::SetLoop(EmitterHandle& emitter, bool loop) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetLoop(loop);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867f40 _ZN3vox17VoxEngineInternal7GetGainERNS_13EmitterHandleE
float VoxEngineInternal::GetGain(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    float gain = 0.0f;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        gain = obj->GetGain();
    }
    emitter_access_.ReleaseReadAccess();
    return gain;
}

// 0x867f88 _ZN3vox17VoxEngineInternal20SetAutoKillAfterDoneERNS_13EmitterHandleEb
void VoxEngineInternal::SetAutoKillAfterDone(EmitterHandle& emitter, bool on) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetAutoKillAfterDone(on);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x8675c0 _ZN3vox17VoxEngineInternal11GetUserDataERNS_13EmitterHandleE
// Returns all ones (the original's -1) when the emitter is missing.
std::uintptr_t VoxEngineInternal::GetUserData(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    std::uintptr_t data = std::numeric_limits<std::uintptr_t>::max();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        data = obj->GetUserData();
    }
    emitter_access_.ReleaseReadAccess();
    return data;
}

// 0x868054 _ZN3vox17VoxEngineInternal29IncreaseEmitterObjectRefCountERNS_13EmitterHandleE
void VoxEngineInternal::IncreaseEmitterObjectRefCount(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Retain();
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x8682e0 _ZN3vox17VoxEngineInternal29DecreaseEmitterObjectRefCountERNS_13EmitterHandleE
void VoxEngineInternal::DecreaseEmitterObjectRefCount(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->Release();
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x869068 _ZN3vox17VoxEngineInternal22GetFreeEmitterObjectIdEv
// Write access to the emitter table (+0xc4), then the next free id from the emitter
// HandlableContainer (+0x78). The id is a 64-bit value in the original as well.
std::int64_t VoxEngineInternal::GetFreeEmitterObjectId() {
    emitter_access_.GetWriteAccess();
    std::int64_t id = emitters_.GetFreeHandleId();
    emitter_access_.ReleaseWriteAccess();
    return id;
}

}  // namespace vox
