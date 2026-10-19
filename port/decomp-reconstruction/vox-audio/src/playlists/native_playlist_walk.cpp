// NativePlaylist walk and build functions: GetPlaylistElement and PeekAtNextElement walk the
// groups, AddPlaylistElement and AddGroup build them. The group dispatch helpers at the end
// reach the group functions the original calls through its vtable slots.
#include <cstddef>
#include <new>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {

// 0x881f78 _ZN3vox14NativePlaylist18GetPlaylistElementEv
// Returns the element at the next position of the walk, or nullptr. The walk asks the
// current group for its next position (slot +0x08). When the reset flag (field_04_) is set,
// it tries every group before giving up; when the groups run out, the repeat count drops by
// one and every group is reset (Reset(1), slot +0x10). When the repeats are gone it returns
// nullptr. Without the flag it moves to the next group instead of trying them all.
PlaylistElement* NativePlaylist::GetPlaylistElement() {
    const int count = static_cast<int>(groups_.size());
    if (field_14_ == 0) {
        return nullptr;
    }
    int position = -1;
    if (field_04_ != 0) {
        int visited = 0;
        while (visited < count && position == -1) {
            ++visited;
            position = GroupElementPosition(groups_[static_cast<std::size_t>(current_group_)]);
            if (visited == count && position == -1) {
                saved_repeats_ = field_14_;
                --field_14_;
                for (SegmentGroup* group : groups_) {
                    GroupReset(group, 1);
                }
                previous_group_ = 0;
                current_group_ = count > 1 ? 1 : 0;
                position = field_14_ != 0 ? GroupElementPosition(groups_[0]) : -1;
            } else {
                previous_group_ = current_group_;
                current_group_ = (current_group_ + 1 < count) ? current_group_ + 1 : 0;
            }
        }
    } else {
        if (count == 0) {
            return nullptr;  // the original reads group 0 without a count check
        }
        position = GroupElementPosition(groups_[static_cast<std::size_t>(current_group_)]);
        if (position == -1) {
            previous_group_ = current_group_;
            ++current_group_;
            if (current_group_ < count) {
                if (field_14_ == 0) {
                    return nullptr;
                }
                position = GroupElementPosition(groups_[static_cast<std::size_t>(current_group_)]);
            } else {
                saved_repeats_ = field_14_;
                --field_14_;
                current_group_ = 0;
                for (SegmentGroup* group : groups_) {
                    GroupReset(group, 1);
                }
                if (field_14_ == 0) {
                    return nullptr;
                }
                position = GroupElementPosition(groups_[0]);
            }
        }
    }
    if (position < 0) {
        return nullptr;
    }
    previous_element_ = current_;
    current_ = position;
    return elements_[static_cast<std::size_t>(position)];
}

// 0x8821a4 _ZN3vox14NativePlaylist17PeekAtNextElementEv
// The same walk as GetPlaylistElement, read-only: the state words are not changed. The
// peek mode is 0 for the first probe of each group and 1 for the probe at the next group
// (the original passes 1 there too). Returns nullptr when nothing is left.
PlaylistElement* NativePlaylist::PeekAtNextElement() {
    const int count = static_cast<int>(groups_.size());
    int remaining = field_14_;
    if (remaining == 0) {
        return nullptr;
    }
    int group_index = current_group_;
    int position = -1;
    if (field_04_ != 0) {
        int visited = 0;
        while (visited < count && position == -1) {
            ++visited;
            position = GroupPeekNext(groups_[static_cast<std::size_t>(group_index)], 0);
            ++group_index;
            if (visited == count && position == -1) {
                --remaining;
                group_index = 1;
                position = remaining != 0 ? GroupPeekNext(groups_[0], 0) : -1;
            }
            if (count <= group_index) {
                group_index = 0;
            }
        }
    } else {
        if (count == 0) {
            return nullptr;  // the original reads group 0 without a count check
        }
        position = GroupPeekNext(groups_[static_cast<std::size_t>(group_index)], 0);
        if (position == -1) {
            int next = group_index + 1;
            if (next >= count) {
                if (remaining == 1) {
                    return nullptr;
                }
                next = 0;
            }
            position = GroupPeekNext(groups_[static_cast<std::size_t>(next)], 1);
        }
    }
    if (position < 0) {
        return nullptr;
    }
    return elements_[static_cast<std::size_t>(position)];
}

// 0x8838c4 _ZN3vox14NativePlaylist18AddPlaylistElementEPNS_20PlaylistElementInfosE
// Builds a PlaylistElement from words 3 to 6 (words 0 and 1 are not stored in it), appends it
// to the element vector, then adds the element to the group at words_[2]: a RandomGroup
// element (value words_[1], weight words_[7]) for a nonzero select mode, otherwise the
// sequential value words_[1]. A failed allocation of the element clears valid and adds nothing.
// The random record is a stack value: the original passes its address and AddElement copies it.
void NativePlaylist::AddPlaylistElement(const PlaylistElementInfos* info) {
    void* memory = VoxAlloc(sizeof(PlaylistElement), kVoxMemHintDefault);
    if (memory == nullptr) {
        valid_ = false;
        return;
    }
    PlaylistElement* element = new (memory) PlaylistElement();
    element->field_00_ = info->words_[3];
    element->field_08_ = info->words_[4];
    element->field_0c_ = info->words_[5];
    element->field_10_ = info->words_[6];
    elements_.push_back(element);

    SegmentGroup* group = groups_[static_cast<std::size_t>(info->words_[2])];
    if (group->GetSelectMode() != 0) {
        RandomGroupElement record;
        record.value_ = info->words_[1];
        record.weight_ = info->words_[7];
        static_cast<RandomGroup*>(group)->AddElement(&record);
    } else {
        static_cast<SequentialGroup*>(group)->AddElement(info->words_[1]);
    }
    if (!group->IsValid()) {
        valid_ = false;
    }
}

// 0x883c04 _ZN3vox14NativePlaylist8AddGroupEPNS_10GroupInfosE
// Builds a RandomGroup (0x5c bytes in the original, select mode nonzero) or a SequentialGroup
// (0x38 bytes) from info with this playlist's reset flag (field_04_), and appends it. A
// failed allocation clears valid.
void NativePlaylist::AddGroup(const GroupInfos* info) {
    SegmentGroup* group = nullptr;
    if (info->select_mode_ != 0) {
        void* memory = VoxAlloc(sizeof(RandomGroup), kVoxMemHintDefault);
        if (memory != nullptr) {
            group = new (memory) RandomGroup(info, field_04_);
        }
    } else {
        void* memory = VoxAlloc(sizeof(SequentialGroup), kVoxMemHintDefault);
        if (memory != nullptr) {
            group = new (memory) SequentialGroup(info, field_04_);
        }
    }
    if (group == nullptr) {
        valid_ = false;
        return;
    }
    groups_.push_back(group);
}

// Group dispatch. The select mode gives the group's kind, as AddGroup builds it.
int NativePlaylist::GroupElementPosition(SegmentGroup* group) {
    if (group->GetSelectMode() == 0) {
        return static_cast<SequentialGroup*>(group)->GetGroupElementPosition();
    }
    return static_cast<RandomGroup*>(group)->GetGroupElementPosition();
}

int NativePlaylist::GroupPeekNext(const SegmentGroup* group, int mode) {
    const GroupPeekMode peek = static_cast<GroupPeekMode>(mode);
    if (group->GetSelectMode() == 0) {
        return static_cast<const SequentialGroup*>(group)->PeekAtNextGroupElement(peek);
    }
    return static_cast<const RandomGroup*>(group)->PeekAtNextGroupElement(peek);
}

void NativePlaylist::GroupReset(SegmentGroup* group, int reset_mode) {
    if (group->GetSelectMode() == 0) {
        static_cast<SequentialGroup*>(group)->Reset(reset_mode);
    } else {
        static_cast<RandomGroup*>(group)->Reset(reset_mode);
    }
}

void NativePlaylist::GroupSetToPreviousState(SegmentGroup* group) {
    if (group->GetSelectMode() == 0) {
        static_cast<SequentialGroup*>(group)->SetToPreviousState();
    } else {
        static_cast<RandomGroup*>(group)->SetToPreviousState();
    }
}

}  // namespace vox
