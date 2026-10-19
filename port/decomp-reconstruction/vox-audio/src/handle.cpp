#include "vox-audio/vox/handle.hpp"

namespace vox {

// 0x3691e4 _ZN3vox6HandleD1Ev: no body in the original.
// 0x3694a0 _ZN3vox6HandleD0Ev: deleting variant, the original frees with CustomFree.
// The port's default destructor is empty and the deleting variant is the
// compiler's, so both are covered by this definition.
Handle::~Handle() = default;

// 0x3691fc _ZNK3vox6Handle12GetTimeStampERjS1_
void Handle::GetTimeStamp(std::uint32_t& first, std::uint32_t& second) const {
    first = stamp_[0];
    second = stamp_[1];
}

// 0x369210 _ZN3vox6Handle12SetTimeStampEjj
void Handle::SetTimeStamp(std::uint32_t first, std::uint32_t second) {
    stamp_[0] = first;
    stamp_[1] = second;
}

// 0x863110 _ZNK3vox6HandleeqERKS0_
// Equality is on the id alone. The original compares the two 32-bit halves.
bool Handle::operator==(const Handle& other) const { return id_ == other.id_; }

}  // namespace vox
