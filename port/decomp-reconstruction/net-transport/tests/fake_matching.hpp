// Test double for the CMatching object that CMatching::Get() returns (one definition of CMatching,
// in net-session-online/deps/matching.hpp). It keeps the values the net-transport tests were written
// against: member id n maps to bit 1 << n (so GetMemberIndex(n) == n for 0..31), the local and the
// server member id are 0, and the server flag, room mask and in-room flag are set by the test.
//
// Including this header installs the fake for the whole test binary (CMatching::Get() is non-null
// from static initialisation on). Tests set the flags with the helpers below.
#pragma once

#include <cstdint>

#include "net-session-online/deps/matching.hpp"

class FakeNetMatching : public CMatching {
public:
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    int LocalMemberId() const override { return 0; }
    int ServerMemberId() const override { return 0; }
    bool IsServer() const override { return server; }
    std::uint32_t GetRoomMask() const override { return roomMask; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return inRoom; }

    bool server = false;
    std::uint32_t roomMask = 0;
    bool inRoom = false;
};

// The fake, installed as CMatching::Get() on first use.
inline FakeNetMatching& InstalledFakeMatching() {
    static FakeNetMatching fake;
    static const bool installed = (CMatching::Set(&fake), true);
    (void)installed;
    return fake;
}

// Installed from static initialisation of every test that includes this header.
static const bool kFakeMatchingInstalled = (InstalledFakeMatching(), true);

inline void SetServerForTest(bool server) { InstalledFakeMatching().server = server; }
inline void SetRoomMaskForTest(std::uint32_t mask) { InstalledFakeMatching().roomMask = mask; }
inline void SetInRoomForTest(bool inRoom) { InstalledFakeMatching().inRoom = inRoom; }
