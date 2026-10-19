#include "core-platform/util.hpp"

#include <cstring>

// 0x317a04 _Z7strrstrPKcS0_
// Empty needle: returns the haystack. Otherwise the original scans candidate
// starts from the end of the haystack back to its first byte and returns the
// first full match, i.e. the last occurrence. An empty haystack gives no match.
const char* strrstr(const char* haystack, const char* needle) {
    if (*needle == '\0') {
        return haystack;
    }
    const std::size_t hayLen = std::strlen(haystack);
    const std::size_t needleLen = std::strlen(needle);
    if (needleLen > hayLen) {
        return nullptr;
    }
    for (std::size_t start = hayLen - needleLen + 1; start-- > 0;) {
        if (std::strncmp(haystack + start, needle, needleLen) == 0) {
            return haystack + start;
        }
    }
    return nullptr;
}

// 0x69f54c _Z22util_number_is_power_2j
bool util_number_is_power_2(unsigned value) {
    if (value == 0) {
        return false;
    }
    return ((value - 1) | value) == ((value - 1) ^ value);
}

// Shared loop of 0x34e024 and 0x34e090. A character in 'A'..'Z' gains 0x20.
// The original reads the characters as signed bytes, so bytes >= 0x80 are left alone.
void LowerCaseRange(char* data, int size, int from, int to) {
    if (to == -1 || size <= to) {
        to = size - 1;
    }
    for (int i = from; i <= to; ++i) {
        char c = data[i];
        if ('@' < c && c < '[') {
            data[i] = static_cast<char>(c + ' ');
        }
    }
}

// 0x34e024 _Z11ToLowerCaseRSsii
void ToLowerCase(std::string& s, int from, int to) {
    LowerCaseRange(&s[0], static_cast<int>(s.size()), from, to);
}

// 0x34e090 ToLowerCase(glitch::core::stringc&, int, int)
void ToLowerCase(glitch::core::stringc& s, int from, int to) {
    LowerCaseRange(&s[0], static_cast<int>(s.size()), from, to);
}
