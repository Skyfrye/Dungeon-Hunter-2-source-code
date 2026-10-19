// Element groups: vox::SegmentGroup (base), vox::SequentialGroup, vox::RandomGroup.
// Only the functions whose bodies are recovered are declared here. The
// constructors and the copy constructors take GroupInfos, which is not
// reconstructed yet.
#pragma once

#include <cstdint>
#include <vector>

namespace vox {

// Group definition record the group constructors read (vox::GroupInfos). Only the
// words the constructors use are named; the rest of the record is not reconstructed.
struct GroupInfos {
    std::int32_t unknown_00_ = 0;     // +0x00 (not read by the constructors)
    std::int32_t unknown_04_ = 0;     // +0x04 (not read by the constructors)
    std::int32_t select_mode_ = 0;    // +0x08
    std::int32_t field_0c_ = 0;       // +0x0c (RandomGroup: -1 means no initial value)
    std::int32_t reset_value_ = 0;    // +0x10 (used when the reset flag is 0)
    std::int32_t field_14_ = 0;       // +0x14
};

enum class GroupPeekMode : int {
    kNormal = 0,  // original: mode 0 checks the state words for an empty group
    kOther = 1,
};

// Layout: +0x00 vtable, +0x04 valid, +0x08 select mode, +0x0c..+0x20 six state words.
class SegmentGroup {
public:
    SegmentGroup() = default;
    // C2 0x8818d4, C1 0x881938: the reset flag selects the first state word (0 takes
    // reset_value_, otherwise 1); the state words are then filled from the record.
    SegmentGroup(const GroupInfos* info, int reset_flag);
    // C2 0x88199c, C1 0x881a08: valid is set to true, select mode and the six words are copied.
    SegmentGroup(const SegmentGroup& other);
    virtual ~SegmentGroup();  // 0x881a74 D2, 0x881a78 D1

    int GetSelectMode() const { return select_mode_; }  // 0x881a7c
    bool IsValid() const { return valid_; }             // 0x881a84
    void SetState(const SegmentGroup& other);           // 0x881a8c

protected:
    friend struct SegmentGroupTestAccess;
    bool valid_ = false;                  // +0x04
    int select_mode_ = 0;                 // +0x08
    std::uint32_t words_[6] = {};         // +0x0c, +0x10, +0x14, +0x18, +0x1c, +0x20
};

// +0x24 element vector (begin, end, capacity), +0x30 current index, +0x34 saved index.
// words_[0] (+0xc) and words_[1] (+0x10) are the reset values, words_[2] (+0x14)
// and words_[3] (+0x18) the current state, words_[4] and words_[5] the saved state.
class SequentialGroup : public SegmentGroup {
public:
    // C2 0x881c28, C1 0x881c74: the SegmentGroup constructor, then the vector and both
    // indices cleared.
    SequentialGroup(const GroupInfos* info, int reset_flag);
    // Six-word state record, in the order GetState writes it.
    struct State {
        std::int32_t v[6];  // [0] +0x14, [1] +0x18, [2] +0x30, [3] +0x1c, [4] +0x20, [5] +0x34
    };

    SequentialGroup() = default;
    // C2 0x883ab8, C1 0x8839fc: the SegmentGroup copy, the indices, then the element vector.
    SequentialGroup(const SequentialGroup& other);
    ~SequentialGroup() override;  // 0x882888 D1, 0x8828d0 D2, 0x882c68 deleting variant

    void GetState(State* state) const;                 // 0x881d30
    void SetState(const State* state);                 // 0x881dfc
    void SetState(const SequentialGroup& other);       // 0x881dd8
    int PeekAtNextGroupElement(GroupPeekMode mode) const;  // 0x881d64
    void Reset(int reset_mode);                        // 0x881da0
    void SetToPreviousState();                         // 0x881e30
    void AddElement(int value);                        // 0x88387c
    int GetGroupElementPosition();                     // 0x881cc0 (reconstructed; the empty-vector
                                                       //  case returns -1 where the original faults)

private:
    std::vector<int> elements_;  // +0x24..+0x2c
    int index_ = 0;              // +0x30
    int prev_index_ = 0;         // +0x34
};

// Element record: value (+0x00, the first word read by Peek) and weight (+0x04).
struct RandomGroupElement {
    std::int32_t value_ = 0;   // +0x00
    std::int32_t weight_ = 0;  // +0x04
};

// Ring node of the removed-elements list: next +0x00, prev +0x04, element +0x08.
// The list sentinel is RandomGroup::removed_ (its next and prev sit at +0x30 and +0x34).
struct RandomGroupNode;
// The two link words of a node; the list sentinel RandomGroup::removed_ is only this part (8 bytes at +0x30), the next member of the
// group (element_count_ at +0x38) sits where a node's element word would be.
struct RandomGroupLink {
    RandomGroupNode* next = nullptr;
    RandomGroupNode* prev = nullptr;
};
struct RandomGroupNode : RandomGroupLink {
    RandomGroupElement* element = nullptr;
};

// State record written by RandomGroup::GetState. The last two members hold the addresses of
// the group's element vector (+0x24) and list sentinel (+0x30), as the original stores them.
// SetState(const RandomGroupState*) copies the element pointers from them without allocating, so
// the receiving group shares the source group's element blocks (see random_group_state.cpp).
struct RandomGroupState {
    std::int32_t cycles = 0;                // [0] +0x14
    std::int32_t remaining = 0;             // [1] +0x18
    std::int32_t current = 0;               // [2] +0x44
    std::int32_t total_weight = 0;          // [3] +0x48
    std::int32_t cycle_remaining = 0;       // [4] +0x4c
    std::int32_t saved_cycles = 0;          // [5] +0x1c
    std::int32_t saved_remaining = 0;       // [6] +0x20
    std::int32_t prev_index = 0;            // [7] +0x50
    std::int32_t prev_cycle_remaining = 0;  // [8] +0x54
    const std::vector<RandomGroupElement*>* elements = nullptr;  // [9] +0x24
    const RandomGroupNode* removed = nullptr;                     // [10] +0x30
};

// Layout: SegmentGroup base, +0x24 element vector (begin, end, capacity), +0x30 removed-list
// sentinel (next, prev), +0x38 element count, +0x3c exclusion window, +0x40 raw window
// (GroupInfos field_0c), +0x44 current index, +0x48 total weight, +0x4c cycle remaining,
// +0x50 saved index, +0x54 saved cycle remaining, +0x58 reinsert flag.
class RandomGroup : public SegmentGroup {
public:
    RandomGroup();
    // C2 0x881ad0, C1 0x881b40. The original leaves +0x38, +0x44, +0x50 and +0x54 to the caller's storage.
    RandomGroup(const GroupInfos* info, int reset_flag);
    // C2 0x8832c0, C1 0x88317c: the element records are copied, the removed list is not.
    RandomGroup(const RandomGroup& other);
    ~RandomGroup() override;  // 0x882918 D1, 0x8829fc D2, 0x882c84 deleting variant

    void GetState(RandomGroupState* state) const;     // 0x881bb0
    void SetState(const RandomGroupState* state);     // 0x882f48
    void SetState(const RandomGroup& other);          // 0x8834f0 (partial, see ledger)
    int PeekAtNextGroupElement(GroupPeekMode mode) const;  // 0x881c0c
    int GetActiveElementIndex() const;                // 0x882ca0
    int GetGroupElementPosition();                    // 0x882d94
    int Reset(int reset_mode);                        // 0x883088
    void SetToPreviousState();                        // 0x883404
    void AddElement(RandomGroupElement* element);     // 0x8836b0 (partial, see ledger)

private:
    friend struct RandomGroupTestAccess;
    std::vector<RandomGroupElement*> elements_;  // +0x24..+0x2c
    RandomGroupLink removed_;                    // +0x30 (sentinel), +0x34
    // The sentinel viewed as a node (as the original does: the ring links point at it). Its element word is never read.
    RandomGroupNode& sentinel() { return reinterpret_cast<RandomGroupNode&>(removed_); }
    const RandomGroupNode& sentinel() const { return reinterpret_cast<const RandomGroupNode&>(removed_); }
    std::int32_t element_count_;                 // +0x38 (not written by the two-argument constructor)
    std::int32_t exclusion_window_ = 0;          // +0x3c
    std::int32_t raw_window_ = 0;                // +0x40
    std::int32_t current_;                       // +0x44 (not written by the two-argument constructor)
    std::int32_t total_weight_ = 0;              // +0x48
    std::int32_t cycle_remaining_;               // +0x4c
    std::int32_t prev_index_;                    // +0x50 (not written by the two-argument constructor)
    std::int32_t prev_cycle_remaining_;          // +0x54 (not written by the two-argument constructor)
    bool reinsert_flag_ = false;                 // +0x58
};

}  // namespace vox
