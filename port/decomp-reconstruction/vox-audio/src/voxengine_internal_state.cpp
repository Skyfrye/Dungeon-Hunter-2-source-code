// VoxEngineInternal emitter state forwarders: play, pause, stop, resume, gain, pitch,
// play cursor, status and the state-change notification. The handle versions take
// the emitter read access (+0xc4), look the object up and call the object version.
// The object versions keep the priority bank membership (+0x30 bank, +0x34 flag).
#include <new>

#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/priority_bank.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// The process-wide instance (vox::VoxEngineInternal::s_voxEngineInternal in the original).
// Declared as a static member in voxengine_internal.hpp so the emitter handles can take its address.
VoxEngineInternal* VoxEngineInternal::s_voxEngineInternal = nullptr;

// 0x869d3c _ZN3vox17VoxEngineInternal20GetVoxEngineInternalEv
// The original allocates 0x5a0 bytes and runs the constructor at 0x869a94. The port allocates
// sizeof(VoxEngineInternal) and runs the port's constructor (its partial items are on that row).
VoxEngineInternal* VoxEngineInternal::GetVoxEngineInternal() {
    if (s_voxEngineInternal != nullptr) {
        return s_voxEngineInternal;
    }
    void* storage = VoxAlloc(sizeof(VoxEngineInternal), kVoxMemHintDefault);
    auto* engine = new (storage) VoxEngineInternal();
    s_voxEngineInternal = engine;
    return engine;
}

// 0x86ef8c _ZN3vox17VoxEngineInternal4PlayEPNS_10EmitterObjEbf
// Membership: an emitter already in a bank is removed first. A new bank entry is
// needed to play; a rejected entry stops the emitter. Without a bank manager nothing
// is started.
void VoxEngineInternal::Play(EmitterObj* emitter, bool loop, float fade) {
    if (emitter == nullptr) {
        return;
    }
    if (emitter->in_bank_) {
        if (priority_bank_ != nullptr) {
            priority_bank_->RemoveEmitter(emitter->bank_, emitter);
        }
        emitter->in_bank_ = false;
    }
    if (priority_bank_ == nullptr) {
        return;
    }
    if (priority_bank_->AddEmitter(emitter->bank_, emitter)) {
        if (emitter->IsPlaying()) {
            emitter->Reset();
        }
        emitter->Play(fade);
        emitter->SetLoop(loop);
        emitter->in_bank_ = true;
        return;
    }
    emitter->in_bank_ = false;
    emitter->Stop(0.0f);
}

// 0x86f254 _ZN3vox17VoxEngineInternal4PlayERNS_13EmitterHandleEbf
void VoxEngineInternal::Play(EmitterHandle& emitter, bool loop, float fade) {
    emitter_access_.GetReadAccess();
    EmitterObj* obj = GetEmitterObject(emitter);
    Play(obj, loop, fade);
    emitter_access_.ReleaseReadAccess();
}

// 0x86ed00 _ZN3vox17VoxEngineInternal4StopEPNS_10EmitterObjEf
int VoxEngineInternal::Stop(EmitterObj* emitter, float fade) {
    if (emitter == nullptr) {
        return 0;
    }
    if (emitter->in_bank_ && priority_bank_ != nullptr) {
        priority_bank_->RemoveEmitter(emitter->bank_, emitter);
    }
    emitter->in_bank_ = false;
    return emitter->Stop(fade);
}

// 0x86ef48 _ZN3vox17VoxEngineInternal4StopERNS_13EmitterHandleEf
void VoxEngineInternal::Stop(EmitterHandle& emitter, float fade) {
    emitter_access_.GetReadAccess();
    EmitterObj* obj = GetEmitterObject(emitter);
    Stop(obj, fade);
    emitter_access_.ReleaseReadAccess();
}

// 0x86e618 _ZN3vox17VoxEngineInternal5PauseEPNS_10EmitterObjEf
// The null check returns 0 (the binary's SUBS sets the result to the null emitter).
int VoxEngineInternal::Pause(EmitterObj* emitter, float fade) {
    if (emitter != nullptr) {
        return emitter->Pause(fade);
    }
    return 0;
}

// 0x86e824 _ZN3vox17VoxEngineInternal5PauseERNS_13EmitterHandleEf
void VoxEngineInternal::Pause(EmitterHandle& emitter, float fade) {
    emitter_access_.GetReadAccess();
    EmitterObj* obj = GetEmitterObject(emitter);
    Pause(obj, fade);
    emitter_access_.ReleaseReadAccess();
}

// 0x86c2cc _ZN3vox17VoxEngineInternal6ResumeEPNS_10EmitterObjEf
int VoxEngineInternal::Resume(EmitterObj* emitter, float fade) {
    if (emitter != nullptr) {
        return emitter->Resume(fade);
    }
    return 0;
}

// 0x86c4d8 _ZN3vox17VoxEngineInternal6ResumeERNS_13EmitterHandleEf
int VoxEngineInternal::Resume(EmitterHandle& emitter, float fade) {
    emitter_access_.GetReadAccess();
    EmitterObj* obj = GetEmitterObject(emitter);
    Resume(obj, fade);
    return emitter_access_.ReleaseReadAccess();
}

// 0x86bbf4 _ZN3vox17VoxEngineInternal7SetGainERNS_13EmitterHandleEff
int VoxEngineInternal::SetGain(EmitterHandle& emitter, float gain, float time) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetGain(gain, time);
    }
    return emitter_access_.ReleaseReadAccess();
}

// 0x86bd10 _ZN3vox17VoxEngineInternal8SetPitchERNS_13EmitterHandleEff
void VoxEngineInternal::SetPitch(EmitterHandle& emitter, float pitch, float time) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetPitch(pitch, time);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867c94 _ZN3vox17VoxEngineInternal13SetPlayCursorERNS_13EmitterHandleEf
void VoxEngineInternal::SetPlayCursor(EmitterHandle& emitter, float position) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetPlayCursor(position);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867cd8 _ZN3vox17VoxEngineInternal13GetPlayCursorERNS_13EmitterHandleE
float VoxEngineInternal::GetPlayCursor(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    float position = 0.0f;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        position = obj->GetPlayCursor();
    }
    emitter_access_.ReleaseReadAccess();
    return position;
}

// 0x867d20 _ZN3vox17VoxEngineInternal9GetStatusERNS_13EmitterHandleE
int VoxEngineInternal::GetStatus(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    int status = 0;
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        status = obj->GetStatus();
    }
    emitter_access_.ReleaseReadAccess();
    return status;
}

// 0x8676d8 _ZN3vox17VoxEngineInternal22SetDSPEmitterParameterERNS_13EmitterHandleEiPv
int VoxEngineInternal::SetDSPEmitterParameter(EmitterHandle& emitter, int param, void* value) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        // The listing drops the int of EmitterObj::SetDSPParameter (a plain BL) and returns the
        // ReleaseReadAccess result (tail call), so that is the value this function returns.
        (void)obj->SetDSPParameter(param, value);
    }
    return emitter_access_.ReleaseReadAccess();
}

// 0x868008 _ZN3vox17VoxEngineInternal41RegisterForEmitterStateChangeNotificationERNS_13EmitterHandleEPFvS2_PvNS_18EmitterExternStateEES3_
void VoxEngineInternal::RegisterForEmitterStateChangeNotification(EmitterHandle& emitter,
                                                                  EmitterStateCallback callback,
                                                                  void* user_data) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->RegisterStateChangedCallback(callback, user_data);
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x867fcc _ZN3vox17VoxEngineInternal43UnregisterForEmitterStateChangeNotificationERNS_13EmitterHandleE
void VoxEngineInternal::UnregisterForEmitterStateChangeNotification(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->UnregisterStateChangedCallback();
    }
    emitter_access_.ReleaseReadAccess();
}

// 0x86a8dc _ZN3vox17VoxEngineInternal11KillEmitterERNS_13EmitterHandleE
// Detaches the emitter under the write access, then kills it (virtual slot +0x20)
// outside the lock. DetachEmitterObject is declared but not reconstructed yet.
void VoxEngineInternal::KillEmitter(EmitterHandle& emitter) {
    emitter_access_.GetWriteAccess();
    EmitterObj* detached = DetachEmitterObject(emitter.GetId());
    emitter_access_.ReleaseWriteAccess();
    if (detached != nullptr) {
        KillEmitter(detached);
    }
}

}  // namespace vox
