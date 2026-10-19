// Owned copies of C strings, as the GLX player classes keep them. The original
// duplicates with XP_API_STRNEW; the two helpers here differ only in how they treat
// an empty string.
#pragma once

#include <cstddef>
#include <cstring>
#include <memory>

// strdup-like copy: a null input gives null, an empty input gives "".
inline std::unique_ptr<char[]> OwnedDup(const char* text) {
    if (text == nullptr) {
        return nullptr;
    }
    const std::size_t length = std::strlen(text) + 1;
    std::unique_ptr<char[]> copy(new char[length]);
    std::memcpy(copy.get(), text, length);
    return copy;
}

// Copy used by the response handlers: a null or empty input gives null.
inline std::unique_ptr<char[]> OwnedNonEmpty(const char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return nullptr;
    }
    return OwnedDup(text);
}
