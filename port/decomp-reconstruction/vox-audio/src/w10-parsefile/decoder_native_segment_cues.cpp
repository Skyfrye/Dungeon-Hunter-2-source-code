// vox::DecoderNativeCursor::SetImplicitSegmentCues (0x872cf0). For each segment, appends
// the implicit cue values. The value is word 2 of the segment's 24-byte info record
// (NativeChunk frame_count, +0x08), minus one. The append count follows the size the cue
// list had on entry, as the original's control flow does:
//   size 1: push 0, then the implicit value twice;
//   size 0 or 2: the implicit value twice;
//   size 3 or more: the implicit value once.
// The two-push path is the one the decompiled goto structure gives (LABEL_7 then LABEL_3);
// the ARM size compares (==1, <=2) match it.
#include <cstddef>
#include <cstdint>
#include <vector>

#include "vox-audio/vox/decoder_native.hpp"

namespace vox {

void DecoderNativeCursor::SetImplicitSegmentCues() {
    auto* native = static_cast<DecoderNative*>(decoder_);
    for (std::size_t index = 0; index < native->segments_.size(); ++index) {
        const std::int32_t implicit = native->segments_[index].frame_count - 1;
        vox::VoxVector<int>& cues = native->segment_cues_[index];
        const std::size_t before = cues.size();
        if (before == 1) {
            cues.push_back(0);
        }
        if (before <= 2) {
            cues.push_back(implicit);
        }
        cues.push_back(implicit);
    }
}

}  // namespace vox
