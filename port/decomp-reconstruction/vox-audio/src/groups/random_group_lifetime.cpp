// vox::RandomGroup constructors and destructor (groups slice).
#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// The removed-elements list is a ring whose sentinel is sentinel(). The sentinel must point
// at itself before the list is used, so every constructor below does that.

// Default constructor: the port only. The original has no such constructor; it exists so the
// sentinel is never left with null pointers.
RandomGroup::RandomGroup() {
    sentinel().next = &sentinel();
    sentinel().prev = &sentinel();
    element_count_ = 0;
    current_ = -1;
    cycle_remaining_ = 0;
    prev_index_ = 0;
    prev_cycle_remaining_ = 0;
}

// 0x881ad0 _ZN3vox11RandomGroupC2EPNS_10GroupInfosEi, 0x881b40 _ZN3vox11RandomGroupC1EPNS_10GroupInfosEi
// The original writes the sentinel, the vector words (+0x24..+0x2c), +0x30/+0x34, +0x3c, +0x40,
// +0x48 and +0x58. It never writes +0x38 (element count), +0x44 (current), +0x4c, +0x50 or +0x54.
// The caller, NativePlaylist::AddGroup (0x883c04), gets the 0x5c bytes from VoxAlloc without
// zeroing them, so those words hold whatever the storage held. The port matches: the header
// has no initializer for them and this body does not set them.
RandomGroup::RandomGroup(const GroupInfos* info, int reset_flag) : SegmentGroup(info, reset_flag) {
    sentinel().next = &sentinel();
    sentinel().prev = &sentinel();
    const std::int32_t window = info->field_0c_;  // +0x0c of the record
    exclusion_window_ = window != -1 ? window : 0;
    raw_window_ = window;
    total_weight_ = 0;
    reinsert_flag_ = false;
}

// 0x8832c0 _ZN3vox11RandomGroupC2ERS0_, 0x88317c _ZN3vox11RandomGroupC1ERS0_ (same body).
// Each element is copied into a new 8-byte record (value and weight). The removed list is
// not copied. The element count is counted up from 0 while the elements are copied; the
// original does not zero +0x38 first, so the port's 0 is an assumption (see the ledger).
RandomGroup::RandomGroup(const RandomGroup& other) : SegmentGroup(other) {
    sentinel().next = &sentinel();
    sentinel().prev = &sentinel();
    element_count_ = 0;
    for (RandomGroupElement* source : other.elements_) {
        auto* copy = static_cast<RandomGroupElement*>(VoxAlloc(sizeof(RandomGroupElement)));
        copy->value_ = source->value_;
        copy->weight_ = source->weight_;
        elements_.push_back(copy);
        ++element_count_;
    }
    exclusion_window_ = other.exclusion_window_;
    raw_window_ = other.raw_window_;
    total_weight_ = other.total_weight_;
    cycle_remaining_ = element_count_;
    prev_cycle_remaining_ = element_count_;
    current_ = GetActiveElementIndex();
    prev_index_ = -1;
    reinsert_flag_ = other.reinsert_flag_;
}

// 0x882918 _ZN3vox11RandomGroupD1Ev, 0x8829fc _ZN3vox11RandomGroupD2Ev (same body).
// 0x882c84 _ZN3vox11RandomGroupD0Ev is the compiler's deleting variant: it calls this body
// and frees the object, so it is not written out here.
// The original frees every element record, first the ones in the vector and then the ones on
// the removed list, then the list nodes. It does not know whether another group shares a
// record (SetState from a state or from another group copies pointers), so a record shared by
// two groups that are both destroyed is freed twice, in the binary as here. The vector's own buffer is released by its member
// destructor here; the original calls VoxFree on it explicitly.
RandomGroup::~RandomGroup() {
    for (RandomGroupElement* element : elements_) {
        if (element != nullptr) {
            VoxFree(element);
        }
    }
    for (RandomGroupNode* node = sentinel().next; node != &sentinel(); node = node->next) {
        if (node->element != nullptr) {
            VoxFree(node->element);
        }
    }
    RandomGroupNode* node = sentinel().next;
    while (node != &sentinel()) {
        RandomGroupNode* next = node->next;
        VoxFree(node);
        node = next;
    }
    sentinel().next = &sentinel();
    sentinel().prev = &sentinel();
}

}  // namespace vox
