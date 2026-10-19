// Batch e1-net-transport-NetStructMember-0: the NetStructMember base-class methods (change
// tracking, acknowledgement masks, Serialize/Load) and the NetStruct::s_changeCounter definition.
//
// Layout and field names are in include/net-transport/net_struct.hpp (NetStructMember).
// The derived-class virtuals (Read, Write) are in net_struct.cpp.

#include "net-transport/net_struct.hpp"

#include "net-session-online/c_online.hpp"       // COnline (the frame time)
#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)

// The change counter is a process-wide 64-bit value. Its owner, NetStruct, is not in the port yet.
std::uint64_t NetStruct::s_changeCounter = 0;

// 0x36d204 NetStructMember::~NetStructMember()   (D1, complete-object destructor)
// The original body is empty; the vptr store is the compiler's.
NetStructMember::~NetStructMember() {
}

// 0x36d520 NetStructMember::~NetStructMember()   (D0, deleting destructor)
// skipped: compiler-generated deleting destructor (vptr reset to NetStructMember, then
// CustomFree(this)). C++ delete runs ~NetStructMember and operator delete.

// 0x36d1f8 NetStructMember::PostLoad(unsigned int)
// The empty virtual (vtable +0x0c, BX LR). NetStruct::Load calls it on every member after a load that
// stored data; NetStructInterpolatedRangedFloat overrides it (net_struct_interpolation.hpp).
void NetStructMember::PostLoad(std::uint32_t /*time*/) {
}

// 0x36d1fc NetStructMember::GetSizeBits()
int NetStructMember::GetSizeBits() const {
    return sizeBits_;  // +0x04
}

// 0x81510c NetStructMember::Load(NetBitStream &)
// Members with at most one bit of size have no presence bit and always read. Others read a
// presence bit first and return 0 without reading when it is clear.
bool NetStructMember::Load(NetBitStream& stream) {
    if (static_cast<std::uint32_t>(sizeBits_) <= 1u) {  // +0x04
        Read(stream);
        return true;
    }
    if (stream.ReadBit() == 0) {
        return false;
    }
    Read(stream);
    return true;
}

// 0x815168 NetStructMember::Serialize(NetBitStream &, unsigned int)
// For members with a presence bit: when a bit of mask is in sentMask_ (+0x14) write a 0 bit and
// return 0. Otherwise write a 1 bit and write the value.
bool NetStructMember::Serialize(NetBitStream& stream, std::uint32_t mask) {
    if (static_cast<std::uint32_t>(sizeBits_) > 1u) {  // +0x04
        if ((mask & sentMask_) != 0) {                 // +0x14
            stream.WriteBit(0);
            return false;
        }
        stream.WriteBit(1);
    }
    Write(stream);
    return true;
}

// 0x814f70 NetStructMember::IsChanged()
// Returns the changed flag and clears it.
bool NetStructMember::IsChanged() {
    bool result = changed_;  // +0x1c
    changed_ = false;
    return result;
}

// 0x814f84 NetStructMember::SetChanged()
// Marks the member changed, copies the change mask (+0x18) into both masks, stamps the change with
// the current counter value and advances the counter.
NetStructMember* NetStructMember::SetChanged() {
    std::uint32_t mask = changeMask_;          // +0x18
    changed_ = true;                           // +0x1c
    sentMask_ = mask;                          // +0x14
    ackMask_ = mask;                           // +0x10
    changeStamp_ = NetStruct::s_changeCounter; // +0x08
    ++NetStruct::s_changeCounter;
    return this;
}

// 0x814fd8 NetStructMember::SetAcked()
void NetStructMember::SetAcked() {
    sentMask_ = 0xffffffffu;  // +0x14 = -1
    ackMask_ = 0xffffffffu;   // +0x10 = -1
}

// 0x814fe8 NetStructMember::SetAcked(unsigned int)
void NetStructMember::SetAcked(std::uint32_t bits) {
    sentMask_ |= bits;  // +0x14
    ackMask_ |= bits;   // +0x10
}

// 0x815004 NetStructMember::AcknowledgeChange(unsigned int, unsigned long long)
// The acknowledgement counts only when the change is older than the stamp given.
void NetStructMember::AcknowledgeChange(std::uint32_t bits, std::uint64_t stamp) {
    if (changeStamp_ < stamp) {  // +0x08
        SetAcked(bits);
    }
}

// 0x815028 NetStructMember::AreChangesAcknowledgedBy(unsigned int)
bool NetStructMember::AreChangesAcknowledgedBy(std::uint32_t bits) const {
    return (bits & ackMask_) != 0;  // +0x10
}

// 0x81503c NetStructMember::SetSentFlag(unsigned int, bool, unsigned long long)
// Sets or clears bits in sentMask_ (+0x14), only when the change is older than the stamp given.
void NetStructMember::SetSentFlag(std::uint32_t bits, bool sent, std::uint64_t stamp) {
    if (changeStamp_ < stamp) {  // +0x08
        if (sent) {
            sentMask_ |= bits;
        } else {
            sentMask_ &= ~bits;
        }
    }
}

// 0x815078 NetStructMember::HasDataToSend(unsigned int, unsigned int)
// Keeps only the bits of keep in both masks. Returns true when none of mask is still in sentMask_.
bool NetStructMember::HasDataToSend(std::uint32_t keep, std::uint32_t mask) {
    std::uint32_t kept = keep & sentMask_;  // +0x14
    ackMask_ &= keep;                       // +0x10
    sentMask_ = kept;                       // +0x14
    return (mask & kept) == 0;
}

// 0x8150a0 NetStructMember::GetFrameTime()
// Returns GetOnline()->+0x1c: GetOnline is the thunk to COnline::GetInstance and +0x1c is the elapsed-time word
// that COnline::ReceivePackets stores. The object pointer is not used (the function is static here).
int NetStructMember::GetFrameTime() {
    return COnline::GetInstance()->GetElapsedTime();
}

// 0x8150b0 NetStructMember::AreChangesAcknowledged()
// The original asks CMatching whether this device is the server. If so it tests the room mask against ackMask_
// (+0x10). Otherwise it maps the member id from CMatching's vtable +0x74 to its mask with vtable +0x84 and
// tests that mask. CMatching is the CMatching of net-session-online (deps/matching.hpp).
bool NetStructMember::AreChangesAcknowledged() {
    CMatching* matching = CMatching::Get();
    if (matching->IsServer()) {
        return matching->TestRoomMask(ackMask_);  // CMatching::TestRoomMask (0x8001d4), arg +0x10
    }
    const int member = matching->ServerMemberId();                  // vtable +0x74
    const std::uint32_t mask = matching->MemberBit(member);         // vtable +0x84
    return AreChangesAcknowledgedBy(mask);
}
