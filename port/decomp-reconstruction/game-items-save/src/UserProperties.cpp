// Batch g1-game-items-save-UserProperties-49b82b-0 (owner UserProperties, the whole class: 9 functions, 6 distinct bodies).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so (Utils/UserProperties.cpp in the original). The
// layout and every declaration come from dh2/UserProperties.hpp, which needs no change for this batch.
//
// The original destructor and constructor bodies are the std::map clear and default construction written out by hand
// (vptr at +0x00, the map header at +0x04). The C++ compiler produces the vptr stores and the member destruction, so the
// bodies below keep only what the original does beyond those.
//
// Skipped: 0x3181d8 (D0, deleting destructor). It is compiler-generated: delete on the virtual destructor runs
// ~UserProperties and then frees the object (the original with CustomFree(this)).
//
// Key characters: the original classifies key characters with (ctype_[c + 1] & 7) != 0. ctype_ is the libc _ctype_
// table that the binary imports (imports.csv). Mask 7 is upper | lower | digit, which is isalnum in the C locale, and
// the same bits give TiXmlBase::IsAlphaNum in the game. A NUL and the byte 0xff are never key characters.

#include "dh2/UserProperties.hpp"

#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"  // gAssertLevel

namespace {

// The original's ASSERT(props) at UserProperties.cpp:37.
const char kUserPropertiesSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\UserProperties.cpp";

// A key character in the sense of the ctype_ mask 7 test (see the file comment).
bool IsKeyChar(char c) {
    return std::isalnum(static_cast<unsigned char>(c)) != 0;
}

}  // namespace

// 0x318178 UserProperties::~UserProperties() (D1, complete-object destructor) and 0x3181f4 (D2, base-object destructor).
// One definition serves both addresses. The original sets the vptr (the compiler does it), then clears the map when it
// holds entries: _M_erase on the root, the header node made its own leftmost and rightmost, root 0, count 0. The clear
// is the same on an empty map, so the body is one clear() call; the map member is destroyed after the body.
UserProperties::~UserProperties() {
    m_properties.clear();
}

// 0x3181d8 UserProperties::~UserProperties() (D0, deleting destructor): compiler-generated, not written here (see the
// file comment).

// 0x318e18 UserProperties::AddProperty(char const*, char const*)
// The original looks up m_properties[key] (operator[] inserts a default string when the key is new) and assigns the
// value with std::string::_M_assign over strlen(value) characters.
void UserProperties::AddProperty(const char* key, const char* value) {
    m_properties[key] = value;
}

// 0x318e5c UserProperties::_ParseKeyValue(char*, char*)
// Finds the key token: the first key character at or after `key`, and the run of key characters after it. The original
// NUL-terminates the token at the first non-key character (kept in `end`, restored at the end), then:
//   - no value (null): adds the key with an empty value;
//   - a value without "%22": adds the whole value;
//   - a value with one "%22" but no second one: adds the whole value, markers included;
//   - a value with two "%22" markers: adds the text between them (the second marker's '%' is set back afterwards).
// Text after the second marker is not read. A key with no key character (a NUL is reached first) adds nothing.
void UserProperties::_ParseKeyValue(char* key, char* value) {
    if (*key == '\0') {
        return;
    }
    char* token = key;
    while (!IsKeyChar(*token)) {
        ++token;
        if (*token == '\0') {
            return;
        }
    }

    // v8 in the original: the byte after the first key character, extended over the run of key characters.
    char* end = token + 1;
    while (IsKeyChar(*end)) {
        ++end;
    }
    const char savedEnd = *end;
    *end = '\0';

    if (value == nullptr) {
        AddProperty(token, "");
    } else {
        char* open = std::strstr(value, "%22");
        char* close = (open != nullptr) ? std::strstr(open + 3, "%22") : nullptr;
        if (close == nullptr) {
            AddProperty(token, value);
        } else {
            *close = '\0';
            AddProperty(token, open + 3);
            *close = '%';
        }
    }

    *end = savedEnd;
}

// 0x318fe4 UserProperties::_ParseLine(char*)
// Splits the line at its first '=' (the original writes NUL there and restores it). A line without '=' is parsed as a
// key alone, with no value.
void UserProperties::_ParseLine(char* line) {
    char* equals = std::strchr(line, '=');
    if (equals == nullptr) {
        _ParseKeyValue(line, nullptr);
        return;
    }
    *equals = '\0';
    _ParseKeyValue(line, equals + 1);
    *equals = '=';
}

// 0x31903c UserProperties::_ParseProperties(char const*)
// The original copies the text into a local std::string and splits it in place: each '\n' becomes NUL while its line
// is parsed, then is restored. The last line (after the final '\n', or the whole text) is parsed after the loop.
// A null text asserts: level 2 stops the program (the original writes to address 0), level 1 prints, and either way
// nothing is parsed.
void UserProperties::_ParseProperties(const char* props) {
    if (props == nullptr) {
        if (gAssertLevel == 2) {
            std::abort();  // the original writes to address 0 here
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "props", kUserPropertiesSource, 37);
        }
        return;
    }

    std::string text(props);
    char* line = text.data();
    char* newline = std::strchr(line, '\n');
    while (newline != nullptr) {
        *newline = '\0';
        _ParseLine(line);
        line = newline + 1;
        *newline = '\n';
        newline = std::strchr(line, '\n');
    }
    _ParseLine(line);
}

// 0x319158 UserProperties::UserProperties(char const*) (C1, complete-object constructor) and 0x3191b0 (C2,
// base-object constructor). One definition serves both addresses.
// The original stores the vptr, then builds the empty map by hand: root 0 at +0x08, the header node at +0x04 with
// color 0, its own address as leftmost (+0x0c) and rightmost (+0x10), count 0 (+0x14). The default construction of
// m_properties is that state. A non-null text is parsed.
UserProperties::UserProperties(const char* props) {
    if (props != nullptr) {
        _ParseProperties(props);
    }
}
