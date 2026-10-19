// VoxEngineInternal group-wide emitter operations and the emitter list queries. The four
// Play/Pause/Stop/Resume AllEmitters functions walk the live emitter table and then the
// pending table, and apply one state change to every emitter whose group mask contains the
// requested group. GetAllEmitters and GetEmitterHandles fill caller arrays with handles.
#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

namespace {

// Calls fn on each emitter in active and then pending whose group mask contains group. The
// caller holds the read access of both tables.
template <typename Fn>
void ForEachEmitterInGroup(HandlableContainer& active, HandlableContainer& pending,
                           unsigned int group, Fn&& fn) {
    for (auto& entry : active) {
        auto* emitter = static_cast<EmitterObj*>(entry.second);
        if (emitter->IsGroup(group)) {
            fn(emitter);
        }
    }
    for (auto& entry : pending) {
        auto* emitter = static_cast<EmitterObj*>(entry.second);
        if (emitter->IsGroup(group)) {
            fn(emitter);
        }
    }
}

// Builds a handle for an emitter the way the original does: the id, the engine pointer, the
// object, then the stamp of its slot (the table at +0x550) and the slot index.
EmitterHandle MakeEmitterHandle(EmitterObj* emitter, const std::uint32_t* stamps) {
    const auto slot = static_cast<std::uint32_t>(emitter->stamp_index_);
    return EmitterHandle(emitter->id, &VoxEngineInternal::s_voxEngineInternal, emitter,
                         stamps[slot], slot);
}

}  // namespace

// 0x86f040 _ZN3vox17VoxEngineInternal14PlayAllEmittersEjf
// Each emitter in the group plays with its own loop flag (EmitterObj::GetLoop).
void VoxEngineInternal::PlayAllEmitters(unsigned int group, float fade) {
    emitter_access_.GetReadAccess();
    emitter_pending_access_.GetReadAccess();
    ForEachEmitterInGroup(emitters_, emitter_pending_, group, [this, fade](EmitterObj* emitter) {
        Play(emitter, emitter->GetLoop(), fade);
    });
    emitter_pending_access_.ReleaseReadAccess();
    emitter_access_.ReleaseReadAccess();
}

// 0x86e628 _ZN3vox17VoxEngineInternal15PauseAllEmittersEjf
void VoxEngineInternal::PauseAllEmitters(unsigned int group, float fade) {
    emitter_access_.GetReadAccess();
    emitter_pending_access_.GetReadAccess();
    ForEachEmitterInGroup(emitters_, emitter_pending_, group, [this, fade](EmitterObj* emitter) {
        Pause(emitter, fade);
    });
    emitter_pending_access_.ReleaseReadAccess();
    emitter_access_.ReleaseReadAccess();
}

// 0x86ed4c _ZN3vox17VoxEngineInternal15StopAllEmittersEjf
void VoxEngineInternal::StopAllEmitters(unsigned int group, float fade) {
    emitter_access_.GetReadAccess();
    emitter_pending_access_.GetReadAccess();
    ForEachEmitterInGroup(emitters_, emitter_pending_, group, [this, fade](EmitterObj* emitter) {
        Stop(emitter, fade);
    });
    emitter_pending_access_.ReleaseReadAccess();
    emitter_access_.ReleaseReadAccess();
}

// 0x86c2dc _ZN3vox17VoxEngineInternal17ResumeAllEmittersEjf
void VoxEngineInternal::ResumeAllEmitters(unsigned int group, float fade) {
    emitter_access_.GetReadAccess();
    emitter_pending_access_.GetReadAccess();
    ForEachEmitterInGroup(emitters_, emitter_pending_, group, [this, fade](EmitterObj* emitter) {
        Resume(emitter, fade);
    });
    emitter_pending_access_.ReleaseReadAccess();
    emitter_access_.ReleaseReadAccess();
}

// 0x868468 _ZN3vox17VoxEngineInternal14GetAllEmittersEPNS_13EmitterHandleEi
// Writes up to max_count handles: live emitters first (in key order), then pending ones.
// Returns how many were written. The handles' stamps come from the stamp table at +0x550 (data_stamps_, shared by both kinds of handle).
int VoxEngineInternal::GetAllEmitters(EmitterHandle* out, int max_count) {
    emitter_access_.GetReadAccess();
    emitter_pending_access_.GetReadAccess();
    int count = 0;
    for (auto& entry : emitters_) {
        if (count >= max_count) {
            break;
        }
        out[count++] = MakeEmitterHandle(static_cast<EmitterObj*>(entry.second), data_stamps_);
    }
    for (auto& entry : emitter_pending_) {
        if (count >= max_count) {
            break;
        }
        out[count++] = MakeEmitterHandle(static_cast<EmitterObj*>(entry.second), data_stamps_);
    }
    emitter_pending_access_.ReleaseReadAccess();
    emitter_access_.ReleaseReadAccess();
    return count;
}

// 0x8689bc _ZN3vox17VoxEngineInternal17GetEmitterHandlesERNS_10DataHandleEPNS_13EmitterHandleEi
// Writes the handles of the emitters that play the given data object, live then pending, up to
// max_count. Returns the count. A data handle with no data object gives 0.
int VoxEngineInternal::GetEmitterHandles(DataHandle& data, EmitterHandle* out, int max_count) {
    data_objects_access_.GetReadAccess();
    int count = 0;
    if (DataObj* data_obj = GetDataObject(data)) {
        emitter_access_.GetReadAccess();
        emitter_pending_access_.GetReadAccess();
        for (auto& entry : emitters_) {
            if (count >= max_count) {
                break;
            }
            auto* emitter = static_cast<EmitterObj*>(entry.second);
            if (emitter->data_ == data_obj) {
                out[count++] = MakeEmitterHandle(emitter, data_stamps_);
            }
        }
        for (auto& entry : emitter_pending_) {
            if (count >= max_count) {
                break;
            }
            auto* emitter = static_cast<EmitterObj*>(entry.second);
            if (emitter->data_ == data_obj) {
                out[count++] = MakeEmitterHandle(emitter, data_stamps_);
            }
        }
        emitter_pending_access_.ReleaseReadAccess();
        emitter_access_.ReleaseReadAccess();
    }
    data_objects_access_.ReleaseReadAccess();
    return count;
}

}  // namespace vox
