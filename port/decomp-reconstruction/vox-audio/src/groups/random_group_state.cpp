// vox::RandomGroup state, reset and previous-state members (groups slice).
// words_[2] is the cycle count, words_[3] the remaining count, words_[4] and words_[5] the
// saved pair; words_[0] and words_[1] are the reset values (see groups.hpp).
#include <cstddef>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {
namespace {

RandomGroupNode* AllocRemovedNode(RandomGroupElement* element) {
    auto* node = static_cast<RandomGroupNode*>(VoxAlloc(sizeof(RandomGroupNode)));
    node->next = nullptr;
    node->prev = nullptr;
    node->element = element;
    return node;
}

// Appends node before the sentinel, which is the tail of the ring.
void LinkRemovedAtTail(RandomGroupNode& sentinel, RandomGroupNode* node) {
    RandomGroupNode* tail = sentinel.prev;
    node->next = &sentinel;
    node->prev = tail;
    tail->next = node;
    sentinel.prev = node;
}

void UnlinkRemoved(RandomGroupNode* node) {
    RandomGroupNode* prev = node->prev;
    RandomGroupNode* next = node->next;
    prev->next = next;
    next->prev = prev;
}

void FreeRemovedNodes(RandomGroupNode& sentinel) {
    RandomGroupNode* node = sentinel.next;
    while (node != &sentinel) {
        RandomGroupNode* next = node->next;
        VoxFree(node);
        node = next;
    }
    sentinel.next = &sentinel;
    sentinel.prev = &sentinel;
}

}  // namespace

// 0x881bb0 _ZN3vox11RandomGroup8GetStateEPNS_16RandomGroupStateE
void RandomGroup::GetState(RandomGroupState* state) const {
    state->cycles = static_cast<std::int32_t>(words_[2]);
    state->remaining = static_cast<std::int32_t>(words_[3]);
    state->current = current_;
    state->total_weight = total_weight_;
    state->cycle_remaining = cycle_remaining_;
    state->saved_cycles = static_cast<std::int32_t>(words_[4]);
    state->saved_remaining = static_cast<std::int32_t>(words_[5]);
    state->prev_index = prev_index_;
    state->prev_cycle_remaining = prev_cycle_remaining_;
    state->elements = &elements_;
    state->removed = &sentinel();
}

// 0x882f48 _ZN3vox11RandomGroup8SetStateEPNS_16RandomGroupStateE
// The element vector is replaced by the pointers the state refers to, and the removed list
// by a copy of the nodes it refers to (the original frees the old nodes first).
// Ownership, as in the original: the element blocks are not copied, so this group now shares
// the blocks of the group the state came from, and the blocks this group held before are not
// freed (the original drops them too). The destructor (0x882918) frees every block the group
// refers to, so two live groups that share blocks free each of them twice; the holder of a
// shared state must let go of the blocks first (see tests/random_group_test.cpp). The caller in
// the binary, NativePlaylist::SetState(PlaylistState*) 0x882ae0 from
// NativePlaylistsManager::TransposePlaylistParameters 0x882c0c, has the same exposure.
void RandomGroup::SetState(const RandomGroupState* state) {
    elements_.clear();
    words_[2] = static_cast<std::uint32_t>(state->cycles);
    words_[3] = static_cast<std::uint32_t>(state->remaining);
    current_ = state->current;
    total_weight_ = state->total_weight;
    cycle_remaining_ = state->cycle_remaining;
    words_[4] = static_cast<std::uint32_t>(state->saved_cycles);
    words_[5] = static_cast<std::uint32_t>(state->saved_remaining);
    prev_index_ = state->prev_index;
    prev_cycle_remaining_ = state->prev_cycle_remaining;

    if (state->elements != nullptr) {
        const std::vector<RandomGroupElement*>& source = *state->elements;
        const std::size_t source_size = source.size();
        for (std::size_t i = 0; i < source_size; ++i) {
            elements_.push_back(source[i]);
        }
    }

    FreeRemovedNodes(sentinel());
    if (state->removed != nullptr) {
        for (const RandomGroupNode* node = state->removed->next; node != state->removed; node = node->next) {
            LinkRemovedAtTail(sentinel(), AllocRemovedNode(node->element));
        }
    }
}

// 0x8834f0 _ZN3vox11RandomGroup8SetStateERS0_ (partial)
// Verified against the ARM listing: SegmentGroup::SetState first; the counts are
// (other+0x28 - other+0x24) >> 2 and (this+0x28 - this+0x24) >> 2; the source-longer branch
// (this+0x28) and the source-shorter branch repeat the SAME four instructions, reading the head
// removed node as [this+0x30] and its element at +8, and taking the vector-overflow path
// (capacity == end) or the plain store; the surplus repeat then allocates a 0x0c-byte node with
// its element at +8 set to the last value pushed and links it at the tail ([node] = this+0x30,
// [node+4] = this+0x34, [tail+0] = node, [node->next+4] = node), which the port's
// LinkRemovedAtTail reproduces; then the first source-size element pointers are overwritten and
// the eight scalars +0x40, +0x3c, +0x48, +0x4c, +0x54, +0x44, +0x50, +0x58 are copied. The dead
// list walk at 0x8835a8..0x8835d8 (it counts the removed list twice and discards both counts) is
// dropped. One missing item: when the removed list is empty, [this+0x30] is the sentinel's own
// address, so the original takes the word at sentinel+8 - this+0x38, element_count_ - and pushes
// that 32-bit word as an element pointer (the port pushes null, because the 64-bit port holds no
// element there). The binary has no defined element value on that path.
// Ownership is the same as for SetState(const RandomGroupState*): the pointers of the first
// source-size slots are overwritten with the source's, so the blocks they held are not freed
// and the source's blocks are shared.
void RandomGroup::SetState(const RandomGroup& other) {
    SegmentGroup::SetState(other);

    auto first_removed_element = [this]() -> RandomGroupElement* {
        RandomGroupNode* head = sentinel().next;
        return head == &sentinel() ? nullptr : head->element;
    };

    const std::size_t source_size = other.elements_.size();
    const std::ptrdiff_t difference =
        static_cast<std::ptrdiff_t>(source_size) - static_cast<std::ptrdiff_t>(elements_.size());
    if (difference > 0) {
        for (std::ptrdiff_t k = 0; k < difference; ++k) {
            elements_.push_back(first_removed_element());
        }
    } else if (difference < 0) {
        RandomGroupElement* last = nullptr;
        for (std::ptrdiff_t k = 0; k < -difference; ++k) {
            last = first_removed_element();
            elements_.push_back(last);
        }
        RandomGroupNode* node = AllocRemovedNode(last);
        RandomGroupNode* head = sentinel().next;
        RandomGroupNode* tail = head->prev;
        node->next = head;
        node->prev = tail;
        tail->next = node;
        head->prev = node;
    }
    for (std::size_t i = 0; i < source_size; ++i) {
        elements_[i] = other.elements_[i];
    }

    exclusion_window_ = other.exclusion_window_;
    raw_window_ = other.raw_window_;
    total_weight_ = other.total_weight_;
    cycle_remaining_ = other.cycle_remaining_;
    prev_cycle_remaining_ = other.prev_cycle_remaining_;
    current_ = other.current_;
    prev_index_ = other.prev_index_;
    reinsert_flag_ = other.reinsert_flag_;
}

// 0x883088 _ZN3vox11RandomGroup5ResetEi
// Every removed element goes back to the end of the vector, in list order, and its node is
// freed. The current state moves to the saved fields, the cycle is restarted from the element
// count, and with reset mode 0 the second word pair is restored from the reset values.
int RandomGroup::Reset(int reset_mode) {
    while (sentinel().next != &sentinel()) {
        RandomGroupNode* node = sentinel().next;
        RandomGroupElement* element = node->element;
        total_weight_ += element->weight_;
        elements_.push_back(element);
        UnlinkRemoved(node);
        VoxFree(node);
    }

    const std::int32_t old_current = current_;
    const std::int32_t old_cycles = static_cast<std::int32_t>(words_[2]);
    const std::int32_t old_cycle_remaining = cycle_remaining_;
    cycle_remaining_ = element_count_;
    prev_index_ = old_current;
    words_[2] = words_[0];
    words_[4] = static_cast<std::uint32_t>(old_cycles);
    prev_cycle_remaining_ = old_cycle_remaining;

    const int result = GetActiveElementIndex();
    if (reset_mode == 0) {
        words_[5] = words_[3];
        words_[3] = words_[1];
    }
    current_ = result;
    return result;
}

// 0x883404 _ZN3vox11RandomGroup18SetToPreviousStateEv
// Verified against the ARM listing: the four scalars come back first
// (+0x14 <- +0x1c, +0x18 <- +0x20, +0x44 <- +0x50, +0x4c <- +0x54), then the window test on
// +0x3c (BLE out when it is 0 or less). Inside the window: with the reinsert flag (+0x58) set the
// last element is popped from the vector and its weight subtracted from +0x48; then the tail node
// [this+0x34] gets its element at +8 pushed onto the vector by the capacity-or-overflow pair, its
// element's weight at +4 added to +0x48, the node unlinked (LDM/STR pair) and VoxFree'd; and with
// the flag set a fresh 0x0c-byte node holding the popped element is linked at the tail, which is
// the port's LinkRemovedAtTail.
// Deviation (host): with an empty removed list [this+0x34] is the sentinel's own address, so the
// original reads the word at sentinel+8 - this+0x38, element_count_ - as the element and then
// dereferences it for its weight, faulting at element_count_ + 4; the port reads the sentinel's
// null element slot and faults the same way, so no defined behaviour is lost (the 32-bit count
// word cannot be held in a host pointer slot).
void RandomGroup::SetToPreviousState() {
    words_[2] = words_[4];
    words_[3] = words_[5];
    current_ = prev_index_;
    cycle_remaining_ = prev_cycle_remaining_;

    if (exclusion_window_ > 0) {
        RandomGroupElement* popped = nullptr;
        if (reinsert_flag_) {
            popped = elements_.back();
            elements_.pop_back();
            total_weight_ -= popped->weight_;
        }

        elements_.push_back(sentinel().prev->element);

        RandomGroupNode* tail = sentinel().prev;
        total_weight_ += tail->element->weight_;
        UnlinkRemoved(tail);
        VoxFree(tail);

        if (reinsert_flag_) {
            LinkRemovedAtTail(sentinel(), AllocRemovedNode(popped));
        }
    }
}

}  // namespace vox
