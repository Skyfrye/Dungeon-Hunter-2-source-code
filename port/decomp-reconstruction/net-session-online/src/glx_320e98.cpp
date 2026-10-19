// Free functions and CMatching members of the lib-online-glx slice that starts at 0x320e98.
// The rest of the slice is class code in its own files (online_game_state.cpp, c_online.cpp,
// cxplayer_manager.cpp); the blocked rows are listed in the ledger fragment.
#include <cstdint>

#include "net-session-online/c_matching_bluetooth.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching.hpp"

// 0x52f0e0 _Z26ALicenseCheck_GetUserAgentPc
// The original body is a bare return.
void ALicenseCheck_GetUserAgent(char* /*buffer*/) {}

// 0x7fe4a4 _ZN9CMatching25ReceiveGameBootInvitationEv
std::int32_t CMatching::ReceiveGameBootInvitation() const { return 0; }

// 0x7fe4ac _ZN9CMatching9GetRoomIdEv (64-bit result)
std::uint64_t CMatching::GetRoomId() const { return 0; }

// 0x7fe4b8 _ZN9CMatching14LimitRoomSlotsEj
std::int32_t CMatching::LimitRoomSlots(std::uint32_t /*slots*/) const { return 0; }

// 0x7fe4c0 _ZN9CMatching19SetMatchingProviderENS_18MATCHING_PROVIDERSE
void CMatching::SetMatchingProvider(MATCHING_PROVIDERS provider) {
    s_matchingProvider = static_cast<std::int32_t>(provider);
}


// The forwarders read CMatching::s_Matching directly, as the binary does. They do not call Get(): Get()
// would create an instance, which the original never does on this path.

// 0x7fe628 _ZN9CMatching15sReadPacketDataEiiR12NetBitStream
// Partial: forwards to vtable +0x10 (vtReadPacketData, the base ReadPacketData slot). The original
// dereferences s_Matching without a check; this port returns 0 when none is set.
std::int32_t CMatching::sReadPacketData(std::int32_t a1, std::int32_t a2, NetBitStream& stream) {
    return s_Matching != nullptr ? s_Matching->ReadPacketData(a1, a2, stream) : 0;
}

// 0x7fe66c _ZN9CMatching16sWritePacketDataEiiR12NetBitStream
// Partial: forwards to vtable +0x0c, CMatching::WritePacketData (0x8010a4), the virtual that CMatchingLocal and
// CMatchingGLLive override. Same null handling as above.
std::int32_t CMatching::sWritePacketData(std::int32_t a1, std::int32_t a2, NetBitStream& stream) {
    return s_Matching != nullptr ? s_Matching->WritePacketData(a1, a2, stream) : 0;
}

// 0x7fe6b0 _ZN9CMatching26sProcessAcknowledgedPacketEii
// Partial: forwards to vtable +0x14 with (a1, a2). The Hex-Rays signature has a third argument
// that the body never forwards; the mangled name has two. Null handling as above.
std::int32_t CMatching::sProcessAcknowledgedPacket(std::int32_t a1, std::int32_t a2) {
    return s_Matching != nullptr ? s_Matching->ProcessAcknowledgedPacket(a1, a2) : 0;
}

// 0x7fe6ec _ZN9CMatching18sProcessLostPacketEii
// Partial: forwards to vtable +0x18 (vtProcessLostPacket). Same note as sProcessAcknowledgedPacket.
std::int32_t CMatching::sProcessLostPacket(std::int32_t a1, std::int32_t a2) {
    return s_Matching != nullptr ? s_Matching->ProcessLostPacket(a1, a2) : 0;
}

// CMatching::s_Matching: the matching object. The binary's CMatching::Get() assigns it on first use (the
// constructors do not), from s_matchingProvider: 0 or 1 CMatchingLocal, 2 CMatchingBluetooth, 3
// CMatchingGLLive(false), 4 CMatchingGLLive(true).
CMatching* CMatching::s_Matching = nullptr;

// 0x800f8c _ZN9CMatching3GetEv
// Provider 0 becomes 1, then 1, 2, 3 and 4 construct the matching object and the instance is returned.
CMatching* CMatching::Get() {
    if (s_Matching != nullptr) {
        return s_Matching;
    }
    if (s_matchingProvider == 0) {
        s_matchingProvider = 1;
    }
    if (s_matchingProvider == 1) {
        s_Matching = new CMatchingLocal();
    } else if (s_matchingProvider == 2) {
        s_Matching = new CMatchingBluetooth();
    } else if (s_matchingProvider == 3) {
        s_Matching = new CMatchingGLLive(false);
    } else if (s_matchingProvider == 4) {
        s_Matching = new CMatchingGLLive(true);
    }
    return s_Matching;
}
