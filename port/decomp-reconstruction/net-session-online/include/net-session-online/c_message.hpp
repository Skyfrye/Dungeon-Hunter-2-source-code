// CMessage: base class of every multiplayer message (the CMsg* subclasses).
// It owns the routing header (type, destination mask, sender), the
// acknowledgement and sent bookkeeping, and the type registry that maps type
// names to creator functions. Offsets are the original 32-bit layout.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

#include "net-transport/net_bit_stream.hpp"

class CMessage {
public:
    using CreatorFn = CMessage* (*)(bool);

    static constexpr int kMaxTypes = 0x100;
    static constexpr std::size_t kTypeNameLen = 0x40;

    // Header block exchanged verbatim by ReadHeader / WriteHeader (16 bytes at +0x04).
    struct Header {
        std::uint32_t type = 0;       // +0x04 low byte is the wire type id
        std::uint32_t destMask = 0;   // +0x08
        std::int32_t sender = 0;      // +0x0c
        std::uint32_t reserved = 0;   // +0x10
    };
    static_assert(sizeof(Header) == 16, "wire header is 16 bytes");

    CMessage() = default;
    // 0x80a61c _ZN8CMessageC1EPKcb (C2 0x80a540 is the same body, skipped).
    // Partial: the type-name string at +0x14 is not modelled. The bool gates the serial
    // number at +0x04 (it is passed through from the derived constructors).
    CMessage(const char* typeName, bool withSerial);
    virtual ~CMessage();                                    // D1 / D2 / D0

    // 0x80a6f8 _ZN8CMessage22CompareMsgSendPriorityEPS_S0_: orders by the +0x38 word.
    static bool CompareMsgSendPriority(const CMessage* a, const CMessage* b);

    // Vtable slots (names not all recovered, see NOTES.md).
    virtual void* GetDataPtr();                             // +0x00
    virtual void PreInitialize();                           // +0x04 (unnamed slot)
    virtual std::uint32_t GetDataSize() const;              // +0x08
    virtual void ResetData();                               // +0x0c
    virtual std::uint32_t WriteData(NetBitStream& stream);  // +0x10
    virtual std::uint32_t ReadData(NetBitStream& stream);   // +0x14
    virtual CMessage* Duplicate();                          // +0x20

    bool IsReliable() const { return reliable_; }
    void Acknowledge(std::uint32_t mask) { ackMask_ |= mask; }
    bool IsFrom(int memberId) const { return header_.sender == memberId; }
    // Header and queue fields that CMessaging reads directly in the original.
    std::int32_t Sender() const { return header_.sender; }                  // +0x0c
    std::uint32_t Serial() const { return header_.type; }                   // +0x04 (serial when requested)
    std::uint32_t DestMask() const { return header_.destMask; }             // +0x08
    std::uint8_t WireTypeId() const { return static_cast<std::uint8_t>(header_.reserved); }  // +0x10 low byte
    std::uint32_t AckMask() const { return ackMask_; }                      // +0x40
    // +0x3c: set once the message is finished with its queue (expired on the receive side,
    // sent and acknowledged on the send side). Queues skip it and PurgeMessagesFromQueue removes it.
    bool IsFinished() const { return finished_; }
    void SetFinished() { finished_ = true; }
    // The byte at +0x32 (set by the CMsg* SetProperties; AddToSendQueue resets the packet manager's send time when it is set).
    bool Flag32() const { return flag32_; }

    void Initialize();
    void Serialize(NetBitStream& stream);
    std::uint32_t WriteHeader(NetBitStream& stream);
    std::uint32_t ReadHeader(NetBitStream& stream);

    bool IsFor(int memberId) const;
    bool IsForServer() const;
    bool IsForMe() const;
    bool IsFromMe() const;
    bool IsFromServer() const;
    bool IsLocal() const;
    short GetHash() const;
    void SetSentFlag(int memberId, bool sent);
    void SetDestinationMask(std::uint32_t mask);
    bool IsAcknowledgedBy(int memberId) const;
    void AcknowledgeMember(int memberId);
    bool MustForward() const;
    bool HasBeenSentTo(int memberId) const;
    bool IsAcknowledged() const;
    bool IsExpired() const;

    // Registry: type names map to creator functions. The original keeps these
    // as static arrays in the class.
    static void InitializeMessageRegistration();
    static void TerminateMessageRegistration();
    // Sets the serial counter (CMessage::m_messageSerial) back to 0. CMessaging::ResetQueues
    // does this on its map-reset path.
    static void ResetSerial() { messageSerial_ = 0; }
    static CMessage* CreateMessage(int typeId, bool arg);
    static CMessage* CreateMessage(const char* typeName, bool arg);
    static int FindTypeId(const char* typeName);
    static int RegisterTypeStr(const char* typeName);
    static int RegisterMessageType(const char* typeName, CreatorFn creator);
    static CMessage* Unserialize(NetBitStream& stream);
    static short CreateHash(int memberId, int type);

protected:
    // Field names are inferred from use; see NOTES.md for the layout table.
    Header header_;                       // +0x04 .. +0x13
    // The type name of the concrete message (STL string at +0x14..+0x2b in the original).
    // SetDefaultProperties fills the default text; each CMsg* constructor and SetProperties
    // assign their own class name.
    std::string typeName_;                // +0x14
    std::uint32_t sendMode_ = 0;          // +0x2c: 0 = route via server, 1 = remote, >1 never local
    bool reliable_ = false;               // +0x30
    bool local_ = false;                  // +0x31
    bool flag32_ = false;                 // +0x32 (set by the CMsg* SetProperties)
    bool includeLocalMember_ = false;     // +0x33
    std::uint32_t timestamp_ = 0;         // +0x34
    // +0x38: an int in the original. SetDefaultProperties stores 100 and the
    // SetSentFlag check tests it as a flag. The name is inferred; CompareMsgSendPriority
    // orders messages by it, so it is also a priority.
    std::int32_t trackSent_ = 0;          // +0x38
    bool finished_ = false;               // +0x3c (name inferred from PurgeMessagesFromQueue; see IsFinished)
    std::uint32_t ackMask_ = 0;           // +0x40
    std::uint32_t unk_44_ = 0;            // +0x44 not accessed by any recovered function
    std::uint32_t sentMask_ = 0;          // +0x48
    std::uint32_t lifetime_ = 0;          // +0x4c

private:
    // 0x80a33c _ZN8CMessage20SetDefaultPropertiesEv: sets the type name to
    // "TYPE STRING NOT DEFINED", then the flags and words.
    void SetDefaultProperties();

    // The serial counter (CMessage::m_messageSerial in the original).
    static inline std::uint32_t messageSerial_ = 0;
    static inline char messageTypeArray_[kMaxTypes][kTypeNameLen] = {};
    static inline CreatorFn messageCreationArray_[kMaxTypes] = {};
    static inline bool registrationInitialized_ = false;
    static inline bool registrationTerminated_ = false;
};
