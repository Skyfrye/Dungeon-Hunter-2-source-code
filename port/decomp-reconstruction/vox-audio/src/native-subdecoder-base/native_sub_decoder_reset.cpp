// VoxNativeSubDecoder::Reset. It calls NativePlaylistsManager::ResetPlaylist, which reaches
// NativePlaylist::Reset (not ported), so this object is not linked by the host test.
#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

// 0x88519c _ZN3vox19VoxNativeSubDecoder5ResetEv
void VoxNativeSubDecoder::Reset() {
    // The original always has a manager; a sub-decoder built without one skips the loop.
    const int count = playlists_ != nullptr ? playlists_->GetNbPlaylists() : 0;
    for (int i = 0; i < count; ++i) {
        playlists_->ResetPlaylist(i);
    }
    field_34_ = -1;
    field_38_ = -1;
    field_3c_ = -1;
    field_40_ = -1;
    field_44_ = -1;
    field_48_ = -1;
    reset_pending_ = 1;
    prev_prev_element_.Reset();
    prev_element_.Reset();
    current_element_.Reset();
    field_8c_ = -1;
    field_90_ = -1;
    active_segments_ = 0;
    segments_[0].chunk_index = -1;
    segments_[0].play_mode = 3;
    segments_[0].byte_offset = 0;
    segments_[1].chunk_index = -1;
    segments_[1].play_mode = 2;
    segments_[1].byte_offset = 0;
    segments_[2].chunk_index = -1;
    segments_[2].play_mode = 1;
    segments_[2].byte_offset = 0;
    next_event_ = -1;
    pending_seek_ = 0;
    has_data_ = true;
}

}  // namespace vox
