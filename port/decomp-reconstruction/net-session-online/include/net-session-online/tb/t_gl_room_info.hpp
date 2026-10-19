// tGLRoomInfo: one room record of the lobby room list (CMatchingGLLiveLobbyObserver +0x18).
// OnMPListSessionSuccess allocates each record with CustomAlloc(0x28). Layout (original 32-bit
// offsets, kept as comments; the host build uses its own pointer widths):
//   +0x00 room id (int, read from the packet)
//   +0x04 name (char*, owned; released by the destructor 0x82138c)
//   +0x08 second string (char*, owned; released by the destructor)
//   +0x20 attribute blob (char*, owned; released by the destructor)
//   +0x24 blob length (int, set to 0 by the destructor)
//   +0x0c..+0x0f four bytes read from the packet (getByte), +0x10 and +0x14 two ints read from the packet; roles not
//   identified. +0x18/+0x1c are never written by the original (raw CustomAlloc memory).
// The destructor (0x82138c) frees the owned strings and the blob; see the cpp. Fields are public (Track B decision 9).
#pragma once

#include <cstdint>

class tGLRoomInfo {
public:
    tGLRoomInfo() = default;
    // 0x82138c _ZN11tGLRoomInfoD1Ev. Frees +0x04, +0x08 and +0x20 with CustomFree and sets +0x24 to 0.
    ~tGLRoomInfo();
    tGLRoomInfo(const tGLRoomInfo&) = delete;
    tGLRoomInfo& operator=(const tGLRoomInfo&) = delete;

    // The name at +0x04, compared with strcmp by GetRoomIndexByName. Null when unset.
    const char* name() const { return name_; }
    // The fields CMatchingGLLive::GetRoomList (0x82051c) copies into a tRoomInfo.
    std::int32_t roomId() const { return roomId_; }                      // +0x00
    std::int32_t value10() const { return unk_10_; }                     // +0x10 (copied to tRoomInfo +0x20)
    char* attributesBlob() const { return attributes_; }                 // +0x20 (serialized CRoomAttributes, 0x80 bytes)

    // Test seam. Not in the original. Stores a copy that the record owns, as the original does.
    void SetNameForTest(const char* name);

    std::int32_t roomId_ = 0;           // +0x00
    char* name_ = nullptr;              // +0x04 (owned, CustomAlloc; released by the destructor)
    char* second_ = nullptr;            // +0x08 (owned, CustomAlloc; released by the destructor)
    std::uint8_t byte0c_ = 0;           // +0x0c packet read
    std::uint8_t byte0d_ = 0;           // +0x0d packet read
    std::uint8_t byte0e_ = 0;           // +0x0e packet read
    std::uint8_t byte0f_ = 0;           // +0x0f packet read
    std::int32_t unk_10_ = 0;           // +0x10 packet read; GetRoomList copies it to tRoomInfo +0x20
    std::int32_t unk_14_ = 0;           // +0x14 packet read
    std::uint8_t pad_18[8] = {};        // +0x18..+0x1f: never written by the original
    char* attributes_ = nullptr;        // +0x20 (owned, CustomAlloc; released by the destructor)
    std::int32_t attributesLength_ = 0; // +0x24 (set to 0 by the destructor)
};
