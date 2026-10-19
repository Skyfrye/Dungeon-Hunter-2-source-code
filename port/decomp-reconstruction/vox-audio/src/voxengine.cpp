#include "vox-audio/vox/voxengine.hpp"

namespace vox {

// The facade's engine pointer. The original stores it as a static (no this in
// the listings) and sets it from Initialize, which is not reconstructed yet.
VoxEngineInternal* VoxEngine::m_internal = nullptr;

// 0x8616f8 _ZN3vox9VoxEngine13SuspendEngineEv (reconstructed)
void VoxEngine::SuspendEngine() {
    if (m_internal != nullptr) {
        m_internal->Suspend();
    }
}

// 0x861734 _ZN3vox9VoxEngine12ResumeEngineEv (reconstructed)
void VoxEngine::ResumeEngine() {
    if (m_internal != nullptr) {
        m_internal->Resume();
    }
}

// 0x861770 _ZN3vox9VoxEngine17IsEngineSuspendedEv (reconstructed)
// Without an engine the original reports suspended.
bool VoxEngine::IsEngineSuspended() {
    if (m_internal != nullptr) {
        return m_internal->IsSuspended();
    }
    return true;
}

// 0x8617b4 _ZN3vox9VoxEngine6UpdateEf (reconstructed: empty body in the original)
void VoxEngine::Update(float dt) {
    (void)dt;
}

// 0x8617b8 _ZN3vox9VoxEngine13UpdateSourcesEv (reconstructed: empty body in the original)
void VoxEngine::UpdateSources() {}

// 0x8617bc _ZN3vox9VoxEngine14UpdateEmittersEf (reconstructed: empty body in the original)
void VoxEngine::UpdateEmitters(float dt) {
    (void)dt;
}

// 0x8617c0 _ZN3vox9VoxEngine13SetMasterGainEff
// The listing returns the vtable +0x28 result (the unlock int of VoxEngineInternal::SetMasterGain).
// On the null path the binary returns the address of the m_internal global (a register leftover
// with no int form); the port returns 0 there, as the EmitterObj wrappers do.
int VoxEngine::SetMasterGain(float gain, float time) {
    if (m_internal != nullptr) {
        return m_internal->SetMasterGain(gain, time);
    }
    return 0;
}

// 0x8617fc _ZN3vox9VoxEngine12SetGroupGainEjff
// The listing returns the vtable +0x24 result (the unlock int of VoxEngineInternal::SetGroupGain).
// The null path returns a GOT-derived address in the binary (no int form); the port returns 0.
int VoxEngine::SetGroupGain(unsigned int group, float gain, float time) {
    if (m_internal != nullptr) {
        return m_internal->SetGroupGain(group, gain, time);
    }
    return 0;
}

// 0x861838 _ZN3vox9VoxEngine41RegisterForEmitterStateChangeNotificationERNS_13EmitterHandleEPFvS2_PvNS_18EmitterExternStateEES3_
// Empty in the original: state-change callbacks are not dispatched by the facade.
void VoxEngine::RegisterForEmitterStateChangeNotification(
    EmitterHandle& emitter, void (*callback)(EmitterHandle&, void*, EmitterExternState), void* user_data) {
    (void)emitter;
    (void)callback;
    (void)user_data;
}

// 0x86183c _ZN3vox9VoxEngine43UnregisterForEmitterStateChangeNotificationERNS_13EmitterHandleE
void VoxEngine::UnregisterForEmitterStateChangeNotification(EmitterHandle& emitter) {
    (void)emitter;
}

// 0x861840 _ZN3vox9VoxEngine21UpdateSourcesThreadedEv (partial: target VoxEngineInternal::UpdateSources is skipped in the ledger, so the vtable slot +0x18 has no body)
void VoxEngine::UpdateSourcesThreaded() {
    if (m_internal != nullptr) {
        m_internal->UpdateSources();
    }
}

// 0x86187c _ZN3vox9VoxEngine21UpdateSourcesThreadedEPvS1_ (reconstructed: empty body in the original)
void VoxEngine::UpdateSourcesThreaded(void* a, void* b) {
    (void)a;
    (void)b;
}

// 0x861880 _ZN3vox9VoxEngine12GetDebugInfoERNS_9DebugInfoE (reconstructed: forwards to VoxEngineInternal::GetDebugInfo)
void VoxEngine::GetDebugInfo(DebugInfo& info) {
    if (m_internal != nullptr) {
        m_internal->GetDebugInfo(info);
    }
}

// 0x8618a8 _ZN3vox9VoxEngine10PrintDebugEv (reconstructed)
void VoxEngine::PrintDebug() {
    if (m_internal != nullptr) {
        m_internal->PrintDebug();
    }
}

// 0x8618d0 _ZN3vox9VoxEngine13SetOutputModeENS_13VoxOutputModeE (reconstructed)
// The null path returns 0, the value of m_internal, as the listing does.
int VoxEngine::SetOutputMode(VoxOutputMode mode) {
    if (m_internal != nullptr) {
        return m_internal->SetOutputMode(mode);
    }
    return 0;
}

// 0x8618f8 _ZN3vox9VoxEngine13GetOutputModeEv (reconstructed)
VoxOutputMode VoxEngine::GetOutputMode() {
    if (m_internal != nullptr) {
        return static_cast<VoxOutputMode>(m_internal->GetOutputMode());
    }
    return static_cast<VoxOutputMode>(-1);
}

// 0x861928 _ZN3vox9VoxEngine24SetInteractiveMusicStateERNS_13EmitterHandleEPKc (reconstructed)
// Verified against the listing: r0 = m_internal, CMP r0, #0, BXEQ LR, else the tail branch
// to VoxEngineInternal::SetInteractiveMusicState. On the null path r0 is exactly 0 (the
// loaded m_internal), so the port's 0 is the listing's value, not a leftover. The internal
// target's own partial item (the null decoder GetType call) is tracked on its row.
int VoxEngine::SetInteractiveMusicState(EmitterHandle& emitter, const char* state) {
    if (m_internal != nullptr) {
        return m_internal->SetInteractiveMusicState(emitter, state);
    }
    return 0;
}

// 0x861950 _ZN3vox9VoxEngine22SetDSPEmitterParameterERNS_13EmitterHandleEiPv (reconstructed)
// The listing returns the internal result, or 0 without an engine (BXEQ LR with r0 = 0).
int VoxEngine::SetDSPEmitterParameter(EmitterHandle& emitter, int param, void* value) {
    if (m_internal != nullptr) {
        return m_internal->SetDSPEmitterParameter(emitter, param, value);
    }
    return 0;
}

// 0x861978 _ZN3vox9VoxEngine18SetSFXPresetActiveEibf (reconstructed)
void VoxEngine::SetSFXPresetActive(int preset, bool active, float level) {
    if (m_internal != nullptr) {
        m_internal->SetSFXPresetActive(preset, active, level);
    }
}

// 0x8619a0 _ZN3vox9VoxEngine16SetRoutingVolumeEPcS1_NS_22VoxDSPGeneralParameter14BusRoutingTypeEfff (reconstructed)
void VoxEngine::SetRoutingVolume(char* from, char* to, VoxDSPGeneralParameter::BusRoutingType type,
                                 float volume, float fade_in, float fade_out) {
    if (m_internal != nullptr) {
        m_internal->SetRoutingVolume(from, to, type, volume, fade_in, fade_out);
    }
}

// 0x8619e0 _ZN3vox9VoxEngine20SetDynamicBusRoutingEPc (reconstructed)
void VoxEngine::SetDynamicBusRouting(char* name) {
    if (m_internal != nullptr) {
        m_internal->SetDynamicBusRouting(name);
    }
}

// 0x861a08 _ZN3vox9VoxEngine19SetStaticBusRoutingEPc (reconstructed)
void VoxEngine::SetStaticBusRouting(char* name) {
    if (m_internal != nullptr) {
        m_internal->SetStaticBusRouting(name);
    }
}

// 0x861a30 _ZN3vox9VoxEngine22Get3DGeneralParameteriEiRi (reconstructed)
void VoxEngine::Get3DGeneralParameteri(int param, int& value) {
    if (m_internal != nullptr) {
        m_internal->Get3DGeneralParameteri(param, value);
    }
}

// 0x861a58 _ZN3vox9VoxEngine22Get3DGeneralParameterfEiRf (reconstructed)
void VoxEngine::Get3DGeneralParameterf(int param, float& value) {
    if (m_internal != nullptr) {
        m_internal->Get3DGeneralParameterf(param, value);
    }
}

// 0x861a80 _ZN3vox9VoxEngine21Get3DGeneralParameterERNS_22Vox3DGeneralParametersE (reconstructed)
void VoxEngine::Get3DGeneralParameter(Vox3DGeneralParameters& params) {
    if (m_internal != nullptr) {
        m_internal->Get3DGeneralParameter(params);
    }
}

// 0x861aa8 _ZN3vox9VoxEngine24Get3DListenerOrientationERfS1_S1_S1_S1_S1_ (reconstructed)
void VoxEngine::Get3DListenerOrientation(float& fx, float& fy, float& fz, float& ux, float& uy, float& uz) {
    if (m_internal != nullptr) {
        m_internal->Get3DListenerOrientation(fx, fy, fz, ux, uy, uz);
    }
}

// 0x861ae8 _ZN3vox9VoxEngine21Get3DListenerVelocityERfS1_S1_ (reconstructed)
void VoxEngine::Get3DListenerVelocity(float& x, float& y, float& z) {
    if (m_internal != nullptr) {
        m_internal->Get3DListenerVelocity(x, y, z);
    }
}

// 0x861b10 _ZN3vox9VoxEngine21Get3DListenerPositionERfS1_S1_ (reconstructed)
void VoxEngine::Get3DListenerPosition(float& x, float& y, float& z) {
    if (m_internal != nullptr) {
        m_internal->Get3DListenerPosition(x, y, z);
    }
}

// 0x861b38 _ZN3vox9VoxEngine22Set3DGeneralParameteriEii (reconstructed)
void VoxEngine::Set3DGeneralParameteri(int param, int value) {
    if (m_internal != nullptr) {
        m_internal->Set3DGeneralParameteri(param, value);
    }
}

// 0x861b60 _ZN3vox9VoxEngine22Set3DGeneralParameterfEif (reconstructed)
void VoxEngine::Set3DGeneralParameterf(int param, float value) {
    if (m_internal != nullptr) {
        m_internal->Set3DGeneralParameterf(param, value);
    }
}

// 0x861b88 _ZN3vox9VoxEngine21Set3DGeneralParameterERKNS_22Vox3DGeneralParametersE (reconstructed)
void VoxEngine::Set3DGeneralParameter(const Vox3DGeneralParameters& params) {
    if (m_internal != nullptr) {
        m_internal->Set3DGeneralParameter(params);
    }
}

// 0x861bb0 _ZN3vox9VoxEngine24Set3DListenerOrientationEffffff (reconstructed)
void VoxEngine::Set3DListenerOrientation(float fx, float fy, float fz, float ux, float uy, float uz) {
    if (m_internal != nullptr) {
        m_internal->Set3DListenerOrientation(fx, fy, fz, ux, uy, uz);
    }
}

// 0x861bf0 _ZN3vox9VoxEngine21Set3DListenerVelocityEfff (reconstructed)
void VoxEngine::Set3DListenerVelocity(float x, float y, float z) {
    if (m_internal != nullptr) {
        m_internal->Set3DListenerVelocity(x, y, z);
    }
}

// 0x861c18 _ZN3vox9VoxEngine21Set3DListenerPositionEfff (reconstructed)
void VoxEngine::Set3DListenerPosition(float x, float y, float z) {
    if (m_internal != nullptr) {
        m_internal->Set3DListenerPosition(x, y, z);
    }
}

// 0x861c40 _ZN3vox9VoxEngine22Get3DEmitterParameteriERNS_13EmitterHandleEiRi (reconstructed)
void VoxEngine::Get3DEmitterParameteri(EmitterHandle& emitter, int param, int& value) {
    if (m_internal != nullptr) {
        m_internal->Get3DEmitterParameteri(emitter, param, value);
    }
}

// 0x861c68 _ZN3vox9VoxEngine22Get3DEmitterParameterfERNS_13EmitterHandleEiRf (reconstructed)
void VoxEngine::Get3DEmitterParameterf(EmitterHandle& emitter, int param, float& value) {
    if (m_internal != nullptr) {
        m_internal->Get3DEmitterParameterf(emitter, param, value);
    }
}

// 0x861c90 _ZN3vox9VoxEngine22Get3DEmitterParametersERNS_13EmitterHandleERNS_22Vox3DEmitterParametersE (reconstructed)
void VoxEngine::Get3DEmitterParameters(EmitterHandle& emitter, Vox3DEmitterParameters& params) {
    if (m_internal != nullptr) {
        m_internal->Get3DEmitterParameters(emitter, params);
    }
}

// 0x861cb8 _ZN3vox9VoxEngine21Get3DEmitterDirectionERNS_13EmitterHandleERfS3_S3_ (reconstructed)
void VoxEngine::Get3DEmitterDirection(EmitterHandle& emitter, float& x, float& y, float& z) {
    if (m_internal != nullptr) {
        m_internal->Get3DEmitterDirection(emitter, x, y, z);
    }
}

// 0x861cf0 _ZN3vox9VoxEngine20Get3DEmitterVelocityERNS_13EmitterHandleERfS3_S3_ (reconstructed)
void VoxEngine::Get3DEmitterVelocity(EmitterHandle& emitter, float& x, float& y, float& z) {
    if (m_internal != nullptr) {
        m_internal->Get3DEmitterVelocity(emitter, x, y, z);
    }
}

// 0x861d28 _ZN3vox9VoxEngine20Get3DEmitterPositionERNS_13EmitterHandleERfS3_S3_ (reconstructed)
void VoxEngine::Get3DEmitterPosition(EmitterHandle& emitter, float& x, float& y, float& z) {
    if (m_internal != nullptr) {
        m_internal->Get3DEmitterPosition(emitter, x, y, z);
    }
}

// 0x861d60 _ZN3vox9VoxEngine22Set3DEmitterParameteriERNS_13EmitterHandleEii (reconstructed)
void VoxEngine::Set3DEmitterParameteri(EmitterHandle& emitter, int param, int value) {
    if (m_internal != nullptr) {
        m_internal->Set3DEmitterParameteri(emitter, param, value);
    }
}

// 0x861d88 _ZN3vox9VoxEngine22Set3DEmitterParameterfERNS_13EmitterHandleEif (reconstructed)
void VoxEngine::Set3DEmitterParameterf(EmitterHandle& emitter, int param, float value) {
    if (m_internal != nullptr) {
        m_internal->Set3DEmitterParameterf(emitter, param, value);
    }
}

// 0x861db0 _ZN3vox9VoxEngine22Set3DEmitterParametersERNS_13EmitterHandleERKNS_22Vox3DEmitterParametersE (reconstructed)
void VoxEngine::Set3DEmitterParameters(EmitterHandle& emitter, const Vox3DEmitterParameters& params) {
    if (m_internal != nullptr) {
        m_internal->Set3DEmitterParameters(emitter, params);
    }
}

// 0x861dd8 _ZN3vox9VoxEngine21Set3DEmitterDirectionERNS_13EmitterHandleEfff (reconstructed)
void VoxEngine::Set3DEmitterDirection(EmitterHandle& emitter, float x, float y, float z) {
    if (m_internal != nullptr) {
        m_internal->Set3DEmitterDirection(emitter, x, y, z);
    }
}

// 0x861e10 _ZN3vox9VoxEngine20Set3DEmitterVelocityERNS_13EmitterHandleEfff (reconstructed)
void VoxEngine::Set3DEmitterVelocity(EmitterHandle& emitter, float x, float y, float z) {
    if (m_internal != nullptr) {
        m_internal->Set3DEmitterVelocity(emitter, x, y, z);
    }
}

// 0x861e48 _ZN3vox9VoxEngine20Set3DEmitterPositionERNS_13EmitterHandleEfff (reconstructed)
void VoxEngine::Set3DEmitterPosition(EmitterHandle& emitter, float x, float y, float z) {
    if (m_internal != nullptr) {
        m_internal->Set3DEmitterPosition(emitter, x, y, z);
    }
}

// 0x861e80 _ZN3vox9VoxEngine12GetGroupGainEi (reconstructed)
float VoxEngine::GetGroupGain(int group) {
    if (m_internal != nullptr) {
        return m_internal->GetGroupGain(group);
    }
    return 0.0f;
}

// 0x861eb0 _ZN3vox9VoxEngine13GetMasterGainEv (reconstructed)
float VoxEngine::GetMasterGain() {
    if (m_internal != nullptr) {
        return m_internal->GetMasterGain();
    }
    return 0.0f;
}

// 0x861ee0 _ZN3vox9VoxEngine9GetStatusERNS_13EmitterHandleE (reconstructed)
// The listing is a tail call with r0 = m_internal, so the null path returns 0.
int VoxEngine::GetStatus(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetStatus(emitter);
    }
    return 0;
}

// 0x861f08 _ZN3vox9VoxEngine6IsDoneERNS_13EmitterHandleE (reconstructed)
bool VoxEngine::IsDone(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->IsDone(emitter);
    }
    return true;
}

// 0x861f38 _ZN3vox9VoxEngine9IsPlayingERNS_13EmitterHandleE (reconstructed)
int VoxEngine::IsPlaying(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->IsPlaying(emitter);
    }
    return 0;
}

// 0x861f60 _ZN3vox9VoxEngine7IsAliveERNS_13EmitterHandleE (reconstructed)
int VoxEngine::IsAlive(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->IsAlive(emitter);
    }
    return 0;
}

// 0x861f88 _ZN3vox9VoxEngine7IsValidERNS_13EmitterHandleE (reconstructed)
int VoxEngine::IsValid(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->IsValid(emitter);
    }
    return 0;
}

// 0x861fb0 _ZN3vox9VoxEngine7IsReadyERNS_13EmitterHandleE (reconstructed)
int VoxEngine::IsReady(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->IsReady(emitter);
    }
    return 0;
}

// 0x861fd8 _ZN3vox9VoxEngine13SetPlayCursorERNS_13EmitterHandleEf (reconstructed)
void VoxEngine::SetPlayCursor(EmitterHandle& emitter, float position) {
    if (m_internal != nullptr) {
        m_internal->SetPlayCursor(emitter, position);
    }
}

// 0x862000 _ZN3vox9VoxEngine13GetPlayCursorERNS_13EmitterHandleE (reconstructed)
float VoxEngine::GetPlayCursor(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetPlayCursor(emitter);
    }
    return 0.0f;
}

// 0x862030 _ZN3vox9VoxEngine8GetGroupERNS_13EmitterHandleE (reconstructed)
int VoxEngine::GetGroup(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetGroup(emitter);
    }
    return 0;
}

// 0x862058 _ZN3vox9VoxEngine8SetGroupERNS_13EmitterHandleEi (reconstructed)
void VoxEngine::SetGroup(EmitterHandle& emitter, int group) {
    if (m_internal != nullptr) {
        m_internal->SetGroup(emitter, group);
    }
}

// 0x862080 _ZN3vox9VoxEngine17ResumeAllEmittersEjf (reconstructed)
void VoxEngine::ResumeAllEmitters(unsigned int group, float fade) {
    if (m_internal != nullptr) {
        m_internal->ResumeAllEmitters(group, fade);
    }
}

// 0x8620a8 _ZN3vox9VoxEngine16PauseAllEmittersEjf (reconstructed)
void VoxEngine::PauseAllEmitters(unsigned int group, float fade) {
    if (m_internal != nullptr) {
        m_internal->PauseAllEmitters(group, fade);
    }
}

// 0x8620d0 _ZN3vox9VoxEngine15StopAllEmittersEjf (reconstructed)
void VoxEngine::StopAllEmitters(unsigned int group, float fade) {
    if (m_internal != nullptr) {
        m_internal->StopAllEmitters(group, fade);
    }
}

// 0x8620f8 _ZN3vox9VoxEngine15PlayAllEmittersEjf (reconstructed)
void VoxEngine::PlayAllEmitters(unsigned int group, float fade) {
    if (m_internal != nullptr) {
        m_internal->PlayAllEmitters(group, fade);
    }
}

// 0x862120 _ZN3vox9VoxEngine14GetAllEmittersEPNS_13EmitterHandleEi (reconstructed)
int VoxEngine::GetAllEmitters(EmitterHandle* out, int max_count) {
    if (m_internal != nullptr) {
        return m_internal->GetAllEmitters(out, max_count);
    }
    return 0;
}

// 0x862148 _ZN3vox9VoxEngine6ResumeERNS_13EmitterHandleEf (reconstructed)
void VoxEngine::Resume(EmitterHandle& emitter, float fade) {
    if (m_internal != nullptr) {
        m_internal->Resume(emitter, fade);
    }
}

// 0x862170 _ZN3vox9VoxEngine5PauseERNS_13EmitterHandleEf (reconstructed)
void VoxEngine::Pause(EmitterHandle& emitter, float fade) {
    if (m_internal != nullptr) {
        m_internal->Pause(emitter, fade);
    }
}

// 0x862198 _ZN3vox9VoxEngine4StopERNS_13EmitterHandleEf (reconstructed)
void VoxEngine::Stop(EmitterHandle& emitter, float fade) {
    if (m_internal != nullptr) {
        m_internal->Stop(emitter, fade);
    }
}

// 0x8621c0 _ZN3vox9VoxEngine4PlayERNS_13EmitterHandleEbf (reconstructed)
void VoxEngine::Play(EmitterHandle& emitter, bool loop, float fade) {
    if (m_internal != nullptr) {
        m_internal->Play(emitter, loop, fade);
    }
}

// 0x8621e8 _ZN3vox9VoxEngine8GetPitchERNS_13EmitterHandleE (reconstructed)
float VoxEngine::GetPitch(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetPitch(emitter);
    }
    return 0.0f;
}

// 0x862218 _ZN3vox9VoxEngine8SetPitchERNS_13EmitterHandleEff (reconstructed)
void VoxEngine::SetPitch(EmitterHandle& emitter, float pitch, float time) {
    if (m_internal != nullptr) {
        m_internal->SetPitch(emitter, pitch, time);
    }
}

// 0x862240 _ZN3vox9VoxEngine7SetLoopERNS_13EmitterHandleEb (reconstructed)
void VoxEngine::SetLoop(EmitterHandle& emitter, bool loop) {
    if (m_internal != nullptr) {
        m_internal->SetLoop(emitter, loop);
    }
}

// 0x862268 _ZN3vox9VoxEngine7GetGainERNS_13EmitterHandleE (reconstructed)
float VoxEngine::GetGain(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetGain(emitter);
    }
    return 0.0f;
}

// 0x862298 _ZN3vox9VoxEngine7SetGainERNS_13EmitterHandleEff (reconstructed)
void VoxEngine::SetGain(EmitterHandle& emitter, float gain, float time) {
    if (m_internal != nullptr) {
        m_internal->SetGain(emitter, gain, time);
    }
}

// 0x8622c0 _ZN3vox9VoxEngine20SetAutoKillAfterDoneERNS_13EmitterHandleEb (reconstructed)
void VoxEngine::SetAutoKillAfterDone(EmitterHandle& emitter, bool on) {
    if (m_internal != nullptr) {
        m_internal->SetAutoKillAfterDone(emitter, on);
    }
}

// 0x862348 _ZN3vox9VoxEngine11KillEmitterERNS_13EmitterHandleE (partial)
void VoxEngine::KillEmitter(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        m_internal->KillEmitter(emitter);
    }
}

// 0x862370 _ZN3vox9VoxEngine11GetUserDataERNS_13EmitterHandleE (partial: -1 without an engine)
int VoxEngine::GetUserData(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetUserData(emitter);
    }
    return -1;
}

// 0x8623a8 _ZN3vox9VoxEngine11SetUserDataERNS_13EmitterHandleERNS_21EmitterHandleUserDataE (partial)
void VoxEngine::SetUserData(EmitterHandle& emitter, EmitterHandleUserData& user_data) {
    if (m_internal != nullptr) {
        m_internal->SetUserData(emitter, user_data);
    }
}

// 0x8624a0 _ZN3vox9VoxEngine11GetDurationERNS_10DataHandleE (partial: 0 without an engine)
std::uint32_t VoxEngine::GetDuration(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->GetDuration(data);
    }
    return 0;
}

// 0x8624d0 _ZN3vox9VoxEngine7IsValidERNS_10DataHandleE (partial)
int VoxEngine::IsValid(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->IsValid(data);
    }
    return 0;
}

// 0x8624f8 _ZN3vox9VoxEngine7IsReadyERNS_10DataHandleE (partial)
int VoxEngine::IsReady(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->IsReady(data);
    }
    return 0;
}

// 0x862520 _ZN3vox9VoxEngine17GetAllDataSourcesEPNS_10DataHandleEi (partial)
void VoxEngine::GetAllDataSources(DataHandle* out, int max_count) {
    if (m_internal != nullptr) {
        m_internal->GetAllDataSources(out, max_count);
    }
}

// 0x862548 _ZN3vox9VoxEngine17GetEmitterHandlesERNS_10DataHandleEPNS_13EmitterHandleEi (reconstructed)
// The listing returns int, not void: r0 is m_internal, and the tail branch returns
// VoxEngineInternal::GetEmitterHandles' count; with no engine (r0 == 0) it is 0.
int VoxEngine::GetEmitterHandles(DataHandle& data, EmitterHandle* out, int max_count) {
    if (m_internal != nullptr) {
        return m_internal->GetEmitterHandles(data, out, max_count);
    }
    return 0;
}

// 0x862570 _ZN3vox9VoxEngine17ReleaseDatasourceEj (partial)
void VoxEngine::ReleaseDatasource(unsigned int id) {
    if (m_internal != nullptr) {
        m_internal->ReleaseDatasource(id);
    }
}

// 0x862598 _ZN3vox9VoxEngine17ReleaseDatasourceERNS_10DataHandleE (partial)
void VoxEngine::ReleaseDatasource(DataHandle& data) {
    if (m_internal != nullptr) {
        m_internal->ReleaseDatasource(data);
    }
}

// 0x8625c0 _ZN3vox9VoxEngine6GetUidERNS_10DataHandleE (partial: -1 without an engine)
int VoxEngine::GetUid(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->GetUid(data);
    }
    return -1;
}

// 0x8625f0 _ZN3vox9VoxEngine6SetUidERNS_10DataHandleEi (partial)
void VoxEngine::SetUid(DataHandle& data, int uid) {
    if (m_internal != nullptr) {
        m_internal->SetUid(data, uid);
    }
}

// 0x862618 _ZN3vox9VoxEngine17SetPriorityBankIdERNS_10DataHandleEi (partial)
void VoxEngine::SetPriorityBankId(DataHandle& data, int bank) {
    if (m_internal != nullptr) {
        m_internal->SetPriorityBankId(data, bank);
    }
}

// 0x862640 _ZN3vox9VoxEngine11GetUserDataERNS_10DataHandleE (partial: -1 without an engine)
int VoxEngine::GetUserData(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->GetUserData(data);
    }
    return -1;
}

// 0x862678 _ZN3vox9VoxEngine11SetUserDataERNS_10DataHandleERNS_18DataHandleUserDataE (partial)
void VoxEngine::SetUserData(DataHandle& data, DataHandleUserData& user_data) {
    if (m_internal != nullptr) {
        m_internal->SetUserData(data, user_data);
    }
}

// 0x862858 _ZN3vox9VoxEngine15SetPriorityBankEiiiNS_20PriorityBankBehaviorE (partial)
void VoxEngine::SetPriorityBank(int index, int min_priority, int max_priority, PriorityBankBehavior behavior) {
    if (m_internal != nullptr) {
        m_internal->SetPriorityBank(index, min_priority, max_priority, behavior);
    }
}

// 0x862898 _ZN3vox9VoxEngine19RegisterDecoderTypeEPFPNS_16DecoderInterfaceEPvE (partial: -1 without an engine)
int VoxEngine::RegisterDecoderType(DecoderInterface* (*factory)(void*)) {
    if (m_internal != nullptr) {
        return m_internal->RegisterDecoderType(factory);
    }
    return -1;
}

// 0x8628c8 _ZN3vox9VoxEngine18RegisterStreamTypeEPFPNS_15StreamInterfaceEPvE (partial: -1 without an engine)
int VoxEngine::RegisterStreamType(StreamInterface* (*factory)(void*)) {
    if (m_internal != nullptr) {
        return m_internal->RegisterStreamType(factory);
    }
    return -1;
}

}  // namespace vox
