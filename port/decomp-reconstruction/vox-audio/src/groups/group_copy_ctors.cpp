// Copy constructors of vox::SegmentGroup and vox::SequentialGroup (groups slice).
#include "vox-audio/vox/groups.hpp"

namespace vox {

// 0x88199c _ZN3vox12SegmentGroupC2ERS0_, 0x881a08 _ZN3vox12SegmentGroupC1ERS0_ (same body).
// valid is set to true whatever the source holds; select mode and the six words are copied.
SegmentGroup::SegmentGroup(const SegmentGroup& other) : valid_(true), select_mode_(other.select_mode_) {
    for (int i = 0; i < 6; ++i) {
        words_[i] = other.words_[i];
    }
}

// 0x8839fc _ZN3vox15SequentialGroupC1ERS0_, 0x883ab8 _ZN3vox15SequentialGroupC2ERS0_ (same body).
// The SegmentGroup copy, the two indices, then the element vector copied element by element.
SequentialGroup::SequentialGroup(const SequentialGroup& other)
    : SegmentGroup(other), elements_(other.elements_), index_(other.index_), prev_index_(other.prev_index_) {}

}  // namespace vox
