// VoxEngineInternal forwarders to the platform driver (driver_, +0x54c), the suspend
// counter, the gain reads and the priority bank hand-off. Forwarders that take the
// mutex lock it (+0x3f4) around the call; UpdateDSP, Get/SetOutputMode and
// SetPriorityBank do not, as in the original.
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/gain_fade.hpp"
#include "vox-audio/vox/priority_bank.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x865c50 _ZN3vox17VoxEngineInternal18SetSFXPresetActiveEibf
void VoxEngineInternal::SetSFXPresetActive(int preset, bool active, float level) {
    mutex_.Lock();
    if (driver_ != nullptr) {
        driver_->SetSFXPresetActive(preset, active, level);
    }
    mutex_.Unlock();
}

// 0x865ca4 _ZN3vox17VoxEngineInternal20SetDynamicBusRoutingEPc
void VoxEngineInternal::SetDynamicBusRouting(char* name) {
    mutex_.Lock();
    if (driver_ != nullptr) {
        driver_->SetDynamicBusRouting(name);
    }
    mutex_.Unlock();
}

// 0x865ce8 _ZN3vox17VoxEngineInternal19SetStaticBusRoutingEPc
void VoxEngineInternal::SetStaticBusRouting(char* name) {
    mutex_.Lock();
    if (driver_ != nullptr) {
        driver_->SetStaticBusRouting(name);
    }
    mutex_.Unlock();
}

// 0x8630b0 _ZN3vox17VoxEngineInternal23_SetDefault3DParametersEv
// The original is a bare return (bx lr).
void VoxEngineInternal::_SetDefault3DParameters() {}

// 0x8630b4 _ZN3vox17VoxEngineInternal16SetRoutingVolumeEPcS1_NS_22VoxDSPGeneralParameter14BusRoutingTypeEfff
// The original is a bare return (bx lr); the arguments are not used.
void VoxEngineInternal::SetRoutingVolume(char*, char*, VoxDSPGeneralParameter::BusRoutingType, float, float,
                                         float) {}

// 0x86308c _ZN3vox17VoxEngineInternal9UpdateDSPEf
void VoxEngineInternal::UpdateDSP(float dt) {
    if (driver_ != nullptr) {
        driver_->Update(dt);
    }
}

// 0x8630b8 _ZN3vox17VoxEngineInternal13GetOutputModeEv
int VoxEngineInternal::GetOutputMode() {
    if (driver_ != nullptr) {
        return driver_->GetOutputMode();
    }
    return -1;
}

// 0x8630e4 _ZN3vox17VoxEngineInternal13SetOutputModeENS_13VoxOutputModeE
int VoxEngineInternal::SetOutputMode(VoxOutputMode mode) {
    if (driver_ != nullptr) {
        return driver_->SetOutputMode(mode);
    }
    return 0;
}

// 0x8660d4 _ZN3vox17VoxEngineInternal13GetMasterGainEv
float VoxEngineInternal::GetMasterGain() {
    mutex_.Lock();
    float gain = master_fade_.target;
    mutex_.Unlock();
    return gain;
}

// 0x866098 _ZN3vox17VoxEngineInternal12GetGroupGainEi
// Groups 0..31 are valid; any other index (negative values included) reads as 0.
float VoxEngineInternal::GetGroupGain(int group) {
    mutex_.Lock();
    float gain = 0.0f;
    if (static_cast<unsigned int>(group) <= 31u) {
        gain = group_fades_[group].target;
    }
    mutex_.Unlock();
    return gain;
}

// 0x864dc4 _ZN3vox17VoxEngineInternal7SuspendEv
// Nested: the driver is told to suspend only when the first Suspend arrives.
void VoxEngineInternal::Suspend() {
    if (driver_ == nullptr) {
        return;
    }
    mutex_.Lock();
    if (suspend_count_ == 0 && driver_ != nullptr) {
        driver_->Suspend();
    }
    ++suspend_count_;
    mutex_.Unlock();
}

// 0x864d44 _ZN3vox17VoxEngineInternal6ResumeEv
// The driver is resumed when the depth falls from one to zero.
void VoxEngineInternal::Resume() {
    if (driver_ == nullptr) {
        return;
    }
    mutex_.Lock();
    if (suspend_count_ > 1) {
        --suspend_count_;
    } else if (suspend_count_ == 1) {
        if (driver_ != nullptr) {
            driver_->Resume();
        }
        suspend_count_ = 0;
    }
    mutex_.Unlock();
}

// 0x864d10 _ZN3vox17VoxEngineInternal11IsSuspendedEv
bool VoxEngineInternal::IsSuspended() {
    mutex_.Lock();
    bool suspended = suspend_count_ > 0;
    mutex_.Unlock();
    return suspended;
}

// 0x866258 _ZN3vox17VoxEngineInternal15SetPriorityBankEiiiNS_20PriorityBankBehaviorE
// The original tail-calls PriorityBankManager::SetPriorityBank when the manager exists.
void VoxEngineInternal::SetPriorityBank(int index, int min_priority, int max_priority,
                                        PriorityBankBehavior behavior) {
    if (priority_bank_ == nullptr) {
        return;
    }
    priority_bank_->SetPriorityBank(index, min_priority, max_priority, behavior);
}

// 0x86b9b8 _ZN3vox17VoxEngineInternal12SetGroupGainEjff
// group is a bit mask over the 32 groups. For each set bit the group's record restarts its
// fade: the current value is where the old fade has reached, the target is the clamped gain,
// the elapsed time is zero and the duration is time + 0.001 (the 0x3a83126f constant).
// Returns the Mutex::Unlock result.
int VoxEngineInternal::SetGroupGain(unsigned int group, float gain, float time) {
    float target = ClampGainUnit(gain);
    mutex_.Lock();
    if (group != 0) {
        for (int i = 0; i < 32; ++i) {
            if ((group & (1u << i)) != 0) {
                RestartFade(group_fades_[i], target, time);
            }
        }
    }
    return mutex_.Unlock();
}

// 0x86bd5c _ZN3vox17VoxEngineInternal13SetMasterGainEff
// Returns the Mutex::Unlock result.
int VoxEngineInternal::SetMasterGain(float gain, float time) {
    mutex_.Lock();
    RestartFade(master_fade_, ClampGainUnit(gain), time);
    return mutex_.Unlock();
}

}  // namespace vox
