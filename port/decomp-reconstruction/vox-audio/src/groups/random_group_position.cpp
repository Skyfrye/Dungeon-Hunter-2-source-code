// vox::RandomGroup element selection (groups slice).
#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/random48.hpp"

namespace vox {
namespace {

// The ARM remainder helper returns 0 for a zero divisor under the default handler.
std::int32_t RemOrZero(std::int32_t a, std::int32_t b) { return b == 0 ? 0 : a % b; }

RandomGroupNode* AllocRemovedNode(RandomGroupElement* element) {
    auto* node = static_cast<RandomGroupNode*>(VoxAlloc(sizeof(RandomGroupNode)));
    node->next = nullptr;
    node->prev = nullptr;
    node->element = element;
    return node;
}

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

std::int32_t CountRemoved(const RandomGroupNode& sentinel) {
    std::int32_t count = 0;
    for (const RandomGroupNode* node = sentinel.next; node != &sentinel; node = node->next) {
        ++count;
    }
    return count;
}

}  // namespace

// 0x882ca0 _ZN3vox11RandomGroup21GetActiveElementIndexEv
// Picks an index with probability proportional to the element weights: a roll in
// [0, total weight) from lrand48, then the first element whose running weight total passes it.
// Returns the element count when no element passes (the original's loop exit).
int RandomGroup::GetActiveElementIndex() const {
    const int count = static_cast<int>(elements_.size());
    if (count <= 0) {
        return -1;
    }
    const std::int32_t roll = RemOrZero(Lrand48(), total_weight_);
    std::int32_t accumulated = 0;
    int result = 0;
    for (result = 0; result != count; ++result) {
        accumulated += elements_[static_cast<std::size_t>(result)]->weight_;
        if (roll < accumulated) {
            break;
        }
    }
    return result;
}

// 0x882d94 _ZN3vox11RandomGroup23GetGroupElementPositionEv
// Returns the value of the current element and moves to the next one. With a non-zero
// exclusion window, the element is moved to the removed list (and the element that has been
// removed longest comes back when the list is longer than the window). The cycle and remaining
// counts advance as in SequentialGroup. Unlike SequentialGroup, an empty element vector is not
// checked when the current index is valid, as in the original.
int RandomGroup::GetGroupElementPosition() {
    const std::int32_t remaining = static_cast<std::int32_t>(words_[3]);
    if (remaining == 0) {
        return -1;
    }
    if (words_[2] == 0) {
        return -1;
    }
    const std::int32_t current = current_;
    if (current < 0) {
        return -1;
    }
    RandomGroupElement* chosen = elements_[static_cast<std::size_t>(current)];
    const int value = chosen->value_;

    if (exclusion_window_ > 0) {
        LinkRemovedAtTail(sentinel(), AllocRemovedNode(chosen));
        total_weight_ -= chosen->weight_;
        elements_[static_cast<std::size_t>(current)] = elements_.back();
        elements_.pop_back();

        const std::int32_t removed_count = CountRemoved(sentinel());
        if (exclusion_window_ < removed_count) {
            RandomGroupNode* head = sentinel().next;
            elements_.push_back(head->element);
            total_weight_ += head->element->weight_;
            UnlinkRemoved(head);
            VoxFree(head);
            reinsert_flag_ = true;
        } else {
            reinsert_flag_ = false;
        }
    }

    const std::int32_t cycle_remaining = cycle_remaining_;
    words_[3] = static_cast<std::uint32_t>(remaining - 1);
    words_[5] = static_cast<std::uint32_t>(remaining);
    const std::int32_t cycles = static_cast<std::int32_t>(words_[2]);
    cycle_remaining_ = cycle_remaining - 1;
    prev_cycle_remaining_ = cycle_remaining;
    if (cycle_remaining == 1) {
        words_[2] = static_cast<std::uint32_t>(cycles - 1);
        words_[4] = static_cast<std::uint32_t>(cycles);
    }
    prev_index_ = current;
    current_ = GetActiveElementIndex();
    return value;
}

}  // namespace vox
