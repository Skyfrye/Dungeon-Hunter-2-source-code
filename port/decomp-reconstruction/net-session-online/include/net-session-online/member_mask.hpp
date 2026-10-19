// Member bit mask for the room matching classes. Both CMatchingGLLive::GetMemberMask
// (0x81bc78) and CMatchingLocal::GetMemberMask (0x805664) have this body, so it lives
// in one place. The ARM uses a register-specified shift, which takes the low byte of the
// shift count and gives 0 for a count of 32 or more.
#pragma once

#include <cstdint>

// Bit for memberId: 1 << ((memberId - 1) / 16). Ids below 0 give 0, and so does id 0.
inline std::int32_t MemberMaskForId(std::int32_t memberId) {
    if (memberId < 0) {
        return 0;
    }
    const std::uint32_t shift = (static_cast<std::uint32_t>(memberId - 1) >> 4) & 0xffu;
    return shift < 32 ? static_cast<std::int32_t>(1u << shift) : 0;
}
