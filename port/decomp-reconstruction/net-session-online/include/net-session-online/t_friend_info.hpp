// tFriendInfo: one friend entry. Layout (original 32-bit offsets, kept as comments):
//   +0x00 int, +0x04 string, +0x1c int, +0x20 string, +0x38 string, +0x50 string.
// Field names are placeholders: the original's field names are not recovered, so each
// member is named after its offset. The original's std::string is 0x18 bytes.
#pragma once

#include <cstdint>
#include <string>

class tFriendInfo {
public:
    // 0x81ebc8 _ZN11tFriendInfoC1Ev. Reconstructed. The original leaves the two int fields
    // (+0x00, +0x1c) unset; here they start at 0.
    tFriendInfo() = default;
    // 0x81e024 _ZN11tFriendInfoC1ERKS_. Reconstructed: copies every field.
    tFriendInfo(const tFriendInfo& other) = default;
    // 0x81ce18 _ZN11tFriendInfoD1Ev. Reconstructed: destroys the four strings.
    ~tFriendInfo() = default;

    // Not in the original: test seams.
    std::int32_t Value00ForTest() const { return value00_; }
    std::int32_t Value1cForTest() const { return value1c_; }

    // The name (+0x04): the original reads its text pointer at +0x18 (the string's data pointer).
    const char* Name() const { return text04_.c_str(); }

    // Setters for the three recovered fields, filled by CMatchingGLLive::GetFriendsList (0x81ec5c). Not in the original.
    void SetValue00(std::int32_t value) { value00_ = value; }
    void SetText04(const std::string& text) { text04_ = text; }
    void SetValue1c(std::int32_t value) { value1c_ = value; }

private:
    std::int32_t value00_ = 0;  // +0x00
    std::string text04_;        // +0x04
    std::int32_t value1c_ = 0;  // +0x1c
    std::string text20_;        // +0x20
    std::string text38_;        // +0x38
    std::string text50_;        // +0x50
};
