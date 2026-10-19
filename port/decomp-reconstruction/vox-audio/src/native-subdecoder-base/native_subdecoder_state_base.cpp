// vox::NativeSubDecoderState: the base constructor and destructors. The PCM and IMA ADPCM
// variants call these from their own constructors and destructors.
#include <new>

#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_sub_decoder_state.hpp"

namespace vox {

// 0x8860dc _ZN3vox21NativeSubDecoderStateC1EPNS_22NativePlaylistsManagerE
// C2 0x88621c has the same body. The playlist manager is a copy of the argument (the
// original allocates 0x10 bytes and copy-constructs it). The three segment records start
// stopped (chunk -1, state 2, one loop-list entry, decoding slot -1), as SetStopped sets them.
// The non-zero defaults at +0x84..+0x130 and the reset bytes at +0xac, +0xf0 and +0x134 are
// the same words of the three records, so SetStopped covers them.
NativeSubDecoderState::NativeSubDecoderState(NativePlaylistsManager* manager) {
    void* memory = VoxAlloc(sizeof(NativePlaylistsManager));
    if (manager != nullptr) {
        playlists_ = new (memory) NativePlaylistsManager(*manager);
    } else {
        playlists_ = new (memory) NativePlaylistsManager();
    }
    for (SegmentState& segment : segments_) {
        segment.SetStopped();
    }
}

// 0x88547c _ZN3vox21NativeSubDecoderStateD1Ev
// D2 0x8854e8 has the same body. The manager is destroyed and freed.
NativeSubDecoderState::~NativeSubDecoderState() {
    if (playlists_ != nullptr) {
        playlists_->~NativePlaylistsManager();
        VoxFree(playlists_);
        playlists_ = nullptr;
    }
}

// 0x8854cc _ZN3vox21NativeSubDecoderStateD0Ev
// Deleting destructor: compiler-generated for the class above (it calls D1 and then frees
// the object). Not written by hand.

}  // namespace vox
