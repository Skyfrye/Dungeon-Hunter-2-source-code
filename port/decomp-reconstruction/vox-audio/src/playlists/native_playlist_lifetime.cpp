// NativePlaylist constructors and destructor. The PlaylistInfos constructor, the copy
// constructor and the destructor are reconstructed: the copy builds group and element
// copies from the source, and the destructor frees both.
#include <new>
#include <vector>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {

// 0x881e4c _ZN3vox14NativePlaylistC2EPNS_13PlaylistInfosE (C1 0x881e9c has the same body)
NativePlaylist::NativePlaylist(const PlaylistInfos* info) {
    valid_ = true;                          // +0x00 = 1
    field_04_ = info->words_[0];            // +0x04
    total_repeats_ = info->words_[1];       // +0x08
    current_group_ = 0;                     // +0x0c
    current_ = 0;                           // +0x10
    field_14_ = info->words_[1];            // +0x14 (remaining repeats)
    previous_group_ = 0;                    // +0x18
    previous_element_ = 0;                  // +0x1c
    saved_repeats_ = info->words_[1];       // +0x20
    // +0x24..+0x38: the group and element vectors start empty (default members).
}

// 0x883cd8 _ZN3vox14NativePlaylistC1ERS0_ (C2 0x884024 has the same body)
// The original copies the scalar words, then each group through the copy constructor of
// its kind (RandomGroup or SequentialGroup, chosen by select mode), then each element into
// a new 0x14-byte block. A failed group allocation or an invalid group copy clears valid
// and stops before the elements. The original leaves a rejected group copy allocated; the
// port destroys and frees it, because nothing else refers to it.
NativePlaylist::NativePlaylist(const NativePlaylist& other)
    : valid_(true),
      field_04_(other.field_04_),
      total_repeats_(other.total_repeats_),
      current_group_(other.current_group_),
      current_(other.current_),
      field_14_(other.field_14_),
      previous_group_(other.previous_group_),
      previous_element_(other.previous_element_),
      saved_repeats_(other.saved_repeats_) {
    for (const SegmentGroup* source : other.groups_) {
        SegmentGroup* copy = nullptr;
        if (source->GetSelectMode() != 0) {
            void* memory = VoxAlloc(sizeof(RandomGroup), kVoxMemHintDefault);
            if (memory != nullptr) {
                copy = new (memory) RandomGroup(*static_cast<const RandomGroup*>(source));
            }
        } else {
            void* memory = VoxAlloc(sizeof(SequentialGroup), kVoxMemHintDefault);
            if (memory != nullptr) {
                copy = new (memory) SequentialGroup(*static_cast<const SequentialGroup*>(source));
            }
        }
        if (copy == nullptr) {
            valid_ = false;
            return;
        }
        if (!copy->IsValid()) {
            copy->~SegmentGroup();
            VoxFree(copy);
            valid_ = false;
            return;
        }
        groups_.push_back(copy);
    }
    for (const PlaylistElement* source : other.elements_) {
        void* memory = VoxAlloc(sizeof(PlaylistElement), kVoxMemHintDefault);
        if (memory == nullptr) {
            valid_ = false;
            return;
        }
        elements_.push_back(new (memory) PlaylistElement(*source));
    }
}

// 0x8825b8 _ZN3vox14NativePlaylistD1Ev (D2 0x88278c has the same body)
// Each group is destroyed (virtual destructor, then VoxFree), then each element block is
// freed, then the vectors (the port's std::vector members) are released.
NativePlaylist::~NativePlaylist() {
    for (SegmentGroup* group : groups_) {
        if (group != nullptr) {
            group->~SegmentGroup();
            VoxFree(group);
        }
    }
    for (PlaylistElement* element : elements_) {
        if (element != nullptr) {
            VoxFree(element);
        }
    }
}

}  // namespace vox
