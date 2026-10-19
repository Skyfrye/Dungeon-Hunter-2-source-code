// NativePlaylist state functions: GetState, Reset, SetToPreviousState and the SetState
// overloads. Each group call goes through the group dispatch helpers in
// native_playlist_walk.cpp (the select mode picks the group's kind).
#include <stdexcept>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {

// 0x881f04 _ZN3vox14NativePlaylist8GetStateEPNS_13PlaylistStateE
// The original returns this in r0; callers do not use it, so it is void here.
void NativePlaylist::GetState(PlaylistState* state) const {
    state->group_index = current_group_;          // +0x0c
    state->element_index = current_;              // +0x10
    state->remaining_repeats = field_14_;         // +0x14
    state->previous_group = previous_group_;      // +0x18
    state->previous_element = previous_element_;  // +0x1c
    state->saved_repeats = saved_repeats_;        // +0x20
    state->groups = &groups_;                     // +0x24 (pointer to the group vector)
}

// 0x8822e8 _ZN3vox14NativePlaylist5ResetEv
// Saves the current indices and repeats, restarts at group 0 with the full repeat count,
// then calls Reset(1) on each group (the original passes 1: the ARM listing sets r1 to 1
// before each group call).
void NativePlaylist::Reset() {
    previous_group_ = current_group_;     // +0x18 = +0x0c
    previous_element_ = current_;         // +0x1c = +0x10
    saved_repeats_ = total_repeats_;      // +0x20 = +0x08
    current_group_ = 0;                   // +0x0c
    current_ = 0;                         // +0x10
    field_14_ = total_repeats_;           // +0x14 = +0x08
    for (SegmentGroup* group : groups_) {
        GroupReset(group, 1);
    }
}

// 0x882360 _ZN3vox14NativePlaylist8SetStateERS0_
// Copies the nine words from +0x00 to +0x20, then calls the base SetState (slot +0x14) on
// each group with the matching group of other. The original's GetSelectMode call inside
// the loop has no effect and is left out.
void NativePlaylist::SetState(const NativePlaylist& other) {
    valid_ = other.valid_;                        // +0x00
    field_04_ = other.field_04_;                  // +0x04
    total_repeats_ = other.total_repeats_;        // +0x08
    current_group_ = other.current_group_;        // +0x0c
    current_ = other.current_;                    // +0x10
    field_14_ = other.field_14_;                  // +0x14
    previous_group_ = other.previous_group_;      // +0x18
    previous_element_ = other.previous_element_;  // +0x1c
    saved_repeats_ = other.saved_repeats_;        // +0x20
    for (std::size_t i = 0; i < groups_.size(); ++i) {
        groups_[i]->SegmentGroup::SetState(*other.groups_[i]);
    }
}

// 0x882ae0 _ZN3vox14NativePlaylist8SetStateEPNS_13PlaylistStateE
// Copies the six state words, then for each group of this playlist copies the state of the
// group at the same index in state->groups. The source group's kind (select mode) picks the
// record type: SequentialGroup::State for select mode 0 and RandomGroupState otherwise, as
// the original's slot +0x1c and +0x24 calls do. A short state vector throws out_of_range,
// as the original's vector bounds check does.
void NativePlaylist::SetState(const PlaylistState* state) {
    current_group_ = state->group_index;          // +0x0c
    current_ = state->element_index;              // +0x10
    field_14_ = state->remaining_repeats;         // +0x14
    previous_group_ = state->previous_group;      // +0x18
    previous_element_ = state->previous_element;  // +0x1c
    saved_repeats_ = state->saved_repeats;        // +0x20
    for (std::size_t i = 0; i < groups_.size(); ++i) {
        SegmentGroup* source = state->groups->at(i);
        if (source->GetSelectMode() == 0) {
            SequentialGroup::State record;
            static_cast<const SequentialGroup*>(source)->GetState(&record);
            static_cast<SequentialGroup*>(groups_[i])->SetState(&record);
        } else {
            RandomGroupState record;
            static_cast<const RandomGroup*>(source)->GetState(&record);
            static_cast<RandomGroup*>(groups_[i])->SetState(&record);
        }
    }
}

// 0x88240c _ZN3vox14NativePlaylist18SetToPreviousStateEv
// Calls SetToPreviousState (slot +0x18) on the group at previous_group_, then restores the
// current group, element and repeats from the saved words.
void NativePlaylist::SetToPreviousState() {
    GroupSetToPreviousState(groups_[static_cast<std::size_t>(previous_group_)]);
    current_group_ = previous_group_;     // +0x0c = +0x18
    current_ = previous_element_;         // +0x10 = +0x1c
    field_14_ = saved_repeats_;           // +0x14 = +0x20
}

}  // namespace vox
