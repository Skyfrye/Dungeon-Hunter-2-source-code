// Comparator functors used as std::map/std::set orderings in the vox engine.
// The original compares its own SAllocator-based strings (begin/end words at
// +0x14/+0x10); the port compares vox::VoxString with the same rule.
#pragma once

#include "vox-audio/vox/allocator.hpp"

namespace vox {

// 0x8715d8 _ZNK3vox13StringCompareclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_...: memcmp over the shorter length; when
// that is equal, the shorter string sorts first.
struct StringCompare {
    bool operator()(const vox::VoxString& a, const vox::VoxString& b) const;
};

// 0x88b778 _ZNK3vox10stringcompclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_...: same body as StringCompare.
struct stringcomp {
    bool operator()(const vox::VoxString& a, const vox::VoxString& b) const;
};

// 0x894bac _ZNK3vox10StringCompclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_...: same body as StringCompare.
struct StringComp {
    bool operator()(const vox::VoxString& a, const vox::VoxString& b) const;
};

// 0x88a4d0 _ZNK3vox12c8stringcompclEPKcS2_: case-insensitive ASCII order of C strings.
struct c8stringcomp {
    bool operator()(const char* a, const char* b) const;
};

}  // namespace vox
