// Text helpers for the GLX response and request formats. The original splits its
// "a|b|c" and "x^y" records with getValue (0x82ace0), which walks the text once and copies
// one field. These helpers do the same walk and return the field as a value, so the port
// does not depend on the fixed-size buffers the original copies into.
#pragma once

#include <cstdint>
#include <cstring>
#include <memory>
#include <string>

// Field `index` of `text`, with fields split by `delim`. A missing field is "".
inline std::string GLXField(const char* text, std::int32_t index, char delim) {
    std::string field;
    if (text == nullptr) {
        return field;
    }
    std::int32_t current = 0;
    for (const char* p = text; *p != '\0'; ++p) {
        if (*p == delim) {
            ++current;
            if (current > index) {
                break;
            }
            continue;
        }
        if (current == index) {
            field.push_back(*p);
        }
    }
    return field;
}

// A new NUL-terminated copy of the text (the original's XP_API_STRNEW).
inline std::unique_ptr<char[]> GLXCopy(const std::string& text) {
    std::unique_ptr<char[]> copy(new char[text.size() + 1]);
    std::memcpy(copy.get(), text.c_str(), text.size() + 1);
    return copy;
}
