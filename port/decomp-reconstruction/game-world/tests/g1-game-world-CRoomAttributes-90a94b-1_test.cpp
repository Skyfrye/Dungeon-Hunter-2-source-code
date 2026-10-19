// Test for batch g1-game-world-CRoomAttributes-90a94b-1.
//
// Links with the part-1 source of the same class (g1-game-world-CRoomAttributes-90a94b-0.cpp), which supplies
// EraseAttributeInt, SetAttributeInt, NetRoomAttributes::Copy and the NetRoomAttributes destructor, and with the
// net-transport NetStruct and member sources (real).
//
// The NetStruct sources reference two CMatching accessors at link time. The net-session-online header cannot sit
// next to dh2/CRoomAttributes.hpp (both declare a global class CRoomAttributes), so the class is declared here with
// only those two members. None of the checks below reach them: SetEnabled(false), the member value writes and the
// byte-array writes do not read the matching object.
//
// Not covered: Serialize (both overloads). They call NetStruct::Serialize, which reads CMatching::Get() for the local
// member id, so they need the real matching object (the inert test-local stub below is a different type entirely).

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "dh2/CRoomAttributes.hpp"

// Link-time CMatching accessors (see the header comment). Not the net-session-online class. DELIBERATE TEST STUB:
// this is a test-local `::CMatching`, a different type from the library's net-session-online::CMatching, so unlike
// the other test-local singleton stubs it does NOT shadow the library's real CMatching::Get in this executable;
// any symbol the executable took from the library still reaches the real accessor. The stub is inert either way:
// no check below reaches it, and the real class cannot be declared next to dh2/CRoomAttributes.hpp (both declare a
// global CRoomAttributes), so Serialize stays uncovered until this file links the real matching object.
class CMatching {
public:
    static CMatching* Get();
    bool TestRoomMask(std::uint32_t bits) const;
};
CMatching* CMatching::Get() { return nullptr; }
bool CMatching::TestRoomMask(std::uint32_t) const { return false; }

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

}  // namespace

int main() {
    // Default construction: the masks are zero and every bin is empty.
    {
        CRoomAttributes room;
        CHECK(room.m_netRoomAttributes.m_binMask.GetValue() == 0u);
        CHECK(room.m_netRoomAttributes.m_intMask.GetValue() == 0u);
        CHECK(room.m_netRoomAttributes.m_binAttributes[0].GetBufferSize() == 0);
        CHECK(room.m_netRoomAttributes.m_binAttributes[4].GetBufferSize() == 0);
    }

    // SetAttributeBin sets the bit in the bin mask (flagged as changed) and stores the bytes.
    {
        CRoomAttributes room;
        room.SetAttributeBin(ROOM_BIN_ATTRIBUTE_2, "abc", 3);
        CHECK(room.m_netRoomAttributes.m_binMask.GetValue() == (1u << 2));
        CHECK(room.m_netRoomAttributes.m_binAttributes[2].GetBufferSize() == 3);
        CHECK(std::memcmp(room.m_netRoomAttributes.m_binAttributes[2].GetBufferPtr(), "abc", 3) == 0);
        CHECK(room.m_netRoomAttributes.m_binMask.IsChanged());

        // A second bin keeps the first bit.
        room.SetAttributeBin(ROOM_BIN_ATTRIBUTE_0, "zz", 2);
        CHECK(room.m_netRoomAttributes.m_binMask.GetValue() == ((1u << 2) | 1u));
        CHECK(room.m_netRoomAttributes.m_binAttributes[0].GetBufferSize() == 2);
        CHECK(room.m_netRoomAttributes.m_binAttributes[2].GetBufferSize() == 3);

        // EraseAttributeBin empties that bin and clears only its bit.
        room.EraseAttributeBin(ROOM_BIN_ATTRIBUTE_2);
        CHECK(room.m_netRoomAttributes.m_binMask.GetValue() == 1u);
        CHECK(room.m_netRoomAttributes.m_binAttributes[2].GetBufferSize() == 0);
        CHECK(room.m_netRoomAttributes.m_binAttributes[0].GetBufferSize() == 2);

        // Clear empties every bin and both masks.
        room.Clear();
        CHECK(room.m_netRoomAttributes.m_binMask.GetValue() == 0u);
        CHECK(room.m_netRoomAttributes.m_binAttributes[0].GetBufferSize() == 0);
    }

    // operator= and the copy constructor copy the block (flags 15): the bin mask and the bin bytes come across.
    {
        CRoomAttributes source;
        source.SetAttributeBin(ROOM_BIN_ATTRIBUTE_4, "q", 1);

        CRoomAttributes target;
        target = source;
        CHECK(target.m_netRoomAttributes.m_binMask.GetValue() == (1u << 4));
        CHECK(target.m_netRoomAttributes.m_binAttributes[4].GetBufferSize() == 1);

        // Self-assignment does nothing.
        target = target;
        CHECK(target.m_netRoomAttributes.m_binMask.GetValue() == (1u << 4));

        CRoomAttributes copied(source);
        CHECK(copied.m_netRoomAttributes.m_binMask.GetValue() == (1u << 4));
        CHECK(copied.m_netRoomAttributes.m_binAttributes[4].GetBufferSize() == 1);
    }

    if (g_failures == 0) {
        std::printf("g1-game-world-CRoomAttributes-90a94b-1 test: OK\n");
        return 0;
    }
    std::printf("g1-game-world-CRoomAttributes-90a94b-1 test: %d failure(s)\n", g_failures);
    return 1;
}
