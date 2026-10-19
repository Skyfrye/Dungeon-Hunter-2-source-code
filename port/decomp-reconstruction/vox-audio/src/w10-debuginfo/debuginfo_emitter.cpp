// vox::EmitterObj::GetDebugInfo: one DebugChunk_emitter filled under the Handlable mutex.
//
// Reconstructed against the 0x866818 listing: Lock; the emitter id (this +0x08) to +0x00, the data
// object id (this +0x118 -> +0x08) to +0x08, state_set_ (+0x94) to +0x1c, source_gain_ (+0x38) to
// +0x20, (gain_modifier_ +0x44 * resume_fade_.target +0x60) * gain_fade_.target +0x4c to +0x24,
// source_pitch_ (+0x70) to +0x28, pitch_ (+0x74) to +0x2c, loop_read_ (+0x8c) to +0x30, group_
// (+0x28) to +0x38, ref_count (+0x10) to +0x34, position (+0x9c), velocity (+0xb4) and direction
// (+0xa8) to +0x10..+0x18, +0x3c..+0x44 and +0x48..+0x50, param0_ (+0xc0) to +0x54, float_params_
// (+0xc4..+0xdc) to +0x58..+0x70; then the cursor's channel count (cursor +0x04) above 1 overwrites
// param0 with -1; every path returns the Mutex::Unlock int.
// Deviation (host-necessitated): the listing reads the data object id through this +0x118 and the
// cursor channel count through this +0x114 with no null check (a loading emitter has neither before
// LoadAsync, and the listing faults); the port writes data id 0 with no data object and skips the
// -1 override with no cursor.
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/emitter_obj.hpp"

#include "vox-audio/vox/data_obj.hpp"

namespace vox {

// 0x866818 _ZN3vox10EmitterObj12GetDebugInfoERNS_18DebugChunk_emitterE
int EmitterObj::GetDebugInfo(DebugChunk_emitter& out) {
    mutex.Lock();
    out.emitter_id = id;                                                // +0x08 -> +0x00
    out.data_id = data_ != nullptr ? data_->id : 0;                    // DataObj +0x08 -> +0x08
    out.position = position_;                                           // +0x9c..+0xa4 -> +0x10..+0x18
    out.state = state_set_;                                             // +0x94 -> +0x1c
    out.source_gain = source_gain_;                                     // +0x38 -> +0x20
    // The pseudocode multiplies the gain modifier by the resume fade target, then by the gain fade target.
    out.gain = (gain_modifier_ * resume_fade_.target) * gain_fade_.target;  // +0x44, +0x60, +0x4c -> +0x24
    out.source_pitch = source_pitch_;                                   // +0x70 -> +0x28
    out.pitch = pitch_;                                                 // +0x74 -> +0x2c
    out.loop = loop_read_;                                              // +0x8c -> +0x30
    out.ref_count = ref_count;                                          // +0x10 -> +0x34
    out.group = group_;                                                 // +0x28 -> +0x38
    out.velocity = velocity_;                                           // +0xb4..+0xbc -> +0x3c..+0x44
    out.direction = direction_;                                         // +0xa8..+0xb0 -> +0x48..+0x50
    out.param0 = param0_;                                               // +0xc0 -> +0x54
    if (decoder_cursor_ != nullptr && decoder_cursor_->GetTrackParams().channels > 1) {
        out.param0 = -1;                                                // cursor +0x04 > 1 -> +0x54
    }
    for (int i = 0; i < 7; ++i) {
        out.params[i] = float_params_[i];                               // +0xc4..+0xdc -> +0x58..+0x70
    }
    return mutex.Unlock();
}

}  // namespace vox
