// Batch g1-game-world-CRoomAttributes-90a94b-0 (part 1 of 2): the attribute accessors, the NetStruct forwards,
// the Unserialize and Serialize entry points that take a stream, the NetRoomAttributes destructor, the
// EraseAttributeInt, SetAttributeInt and NetRoomAttributes::Copy functions. Declarations come from
// dh2/CRoomAttributes.hpp. Part 2 (Copy, operator=, bin eraser, Clear, constructors) is in
// g1-game-world-CRoomAttributes-90a94b-1.cpp.
//
// Functions whose only deviation is a stack temporary (see the note below):
//   - EraseAttributeInt (0x8183e0), SetAttributeInt (0x818544), NetRoomAttributes::Copy (0x8186ac): the temporary
//     SetChanged of the pseudocode. The member's own SetValue, which sets the change flag when the value changes, is
//     reproduced. The return value is the leftover register of the last SetValue call - the member address - and is
//     not observable to these callers (all of them discard r0), so the port returns 0.
//   - Unserialize(int, NetBitStream&) (0x817fec): the `conditional` flag needs CMatching's virtual slot +0x6c
//     (108), the host member id (CNetPlayerManager +0x170, private) and the connection index of a player
//     (CNetPlayerInfo conn_index_, value at +0x1a0). The flag is a placeholder (false) until those are declared.
//     This one IS still partial: the flag is missing, not merely unobservable.
//   - Resend (0x817e4c): the pseudocode tail-calls NetStruct::Resend and returns its leftover R0; nothing reads it,
//     so the port returns 0.
//
// The temporary SetChanged. EraseAttributeInt, SetAttributeInt and NetRoomAttributes::Copy build member-sized
// temporaries on the stack. Each compares the new value with that temporary's value slot before the slot is
// written, and calls NetStructMember::SetChanged on the temporary when they differ. The slot is never written before
// that compare, so the call depends on stack contents the pseudocode does not give. The temporary is discarded
// afterwards, so the call only increments NetStruct::s_changeCounter. The port omits it. The real member's value and
// change flag are set by its own SetValue, which is reproduced.

#include "dh2/CRoomAttributes.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "net-transport/tb/cnet_player_info.hpp"

#include <cstddef>
#include <cstdint>

namespace {

// CSWTCH.280 at 0x90c27c in libDungeonHunter2.so (.rodata, 5 int32 values, read from the binary):
// the maximum byte size of each bin attribute, indexed by tROOM_ATTRIBUTES_BIN.
constexpr std::int32_t kMaxBinAttributeBytes[5] = {64, 256, 256, 256, 256};

}  // namespace

// 0x817d78 CRoomAttributes::Reload(void)
// Empty in the binary (virtual slot 7).
void CRoomAttributes::Reload() {
}

// 0x817d7c CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_INT)
// Tests the int-attribute active bit in the int mask value (CRoomAttributes +0x360, NetRoomAttributes +0x358).
bool CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_INT attribute) {
    return (m_netRoomAttributes.m_intMask.GetValue() & (1u << attribute)) != 0;
}

// 0x817d94 CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_BIN)
// Tests the bin-attribute active bit in the bin mask value (CRoomAttributes +0x388, NetRoomAttributes +0x380).
bool CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_BIN attribute) {
    return (m_netRoomAttributes.m_binMask.GetValue() & (1u << attribute)) != 0;
}

// 0x817dac CRoomAttributes::GetAttributeInt(tROOM_ATTRIBUTES_INT)
// Reads the value with no active check (value at +0x20 of the int attribute member).
int CRoomAttributes::GetAttributeInt(tROOM_ATTRIBUTES_INT attribute) {
    return m_netRoomAttributes.m_intAttributes[attribute].GetValue();
}

// 0x817dbc CRoomAttributes::GetAttributeBin(tROOM_ATTRIBUTES_BIN,void *,uint)
// The byte array's vtable slot +0x2c is GetBuffer(void*, int) and slot +0x34 is GetBufferSize(). Both are called
// on the static NetStructByteArray<256> type, which has no further override, so the direct calls are the same.
int CRoomAttributes::GetAttributeBin(tROOM_ATTRIBUTES_BIN attribute, void* out, unsigned int size) {
    m_netRoomAttributes.m_binAttributes[attribute].GetBuffer(out, static_cast<int>(size));
    return m_netRoomAttributes.m_binAttributes[attribute].GetBufferSize();
}

// 0x817e00 CRoomAttributes::GetMaxBufferSize(tROOM_ATTRIBUTES_BIN)
// Table CSWTCH.280 (see kMaxBinAttributeBytes). Attributes above 4 have no size.
int CRoomAttributes::GetMaxBufferSize(tROOM_ATTRIBUTES_BIN attribute) {
    const std::uint32_t index = static_cast<std::uint32_t>(attribute);
    if (index <= 4u) {
        return kMaxBinAttributeBytes[index];
    }
    return 0;
}

// 0x817e4c CRoomAttributes::Resend(void)
// Tail call to NetStruct::Resend on the NetRoomAttributes block. The binary returns the callee's leftover R0,
// which nothing reads. The port returns 0.
int CRoomAttributes::Resend() {
    m_netRoomAttributes.NetStruct::Resend();
    return 0;
}

// 0x817e54 CRoomAttributes::AreChangesAcknowledged(void)
int CRoomAttributes::AreChangesAcknowledged() {
    return m_netRoomAttributes.NetStruct::AreChangesAcknowledged();
}

// 0x817e5c CRoomAttributes::Unserialize(NetBitStream &)
// NetStruct::Load on the NetRoomAttributes block with member id -1 and flags 0.
int CRoomAttributes::Unserialize(NetBitStream& stream) {
    return m_netRoomAttributes.NetStruct::Load(stream, -1, 0u);
}

// 0x817e6c CRoomAttributes::Unserialize(char *,uint)
// Wraps the buffer in a NetBitStream of the same size and loads it through Unserialize(NetBitStream&).
void CRoomAttributes::Unserialize(char* buffer, unsigned int size) {
    NetBitStream stream(size);
    stream.SetBuffer(buffer, size);
    Unserialize(stream);
}

// 0x817ebc CRoomAttributes::Serialize(int,int,NetBitStream &)
// NetStruct::Serialize takes the stream first, then the member id and the packet id.
bool CRoomAttributes::Serialize(int memberId, int packetId, NetBitStream& stream) {
    return m_netRoomAttributes.NetStruct::Serialize(stream, memberId, packetId) != 0;
}

// 0x817ee8 CRoomAttributes::HasChanged(void)
int CRoomAttributes::HasChanged() {
    return m_netRoomAttributes.NetStruct::IsChanged();
}

// 0x817ef0 CRoomAttributes::ProcessAcknowledgedPacket(int,int)
void CRoomAttributes::ProcessAcknowledgedPacket(int memberId, int packetId) {
    m_netRoomAttributes.NetStruct::ProcessAcknowledgedPacket(memberId, packetId);
}

// 0x817ef8 CRoomAttributes::ProcessLostPacket(int,int)
void CRoomAttributes::ProcessLostPacket(int memberId, int packetId) {
    m_netRoomAttributes.NetStruct::ProcessLostPacket(memberId, packetId);
}

// 0x817fec CRoomAttributes::Unserialize(int,NetBitStream &)
// The attributes are loaded conditionally: the condition holds when this device's member id (CMatching::Get(), vtable +0x6c) is not the
// matching member id of the host player (the player manager's host member id at +0x170 looked up with GetPlayer(id, false)) and the host
// player has a matching member id (not -1). The member id argument goes to NetStruct::ConditionalLoad unchanged.
int CRoomAttributes::Unserialize(int memberId, NetBitStream& stream) {
    CMatching* matching = CMatching::Get();
    const int localMemberId = matching->LocalMemberId();       // vtable +0x6c
    CNetPlayerManager* players = GetNetPlayerMgr();
    bool conditional = false;
    if (localMemberId != players->GetPlayer(players->net_struct_.host_member_id_.GetValue(), false)->matching_member_id_.GetValue()) {
        if (players->GetPlayer(players->net_struct_.host_member_id_.GetValue(), false)->matching_member_id_.GetValue() != -1) {
            conditional = true;
        }
    }
    return m_netRoomAttributes.NetStruct::ConditionalLoad(conditional, stream, memberId, 0u);
}

// 0x8180f4 CRoomAttributes::NetRoomAttributes::~NetRoomAttributes()  (complete-object destructor)
// The binary sets the vptrs, destroys the five bin attributes in reverse (virtual slot +0x14, the D1 of
// NetStructMember), then the eight int attributes in reverse, then clears the NetStruct packet history map and
// resets its header. In C++ the members are destroyed in reverse declaration order after this empty body: the
// bin array, the int array, then the NetStruct base, which owns the map. The two mask members have trivial
// destructors, as in the binary.
CRoomAttributes::NetRoomAttributes::~NetRoomAttributes() {
}

// 0x8181bc CRoomAttributes::NetRoomAttributes::~NetRoomAttributes()  (deleting destructor)
// SKIPPED: the compiler generates the deleting destructor for `delete` (destructor then CustomFree, the
// operator delete). It is not written by hand.

// 0x8183e0 CRoomAttributes::EraseAttributeInt(tROOM_ATTRIBUTES_INT)
// The int attribute is set to 0 first through the member's own SetValue (which sets the change flag when the value
// changes), then the active bit is cleared in the int mask through the mask's SetValue. The pseudocode's stack
// temporaries read their value word before writing it and only advance NetStruct::s_changeCounter; see the file note.
int CRoomAttributes::EraseAttributeInt(tROOM_ATTRIBUTES_INT attribute) {
    m_netRoomAttributes.m_intAttributes[attribute].SetValue(0);
    const std::uint32_t mask = m_netRoomAttributes.m_intMask.GetValue() & ~(1u << attribute);
    m_netRoomAttributes.m_intMask.SetValue(mask);
    return 0;
}

// 0x818544 CRoomAttributes::SetAttributeInt(tROOM_ATTRIBUTES_INT,int)
// The int mask gets the active bit through the mask's SetValue, then the attribute gets the value through the
// member's SetValue. Both set the change flag where the value changes; the pseudocode's stack temporaries add
// nothing observable (see the file note).
int CRoomAttributes::SetAttributeInt(tROOM_ATTRIBUTES_INT attribute, int value) {
    const std::uint32_t mask = m_netRoomAttributes.m_intMask.GetValue() | (1u << attribute);
    m_netRoomAttributes.m_intMask.SetValue(mask);
    m_netRoomAttributes.m_intAttributes[attribute].SetValue(value);
    return 0;
}

// 0x8186ac CRoomAttributes::NetRoomAttributes::Copy(CRoomAttributes::NetRoomAttributes const&,uint)
// The int and bin masks take the other block's values first, through their SetValue. The flags then clear groups
// from the masks: 0x1 keeps the int attributes, 0x2 bin attribute 0, 0x4 bin attributes 3 and 4, 0x8 bin
// attributes 1 and 2. Each kept attribute is copied with its member SetValue. The pseudocode's stack temporaries
// for the two mask writes only advance NetStruct::s_changeCounter (see the file note), and the return value is the
// leftover register of the last SetValue call (the member address), which no caller reads.
int CRoomAttributes::NetRoomAttributes::Copy(const NetRoomAttributes& other, unsigned int flags) {
    m_intMask.SetValue(other.m_intMask.GetValue());
    m_binMask.SetValue(other.m_binMask.GetValue());

    std::uint32_t intMask = m_intMask.GetValue();
    std::uint32_t binMask = m_binMask.GetValue();
    if ((flags & 0x1u) == 0) {
        intMask = 0;
    }
    if ((flags & 0x2u) == 0) {
        binMask &= ~0x1u;
    }
    if ((flags & 0x4u) == 0) {
        binMask &= 0xFFFFFFE7u;
    }
    if ((flags & 0x8u) == 0) {
        binMask &= 0xFFFFFFF9u;
    }

    for (int i = 0; i < 8; ++i) {
        if ((intMask & (1u << i)) != 0) {
            m_intAttributes[i].SetValue(other.m_intAttributes[i].GetValue());
        }
    }
    for (int j = 0; j < 5; ++j) {
        if ((binMask & (1u << j)) != 0) {
            m_binAttributes[j].SetValue(other.m_binAttributes[j].GetValue());
        }
    }

    m_intMask.SetValue(intMask);
    m_binMask.SetValue(binMask);
    return 0;
}
