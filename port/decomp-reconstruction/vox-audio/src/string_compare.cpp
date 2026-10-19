#include "vox-audio/vox/string_compare.hpp"

#include <cstring>

namespace vox {

namespace {

// Shared rule of the three vox::VoxString comparators (ARM at 0x8715d8, 0x88b778, 0x894bac):
// compare the common prefix with memcmp; on a tie the shorter string is less.
bool LessByBytes(const vox::VoxString& a, const vox::VoxString& b) {
    const std::size_t common = a.size() < b.size() ? a.size() : b.size();
    const int diff = std::memcmp(a.data(), b.data(), common);
    if (diff != 0) {
        return diff < 0;
    }
    return a.size() < b.size();
}

}  // namespace

// 0x8715d8 _ZNK3vox13StringCompareclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_
bool StringCompare::operator()(const vox::VoxString& a, const vox::VoxString& b) const {
    return LessByBytes(a, b);
}

// 0x88b778 _ZNK3vox10stringcompclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_
bool stringcomp::operator()(const vox::VoxString& a, const vox::VoxString& b) const {
    return LessByBytes(a, b);
}

// 0x894bac _ZNK3vox10StringCompclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_
bool StringComp::operator()(const vox::VoxString& a, const vox::VoxString& b) const {
    return LessByBytes(a, b);
}

// 0x88a4d0 _ZNK3vox12c8stringcompclEPKcS2_
// The original calls strcasecmp and keeps the sign bit. This is the ASCII
// (C-locale) equivalent, so it does not depend on the platform's strcasecmp.
bool c8stringcomp::operator()(const char* a, const char* b) const {
    for (;; ++a, ++b) {
        const int ca = static_cast<unsigned char>(*a >= 'A' && *a <= 'Z' ? *a + ('a' - 'A') : *a);
        const int cb = static_cast<unsigned char>(*b >= 'A' && *b <= 'Z' ? *b + ('a' - 'A') : *b);
        if (ca != cb) {
            return ca < cb;
        }
        if (ca == 0) {
            return false;
        }
    }
}

}  // namespace vox
