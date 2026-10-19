// Helpers for GameCenter::GetGCPlayerGroup (0x499694). The original writes two 32-bit longs into one
// std::stringstream with no separator, then parses the text with strtol(text, nullptr, 10) on a 32-bit
// long. Strtol32Decimal reproduces that parse, including the saturation at LONG_MAX and LONG_MIN, so the
// result does not depend on the width of long on the host.
#pragma once

#include <cctype>
#include <cstdint>
#include <sstream>

namespace gc_player_group {

// strtol(text, nullptr, 10) with a 32-bit long. Skips leading white space, takes one optional sign, then
// reads decimal digits and stops at the first other character. Gives 0 when there are no digits. A value
// above INT32_MAX gives INT32_MAX, and a value below INT32_MIN gives INT32_MIN.
inline std::int32_t Strtol32Decimal(const char* text) {
    constexpr std::int64_t kMax = 2147483647;
    constexpr std::int64_t kMinMagnitude = 2147483648;  // |INT32_MIN|

    const char* p = text;
    while (*p != '\0' && std::isspace(static_cast<unsigned char>(*p))) {
        ++p;
    }
    bool negative = false;
    if (*p == '+' || *p == '-') {
        negative = (*p == '-');
        ++p;
    }
    // Once the magnitude is past kMinMagnitude the result saturates whatever the remaining digits are,
    // so accumulation stops there. The accumulator stays well inside 64 bits.
    std::int64_t magnitude = 0;
    for (; *p >= '0' && *p <= '9'; ++p) {
        if (magnitude <= kMinMagnitude) {
            magnitude = magnitude * 10 + (*p - '0');
        }
    }
    if (negative) {
        return magnitude > kMinMagnitude ? static_cast<std::int32_t>(-kMinMagnitude)
                                         : static_cast<std::int32_t>(-magnitude);
    }
    return magnitude > kMax ? static_cast<std::int32_t>(kMax) : static_cast<std::int32_t>(magnitude);
}

// The number GetGCPlayerGroup gets from the stream: the digits of first, then the digits of second, read
// as one decimal number by Strtol32Decimal. A negative first keeps its sign; a sign in second ends the
// number (strtol stops there).
inline std::int32_t ComposeGCPlayerGroup(std::int32_t first, std::int32_t second) {
    std::ostringstream text;
    text << first << second;
    return Strtol32Decimal(text.str().c_str());
}

}  // namespace gc_player_group
