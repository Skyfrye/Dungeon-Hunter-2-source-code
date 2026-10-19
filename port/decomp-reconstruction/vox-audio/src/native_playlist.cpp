// Native playlists: PlaylistElement, NativePlaylist accessors and the manager's
// constructor, accessors and Init. Functions that call the unported NativePlaylist
// methods are in native_playlist_calls.cpp.
#include "vox-audio/vox/native_playlist.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x881834 _ZN3vox15PlaylistElementC1Ev (C2 0x881810 has the same body)
PlaylistElement::PlaylistElement() {
    Reset();
}

// 0x881884 _ZN3vox15PlaylistElementC1ERS0_ (C2 0x881858 is the same body)
PlaylistElement::PlaylistElement(const PlaylistElement& other)
    : field_00_(other.field_00_),
      field_04_(other.field_04_),
      field_08_(other.field_08_),
      field_0c_(other.field_0c_),
      field_10_(other.field_10_) {}

// 0x8818b0 _ZN3vox15PlaylistElement5ResetEv
void PlaylistElement::Reset() {
    field_10_ = 1;
    field_00_ = -1;
    field_0c_ = 0;
    field_04_ = 0;
    field_08_ = 0;
}

// 0x881eec _ZN3vox14NativePlaylist17GetCurrentElementEv
PlaylistElement* NativePlaylist::GetCurrentElement() const {
    return elements_[static_cast<std::size_t>(current_)];
}

// 0x881efc _ZN3vox14NativePlaylist18GetCurrentPositionEv
int NativePlaylist::GetCurrentPosition() const {
    return current_;
}

// 0x88219c _ZN3vox14NativePlaylist7IsValidEv
bool NativePlaylist::IsValid() const {
    return valid_;
}

// 0x881f40 _ZN3vox14NativePlaylist18GetPlaylistElementEi
PlaylistElement* NativePlaylist::GetPlaylistElement(int index) const {
    const int count = static_cast<int>(elements_.size());
    if (field_14_ != 0 && index >= 0 && index < count) {
        return elements_[static_cast<std::size_t>(index)];
    }
    return nullptr;
}

// 0x882448 _ZN3vox22NativePlaylistsManagerC2Ev (C1 0x882464 has the same body)
NativePlaylistsManager::NativePlaylistsManager() {
    playlists_ = nullptr;
    valid_ = true;
    field_04_ = 0;
    count_ = 0;
}

// 0x882480 _ZN3vox22NativePlaylistsManager14GetNbPlaylistsEv
int NativePlaylistsManager::GetNbPlaylists() const {
    return count_;
}

// 0x8824c0 _ZN3vox22NativePlaylistsManager7IsValidEv
bool NativePlaylistsManager::IsValid() const {
    return valid_;
}

// 0x882548 _ZN3vox22NativePlaylistsManager4InitEi
NativePlaylist** NativePlaylistsManager::Init(int count) {
    playlists_ = static_cast<NativePlaylist**>(
        VoxAlloc(static_cast<std::size_t>(count) * sizeof(NativePlaylist*), kVoxMemHintDefault));
    if (playlists_ == nullptr) {
        valid_ = false;
    }
    return playlists_;
}

}  // namespace vox
