// vox::VoxEngineInternal::GetDebugInfo: the four-word summary, read under two read locks.
// The data count is read under the data-objects access (+0x54); the emitter count and the
// playing count are read under the emitter access (+0xc4), which is held while the emitter
// table is walked.
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x867260 _ZN3vox17VoxEngineInternal12GetDebugInfoERNS_9DebugInfoE
void VoxEngineInternal::GetDebugInfo(DebugInfo& info) {
    data_objects_access_.GetReadAccess();
    info.data_count = static_cast<std::int32_t>(data_objects_.Size());     // +0x18 (node count of +0x08)
    data_objects_access_.ReleaseReadAccess();

    emitter_access_.GetReadAccess();
    info.emitter_count = static_cast<std::int32_t>(emitters_.Size());      // +0x88 (node count of +0x78)
    info.playing_count = 0;
    for (auto& entry : emitters_) {
        if (static_cast<EmitterObj*>(entry.second)->IsPlaying()) {
            ++info.playing_count;
        }
    }
    info.end_marker = -1;
    emitter_access_.ReleaseReadAccess();
}

}  // namespace vox
