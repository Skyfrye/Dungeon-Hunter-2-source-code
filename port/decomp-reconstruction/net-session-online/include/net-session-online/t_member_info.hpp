// tMemberInfo: one member entry. Layout (original 32-bit offsets, kept as comments):
//   +0x00 member id (int, set to -1 by the destructor)
//   +0x08 pointer to a second string the join handlers read from the packet (never freed by the destructor in the
//         original, which leaks it); held as a std::string copy here
//   +0x0c std::string value (STL string in the original, 24 bytes; SetPlayerParam assigns it)
//   +0x24 int (set to 0 by the destructor): the length of the value read from the packet
//   +0x28 name, a NUL-terminated char buffer of 36 bytes (at most 31 characters are copied)
//   +0x4c int, not named (the join handlers store the byte read from the packet here)
//   +0x50 launched flag (byte); CollapseMemberList keeps the entries that have it set
// The destructor (0x821dbc) resets the id and the +0x24 int. The value string is released by its
// own destructor, after the body, so the original's explicit buffer release is covered.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

class tMemberInfo {
public:
    // 0x821dbc _ZN11tMemberInfoD1Ev. Reconstructed (see the cpp).
    ~tMemberInfo();

    // The default entry has id 0. The explicit form makes the id-only entry used as the invalid
    // sentinel by GetMemberByMemberId (id -1).
    tMemberInfo() = default;
    explicit tMemberInfo(std::int32_t memberId) : memberId_(memberId) {}

    // Field accessors (see the layout above).
    std::int32_t MemberId() const { return memberId_; }
    std::string& Value() { return value_; }
    const std::string& Value() const { return value_; }
    const char* Name() const { return name_; }
    // The id the SyncMemberId pass writes into +0x00 when a lobby entry matches a connected member user name.
    void SetMemberId(std::int32_t memberId) { memberId_ = memberId; }
    bool Launched() const { return launched_; }

    // Test seams. Not in the original.
    std::int32_t MemberIdForTest() const { return memberId_; }
    std::int32_t Value24ForTest() const { return value24_; }
    void SetForTest(std::int32_t memberId, std::int32_t value24) {
        memberId_ = memberId;
        value24_ = value24;
    }
    void SetNameForTest(const char* name) {
        // The packet copy keeps at most 31 characters and a terminating NUL (32 bytes).
        std::size_t length = 0;
        while (length < 31 && name[length] != '\0') {
            name_[length] = name[length];
            ++length;
        }
        name_[length] = '\0';
    }
    void SetLaunchedForTest(bool launched) { launched_ = launched; }

    // Fields are public (Track B decision 9): the lobby observer fills them from the packet.
    std::int32_t memberId_ = 0;  // +0x00
    std::string unk08_;          // +0x08 (second packet string, see above)
    std::string value_;          // +0x0c
    std::int32_t value24_ = 0;   // +0x24
    char name_[36] = {};         // +0x28
    std::int32_t unk4c_ = 0;     // +0x4c (not named)
    bool launched_ = false;      // +0x50
};
