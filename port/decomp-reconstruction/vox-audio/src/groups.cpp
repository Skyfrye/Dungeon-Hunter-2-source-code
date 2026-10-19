#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x881a74 _ZN3vox12SegmentGroupD2Ev, 0x881a78 _ZN3vox12SegmentGroupD1Ev: empty bodies.
SegmentGroup::~SegmentGroup() = default;

// 0x881a8c _ZN3vox12SegmentGroup8SetStateERS0_
// Copies valid, select mode and the six state words (asm: +0x04, +0x08, +0x0c..+0x20).
void SegmentGroup::SetState(const SegmentGroup& other) {
    valid_ = other.valid_;
    for (int i = 0; i < 6; ++i) {
        words_[i] = other.words_[i];
    }
    select_mode_ = other.select_mode_;
}

// 0x881d30 _ZN3vox15SequentialGroup8GetStateEPNS_20SequentialGroupStateE
void SequentialGroup::GetState(State* state) const {
    state->v[0] = static_cast<std::int32_t>(words_[2]);
    state->v[1] = static_cast<std::int32_t>(words_[3]);
    state->v[2] = index_;
    state->v[3] = static_cast<std::int32_t>(words_[4]);
    state->v[4] = static_cast<std::int32_t>(words_[5]);
    state->v[5] = prev_index_;
}

// 0x881dfc _ZN3vox15SequentialGroup8SetStateEPNS_20SequentialGroupStateE
void SequentialGroup::SetState(const State* state) {
    words_[2] = static_cast<std::uint32_t>(state->v[0]);
    words_[3] = static_cast<std::uint32_t>(state->v[1]);
    index_ = state->v[2];
    words_[4] = static_cast<std::uint32_t>(state->v[3]);
    words_[5] = static_cast<std::uint32_t>(state->v[4]);
    prev_index_ = state->v[5];
}

// 0x881dd8 _ZN3vox15SequentialGroup8SetStateERS0_
void SequentialGroup::SetState(const SequentialGroup& other) {
    SegmentGroup::SetState(other);
    index_ = other.index_;
    prev_index_ = other.prev_index_;
}

// 0x881d64 _ZN3vox15SequentialGroup22PeekAtNextGroupElementENS_13GroupPeekModeE
// Mode kNormal returns -1 when either current state word is 0. Otherwise the
// element at the current index is returned (no bounds check, as the original).
int SequentialGroup::PeekAtNextGroupElement(GroupPeekMode mode) const {
    if (mode == GroupPeekMode::kNormal && (words_[3] == 0 || words_[2] == 0)) {
        return -1;
    }
    return elements_[static_cast<std::size_t>(index_)];
}

// 0x881da0 _ZN3vox15SequentialGroup5ResetEi
// Saves the current state and resets the index. reset_mode 0 also restores the
// second word pair from the reset values, and the saved second word is set to
// the old current value.
void SequentialGroup::Reset(int reset_mode) {
    std::uint32_t old_a = words_[2];
    std::uint32_t old_b = words_[3];
    words_[4] = old_a;
    words_[2] = words_[0];
    prev_index_ = index_;
    index_ = 0;
    if (reset_mode == 0) {
        words_[5] = old_b;
        words_[3] = words_[1];
    }
}

// 0x881e30 _ZN3vox15SequentialGroup18SetToPreviousStateEv
void SequentialGroup::SetToPreviousState() {
    words_[2] = words_[4];
    words_[3] = words_[5];
    index_ = prev_index_;
}

// 0x88387c _ZN3vox15SequentialGroup10AddElementEi
void SequentialGroup::AddElement(int value) { elements_.push_back(value); }

// 0x882888 D1, 0x8828d0 D2, 0x882c68 deleting: the vector is released by its member.
SequentialGroup::~SequentialGroup() = default;

// 0x881c0c _ZN3vox11RandomGroup22PeekAtNextGroupElementENS_13GroupPeekModeE
// Returns the first word of the element at the current index, or -1 when the
// index is negative.
int RandomGroup::PeekAtNextGroupElement(GroupPeekMode mode) const {
    (void)mode;
    if (current_ < 0) {
        return -1;
    }
    return *reinterpret_cast<const int*>(elements_[static_cast<std::size_t>(current_)]);
}

// 0x8836b0 _ZN3vox11RandomGroup10AddElementEPNS_18RandomGroupElementE
// Copies the element (value and weight words) into an 8-byte block owned by the group and appends
// the block to the element vector. The element count (+0x38) goes up by one; when the raw window
// (+0x40) is -1 the exclusion window (+0x3c) goes up too; the total weight (+0x48) gains the weight.
// The original writes through the block without a null check, so a failed allocation stops here.
void RandomGroup::AddElement(RandomGroupElement* element) {
    auto* copy = static_cast<RandomGroupElement*>(VoxAlloc(sizeof(RandomGroupElement)));
    if (copy == nullptr) {
        return;
    }
    copy->value_ = element->value_;
    copy->weight_ = element->weight_;
    elements_.push_back(copy);
    ++element_count_;
    if (raw_window_ == -1) {
        ++exclusion_window_;
    }
    total_weight_ += copy->weight_;
}

}  // namespace vox

namespace vox {

// 0x881cc0 _ZN3vox15SequentialGroup23GetGroupElementPositionEv
// Verified line by line against the ARM listing: +0x18 (words_[3]) is tested first and +0x14
// (words_[2]) second, both returning -1 when zero; the old index (+0x30) is read before the
// advance and the advanced index stored; the element count is (end - begin) >> 2; the wrap branch
// stores words_[4] = cycles, +0x30 = 0 and words_[2] = cycles - 1; then +0x34 = old index,
// +0x18 = remaining - 1 and +0x20 = remaining; the value returned is elements_[old index].
// One host-necessitated deviation: the original indexes the vector through its begin pointer with
// no length test, so with an empty vector it loads from the null begin pointer and faults; the
// port tests elements_.empty() and returns -1 there instead (the state stores the original would
// make before faulting are skipped).
int SequentialGroup::GetGroupElementPosition() {
    std::uint32_t remaining = words_[3];  // +0x18
    std::uint32_t cycles = words_[2];     // +0x14
    if (remaining == 0 || cycles == 0 || elements_.empty()) {
        return -1;
    }
    int index = index_;                   // +0x30, read before the advance
    int next = index + 1;
    index_ = next;
    int count = static_cast<int>(elements_.size());
    if (count <= next) {
        words_[4] = cycles;               // +0x1c: saved cycle count
        index_ = 0;
        words_[2] = cycles - 1;           // +0x14: one cycle used up
    }
    prev_index_ = index;                  // +0x34
    words_[3] = remaining - 1;            // +0x18
    words_[5] = remaining;                // +0x20: saved remaining count
    return elements_[static_cast<std::size_t>(index)];
}

}  // namespace vox

namespace vox {

// 0x8818d4 _ZN3vox12SegmentGroupC2EPNS_10GroupInfosEi (C1 0x881938 has the same body)
SegmentGroup::SegmentGroup(const GroupInfos* info, int reset_flag) {
    valid_ = true;
    select_mode_ = info->select_mode_;
    const std::uint32_t first = reset_flag == 0 ? static_cast<std::uint32_t>(info->reset_value_) : 1u;
    const std::uint32_t reset = static_cast<std::uint32_t>(info->field_14_);
    words_[0] = first;
    words_[1] = reset;
    words_[2] = first;
    words_[3] = reset;
    words_[4] = first;
    words_[5] = reset;
}

// 0x881c28 _ZN3vox15SequentialGroupC2EPNS_10GroupInfosEi (C1 0x881c74 has the same body)
SequentialGroup::SequentialGroup(const GroupInfos* info, int reset_flag) : SegmentGroup(info, reset_flag) {
    index_ = 0;
    prev_index_ = 0;
}

}  // namespace vox
