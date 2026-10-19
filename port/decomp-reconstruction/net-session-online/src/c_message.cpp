#include "net-session-online/c_message.hpp"
#include "net-transport/socket_platform.hpp"

#include <cstring>

#include "net-session-online/c_online.hpp"
#include "net-session-online/deps/matching.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"  // OnlineNowMs (no longer used here; kept for the other stand-ins)

namespace {
CMatching& Matching() { return *CMatching::Get(); }
}  // namespace

// 0x80a160 _ZN8CMessageD1Ev / 0x80a194 _ZN8CMessageD2Ev
// Destroys typeName_ (the std::string at +0x14), as the original does.
CMessage::~CMessage() = default;

// 0x80a61c _ZN8CMessageC1EPKcb (C2 0x80a540 is the same body; skipped).
// Hex-Rays and the asm agree on every store: the vtable, the empty typeName_ at +0x14 (SGI string init), the
// finished byte at +0x3c = 0, +0x40..+0x4c zeroed, the type id byte at +0x10 from FindTypeId(name), the
// serial at +0x04 (only when requested), the sender at +0x0c, then
// `lifetime_ = LDR [GetOnline(),#0x28]` at +0x4c and SetDefaultProperties last.
// The sender is CMatching's local member id, reached through the matching vtable slot +0x6c, and the
// lifetime word is COnline's receive counter (+0x28, COnline::GetCounter), NOT the clock.
CMessage::CMessage(const char* typeName, bool withSerial) {
    header_ = Header{};
    header_.reserved = static_cast<std::uint32_t>(FindTypeId(typeName)) & 0xffu;  // +0x10 byte
    header_.sender = Matching().LocalMemberId();                                  // +0x0c
    header_.type = withSerial ? messageSerial_++ : 0;                             // +0x04
    lifetime_ = COnline::GetInstance()->GetCounter();                             // +0x4c <- GetOnline()+0x28
    SetDefaultProperties();
}

// 0x80a33c _ZN8CMessage20SetDefaultPropertiesEv
// The original's string fill (its copy loop is decompiled garbage) always leaves the
// text "TYPE STRING NOT DEFINED" in the string at +0x14.
void CMessage::SetDefaultProperties() {
    typeName_ = "TYPE STRING NOT DEFINED";  // +0x14
    trackSent_ = 100;        // +0x38
    timestamp_ = 0;          // +0x34
    sendMode_ = 0;           // +0x2c
    includeLocalMember_ = true;  // +0x33
    reliable_ = true;        // +0x30
    local_ = false;          // +0x31
    flag32_ = false;         // +0x32
}

// 0x80a6f8 _ZN8CMessage22CompareMsgSendPriorityEPS_S0_
// Reconstructed. The third argument of the Hex-Rays signature is unused.
bool CMessage::CompareMsgSendPriority(const CMessage* a, const CMessage* b) {
    return a->trackSent_ < b->trackSent_;
}

// 0x31d8d0 _ZN8CMessage10GetDataPtrEv
void* CMessage::GetDataPtr() { return nullptr; }

// Unnamed vtable slot +0x04. Its body is not recovered; the default is a no-op.
void CMessage::PreInitialize() {}

// 0x809998 _ZNK8CMessage11GetDataSizeEv
std::uint32_t CMessage::GetDataSize() const { return 0; }

// 0x8099f4 _ZN8CMessage9ResetDataEv
void CMessage::ResetData() {
    void* data = GetDataPtr();
    if (data != nullptr) {
        std::memset(data, 0, GetDataSize());
    }
}

// 0x809b10 _ZN8CMessage9WriteDataER12NetBitStream
std::uint32_t CMessage::WriteData(NetBitStream& stream) {
    const void* data = GetDataPtr();
    if (data == nullptr) {
        return 0;
    }
    const std::uint32_t size = GetDataSize();
    stream.WriteByteArray(data, size);
    return size;
}

// 0x809aa0 _ZN8CMessage8ReadDataER12NetBitStream
std::uint32_t CMessage::ReadData(NetBitStream& stream) {
    void* data = GetDataPtr();
    if (data == nullptr) {
        return 0;
    }
    const std::uint32_t size = GetDataSize();
    stream.ReadByteArray(data, size);
    return size;
}

// The message-type registry is process-wide.
// 0x8099a0 _ZN8CMessage28TerminateMessageRegistrationEv
// The decompiled body stores 0 into the terminated flag; the name suggests 1.
// Kept as decompiled, see NOTES.md.
void CMessage::TerminateMessageRegistration() { registrationTerminated_ = false; }

// 0x809a38 _ZN8CMessage29InitializeMessageRegistrationEv
void CMessage::InitializeMessageRegistration() {
    if (!registrationInitialized_) {
        std::memset(messageTypeArray_, 0, sizeof messageTypeArray_);
        std::memset(messageCreationArray_, 0, sizeof messageCreationArray_);
        registrationInitialized_ = true;
    }
}

// 0x8099c8 _ZN8CMessage10IsReliableEv: CMessage::IsReliable is inline in the header.

// 0x8099d0 _ZN8CMessage11AcknowledgeEj: inline in the header.

// 0x8099e0 _ZN8CMessage6IsFromEi: inline in the header.

// Writes the 16-byte header block.
// 0x809b60 _ZN8CMessage11WriteHeaderER12NetBitStream
std::uint32_t CMessage::WriteHeader(NetBitStream& stream) {
    stream.WriteByteArray(&header_, sizeof header_);
    return sizeof header_;
}

// 0x809af0 _ZN8CMessage10ReadHeaderER12NetBitStream
std::uint32_t CMessage::ReadHeader(NetBitStream& stream) {
    stream.ReadByteArray(&header_, sizeof header_);
    return sizeof header_;
}

// 0x809b80 _ZN8CMessage9SerializeER12NetBitStream
void CMessage::Serialize(NetBitStream& stream) {
    stream.WriteByte(WireTypeId(), 8);  // LDRB [this,#0x10]: the type id byte, not the serial at +0x04 (the old body wrote header_.type, so a receiver built the wrong message class)
    WriteHeader(stream);
    WriteData(stream);
}

// 0x809bc4 _ZN8CMessage5IsForEi
bool CMessage::IsFor(int memberId) const {
    const std::uint32_t mask = header_.destMask;
    return (Matching().MemberBit(memberId) & mask) != 0;
}

// 0x809bf4 _ZN8CMessage11IsForServerEv
bool CMessage::IsForServer() const { return IsFor(Matching().ServerMemberId()); }

// 0x809c1c _ZN8CMessage7IsForMeEv
bool CMessage::IsForMe() const { return IsFor(Matching().LocalMemberId()); }

// 0x809c44 _ZN8CMessage8IsFromMeEv
bool CMessage::IsFromMe() const { return IsFrom(Matching().LocalMemberId()); }

// 0x809c6c _ZN8CMessage12IsFromServerEv
bool CMessage::IsFromServer() const { return IsFrom(Matching().ServerMemberId()); }

// 0x809c94 _ZN8CMessage7IsLocalEv
bool CMessage::IsLocal() const {
    if (local_) {
        return true;
    }
    if (!IsFromServer()) {
        return false;
    }
    if (sendMode_ > 1) {
        return false;
    }
    return (1 - sendMode_) != 0;
}

// 0x809ccc _ZN8CMessage10CreateHashEii
short CMessage::CreateHash(int memberId, int type) {
    const std::uint32_t bit = Matching().MemberBit(memberId);
    return static_cast<short>((bit & 0xf) + static_cast<std::uint32_t>(type) * 0x10);
}

// 0x809cfc _ZN8CMessage7GetHashEv
// The original is a tail call to CreateHash, so the return value passes through.
short CMessage::GetHash() const { return CreateHash(header_.sender, header_.type); }

// 0x809d08 _ZN8CMessage11SetSentFlagEib
void CMessage::SetSentFlag(int memberId, bool sent) {
    if (!trackSent_) {
        sentMask_ = 0;
        return;
    }
    const std::uint32_t bit = Matching().MemberBit(memberId);
    if (sent) {
        sentMask_ |= bit;
        return;
    }
    sentMask_ = (bit == 0) ? (sentMask_ & 1) : 0;
}

// 0x809d70 _ZN8CMessage18SetDestinationMaskEj
void CMessage::SetDestinationMask(std::uint32_t mask) {
    CMatching& matching = Matching();
    header_.destMask = mask;
    if (sendMode_ == 0) {
        header_.destMask = matching.MemberBit(matching.ServerMemberId());
    }
    if (!IsLocal()) {
        const std::uint32_t localBit = matching.MemberBit(matching.LocalMemberId());
        if (includeLocalMember_) {
            header_.destMask = localBit | header_.destMask;
        } else {
            header_.destMask = header_.destMask & ~localBit;
        }
    }
}

// 0x809e44 _ZN8CMessage16IsAcknowledgedByEi
bool CMessage::IsAcknowledgedBy(int memberId) const {
    const std::uint32_t ackMask = ackMask_;
    return (Matching().MemberBit(memberId) & ackMask) != 0;
}

// 0x809e74 _ZN8CMessage17AcknowledgeMemberEi
void CMessage::AcknowledgeMember(int memberId) {
    const std::uint32_t prior = ackMask_;
    ackMask_ = Matching().MemberBit(memberId) | prior;
}

// 0x809ea4 _ZN8CMessage10InitializeEv
void CMessage::Initialize() {
    PreInitialize();
    ResetData();
    const std::uint32_t prior = ackMask_;
    std::uint32_t bit = 0;
    if (!includeLocalMember_) {
        bit = Matching().MemberBit(header_.sender);
    }
    ackMask_ = bit | prior;
}

// 0x809efc _ZN8CMessage13CreateMessageEib
CMessage* CMessage::CreateMessage(int typeId, bool arg) {
    if (typeId < 0 || typeId >= kMaxTypes || messageCreationArray_[typeId] == nullptr) {
        // Deviation: the original calls through a null or out-of-range slot.
        return nullptr;
    }
    CMessage* message = messageCreationArray_[typeId](arg);
    if (message != nullptr) {
        message->Initialize();
    }
    return message;
}

// 0x809f34 _ZN8CMessage11UnserializeER12NetBitStream
// The wire type id is read as a signed char, as in the original.
CMessage* CMessage::Unserialize(NetBitStream& stream) {
    const int typeId = static_cast<std::int8_t>(stream.ReadByte(8));
    CMessage* message = CreateMessage(typeId, false);
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] CMessage::Unserialize type %d (%s) -> %p\n", typeId, typeId >= 0 && typeId < kMaxTypes ? messageTypeArray_[typeId] : "?", static_cast<void*>(message));
#endif
    if (message == nullptr) {
        return nullptr;
    }
    message->ReadHeader(stream);
    message->ReadData(stream);
    return message;
}

// 0x809f78 _ZN8CMessage9DuplicateEv
CMessage* CMessage::Duplicate() {
    const std::uint32_t size = GetDataSize();
    NetBitStream stream((size + 0x10) * 2);
    Serialize(stream);
    return Unserialize(stream);
}

// 0x809fd0 _ZN8CMessage11MustForwardEv
bool CMessage::MustForward() const {
    CMatching& matching = Matching();
    if (!matching.IsServer() || IsLocal()) {
        return false;
    }
    const std::uint32_t serverBit = matching.MemberBit(matching.ServerMemberId());
    return (header_.destMask & ~serverBit) != 0;
}

// 0x80a038 _ZN8CMessage13HasBeenSentToEi
bool CMessage::HasBeenSentTo(int memberId) const {
    CMatching& matching = Matching();
    std::uint32_t serverBit = matching.MemberBit(matching.ServerMemberId());
    const std::uint32_t destMask = header_.destMask;
    if (matching.IsServer()) {
        serverBit = 0;
    }
    const std::uint32_t sent = sentMask_;
    const std::uint32_t memberBit = matching.MemberBit(memberId);
    return ((~(serverBit | destMask) | sent) & memberBit) != 0;
}

// 0x80a0b4 _ZN8CMessage14IsAcknowledgedEv
bool CMessage::IsAcknowledged() const {
    CMatching& matching = Matching();
    if (matching.IsServer()) {
        std::uint32_t roomMask = matching.GetRoomMask() & header_.destMask;
        return (roomMask & ackMask_) == roomMask;
    }
    return IsAcknowledgedBy(matching.MemberBit(matching.ServerMemberId()));
}

// 0x80a128 _ZN8CMessage9IsExpiredEv
// Asm: R4 = timestamp_ (+0x34); if it is 0, return 0; R4 += lifetime_ (+0x4C); R0 = [GetOnline(),#0x28]
// (COnline's receive counter, NOT the clock); CMP R4,R0; MOVCS R0,#0; MOVCC R0,#1. CS is the unsigned
// deadline >= counter case, which answers NOT expired; only deadline < counter (CC) is expired.
// (An earlier pass read MOVCS as "expired" and used <=, expiring one tick early; corrected in the VF2 audit.)
bool CMessage::IsExpired() const {
    if (timestamp_ == 0) {
        return false;
    }
    const std::uint32_t deadline = timestamp_ + lifetime_;
    return deadline < COnline::GetInstance()->GetCounter();
}

// 0x80a1e4 _ZN8CMessage10FindTypeIdEPKc
int CMessage::FindTypeId(const char* typeName) {
    for (int i = 0; i < kMaxTypes; ++i) {
        if (std::strncmp(messageTypeArray_[i], typeName, kTypeNameLen) == 0) {
            return i;
        }
    }
    return -1;
}

// 0x80a244 _ZN8CMessage13CreateMessageEPKcb
CMessage* CMessage::CreateMessage(const char* typeName, bool arg) {
    return CreateMessage(FindTypeId(typeName), arg);
}

// 0x80a25c _ZN8CMessage15RegisterTypeStrEPKc
int CMessage::RegisterTypeStr(const char* typeName) {
    for (int i = 0; i < kMaxTypes; ++i) {
        if (std::strncmp(messageTypeArray_[i], typeName, kTypeNameLen) == 0) {
            return i;
        }
        if (messageTypeArray_[i][0] == '\0') {
            std::strncpy(messageTypeArray_[i], typeName, kTypeNameLen);
            return i;
        }
    }
    return -1;
}

// 0x80a2e8 _ZN8CMessage19RegisterMessageTypeEPKcPFPS_bE
int CMessage::RegisterMessageType(const char* typeName, CreatorFn creator) {
    if (registrationTerminated_) {
        return -1;
    }
    const int typeId = RegisterTypeStr(typeName);
    if (typeId != -1) {
        messageCreationArray_[typeId] = creator;
    }
    return typeId;
}
