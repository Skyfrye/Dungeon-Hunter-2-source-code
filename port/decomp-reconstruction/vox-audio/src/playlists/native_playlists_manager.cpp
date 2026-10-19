// NativePlaylistsManager functions: AddPlaylist, the copy constructor, the destructor, the
// forwarding functions and the state copies. Each forwards to the NativePlaylist function
// of the same name.
#include <cstddef>
#include <new>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {

// 0x883eac _ZN3vox22NativePlaylistsManagerC1ERS0_ (C2 0x883f68 has the same body)
// Copies the flag and field_04, then one playlist per source playlist with the NativePlaylist
// copy constructor. A failed allocation, or a playlist copy that is not valid, clears the flag
// and stops; the count is the number of playlists copied so far.
NativePlaylistsManager::NativePlaylistsManager(const NativePlaylistsManager& other)
    : valid_(true), field_04_(other.field_04_), count_(0), playlists_(nullptr) {
    playlists_ = static_cast<NativePlaylist**>(
        VoxAlloc(sizeof(NativePlaylist*) * static_cast<std::size_t>(other.count_), kVoxMemHintDefault));
    if (playlists_ == nullptr) {
        valid_ = false;
        return;
    }
    for (int i = 0; i < other.count_; ++i) {
        void* memory = VoxAlloc(sizeof(NativePlaylist), kVoxMemHintDefault);
        NativePlaylist* copy = nullptr;
        if (memory != nullptr) {
            copy = new (memory) NativePlaylist(*other.playlists_[i]);
        }
        playlists_[i] = copy;
        if (copy == nullptr) {
            valid_ = false;
            return;
        }
        ++count_;
        if (!copy->IsValid()) {
            valid_ = false;
            return;
        }
    }
}

// 0x8826b4 _ZN3vox22NativePlaylistsManagerD1Ev (D2 0x882720 has the same body)
// Each playlist is destroyed and freed, then the pointer array is freed, as the original does.
NativePlaylistsManager::~NativePlaylistsManager() {
    if (playlists_ == nullptr) {
        return;
    }
    for (int i = 0; i < count_; ++i) {
        NativePlaylist* playlist = playlists_[i];
        if (playlist != nullptr) {
            playlist->~NativePlaylist();
            VoxFree(playlist);
        }
    }
    VoxFree(playlists_);
    playlists_ = nullptr;
}

// 0x882488 _ZN3vox22NativePlaylistsManager18GetPlaylistElementEiii
// Mode 0 walks the playlist, mode 1 returns its current element, mode 2 the element at
// argument. Any other mode returns nullptr, as the original's switch falls through to 0.
PlaylistElement* NativePlaylistsManager::GetPlaylistElement(int index, int mode, int argument) {
    NativePlaylist* playlist = playlists_[index];
    switch (mode) {
        case 0:
            return playlist->GetPlaylistElement();
        case 1:
            return playlist->GetCurrentElement();
        case 2:
            return playlist->GetPlaylistElement(argument);
        default:
            return nullptr;
    }
}

// 0x8824f4 _ZN3vox22NativePlaylistsManager8SetStateERS0_
// Copies the flag and field_04, then calls NativePlaylist::SetState on each playlist.
void NativePlaylistsManager::SetState(const NativePlaylistsManager& other) {
    valid_ = other.valid_;
    field_04_ = other.field_04_;
    for (int i = 0; i < count_; ++i) {
        playlists_[i]->SetState(*other.playlists_[i]);
    }
}

// 0x882568 _ZN3vox22NativePlaylistsManager11AddPlaylistEiPNS_13PlaylistInfosE
// The original allocates 0x3c bytes and builds the playlist in place. A failed allocation
// clears the flag and leaves the count alone. The port builds the playlist only when the
// allocation succeeds (the original would construct into a null block, which is undefined).
void NativePlaylistsManager::AddPlaylist(int index, const PlaylistInfos* info) {
    NativePlaylist* playlist = nullptr;
    void* memory = VoxAlloc(sizeof(NativePlaylist), kVoxMemHintDefault);
    if (memory != nullptr) {
        playlist = new (memory) NativePlaylist(info);
    }
    playlists_[index] = playlist;
    if (playlist != nullptr) {
        ++count_;
    } else {
        valid_ = false;
    }
}

// 0x8839c8 _ZN3vox22NativePlaylistsManager18AddPlaylistElementEPNS_20PlaylistElementInfosE
// Forwards to the playlist at info->words_[0] and takes its validity.
void NativePlaylistsManager::AddPlaylistElement(const PlaylistElementInfos* info) {
    NativePlaylist* playlist = playlists_[info->words_[0]];
    playlist->AddPlaylistElement(info);
    valid_ = playlist->IsValid();
}

// 0x883ca4 _ZN3vox22NativePlaylistsManager8AddGroupEPNS_10GroupInfosE
// Forwards to the playlist at info->unknown_00_ (GroupInfos word 0, read here as the index)
// and takes its validity.
void NativePlaylistsManager::AddGroup(const GroupInfos* info) {
    NativePlaylist* playlist = playlists_[info->unknown_00_];
    playlist->AddGroup(info);
    valid_ = playlist->IsValid();
}

// 0x882c0c _ZN3vox22NativePlaylistsManager27TransposePlaylistParametersEii
// Copies the state of playlist from into playlist to. Nothing happens when the indices match.
void NativePlaylistsManager::TransposePlaylistParameters(int from, int to) {
    if (from == to) {
        return;
    }
    PlaylistState state;
    playlists_[from]->GetState(&state);
    playlists_[to]->SetState(&state);
}

}  // namespace vox
