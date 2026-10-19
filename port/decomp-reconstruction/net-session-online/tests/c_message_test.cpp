#include "net-session-online/c_message.hpp"

#include <cstdio>
#include <cstring>

#include "net-session-online/deps/matching.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/c_online.hpp"  // COnline::GetInstance / SetCounterForTest: IsExpired reads its +0x28 word

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Matching stand-in: member n owns bit (1 << n). Server is 1, local player is 2.
class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int memberId) const override { return 1u << memberId; }
    int LocalMemberId() const override { return 2; }
    int ServerMemberId() const override { return 1; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return isServer; }
    std::uint32_t GetRoomMask() const override { return 0x7; }
    bool isServer = false;
};

// Concrete message with a 4-byte payload.
class TestMsg : public CMessage {
public:
    void* GetDataPtr() override { return payload; }
    std::uint32_t GetDataSize() const override { return 4; }

    void SetHeader(std::uint32_t type, std::uint32_t mask, std::int32_t sender) {
        header_.type = type;
        header_.reserved = type;  // +0x10, the byte Serialize writes as the wire type id (header_.type is the serial)
        header_.destMask = mask;
        header_.sender = sender;
    }
    void SetPayload(const char* text) { std::memcpy(payload, text, 4); }
    const char* Payload() const { return reinterpret_cast<const char*>(payload); }
    void SetTimes(std::uint32_t ts, std::uint32_t life) { timestamp_ = ts; lifetime_ = life; }
    void SetSendMode(std::uint32_t mode) { sendMode_ = mode; }
    void SetLocal(bool local) { local_ = local; }

    unsigned char payload[4] = {};
};

static CMessage* MakeTest(bool) { return new TestMsg(); }

int main() {
    FakeMatching matching;
    CMatching::Set(&matching);
    OnlineClockStorage() = 1000;

    // Registry.
    const int typeId = CMessage::RegisterMessageType("TestMsgA", MakeTest);
    CHECK(typeId >= 0);
    CHECK(CMessage::FindTypeId("TestMsgA") == typeId);
    CHECK(CMessage::FindTypeId("NoSuchType") == -1);
    CHECK(CMessage::RegisterTypeStr("TestMsgA") == typeId);
    CHECK(CMessage::CreateMessage(typeId, false) != nullptr);
    CHECK(CMessage::CreateMessage(0x1ff, false) == nullptr);

    // Membership queries use the destination mask and the sender.
    TestMsg msg;
    msg.SetHeader(static_cast<std::uint32_t>(typeId), 0, 2);
    msg.SetDestinationMask(matching.MemberBit(1));  // mask targets the server
    CHECK(msg.IsForServer());
    CHECK(!msg.IsForMe());
    CHECK(msg.IsFromMe());
    CHECK(!msg.IsFromServer());
    CHECK(msg.GetHash() == static_cast<short>((matching.MemberBit(2) & 0xf) + typeId * 0x10));

    // Send mode 0 routes through the server: the destination becomes the server bit.
    TestMsg routed;
    routed.SetHeader(static_cast<std::uint32_t>(typeId), 0, 1);
    routed.SetSendMode(0);
    routed.SetDestinationMask(0xff);
    CHECK(routed.IsFor(1));
    CHECK(routed.IsFromServer());
    CHECK(routed.IsLocal());

    // Acknowledgements.
    TestMsg acked;
    acked.SetHeader(static_cast<std::uint32_t>(typeId), 0, 2);
    CHECK(!acked.IsAcknowledgedBy(3));
    acked.AcknowledgeMember(3);
    CHECK(acked.IsAcknowledgedBy(3));
    acked.Acknowledge(matching.MemberBit(0));
    CHECK(acked.IsAcknowledgedBy(0));

    // Expiry. CMessage::IsExpired is `timestamp_ + lifetime_ < COnline::GetCounter()` and the deadline is
    // compared against COnline's RECEIVE COUNTER (+0x28), not the clock: the listing reads `[GetOnline(),#0x28]`
    // (asm 0x80a128, CMP R4,R0 / MOVCS 0 / MOVCC 1), so the equality case is NOT expired (CS = deadline >= counter returns 0). This test used to drive
    // the boundary through the OnlineClockStorage() stand-in, which IsExpired never reads, so it silently stopped
    // testing anything once the body was corrected. It sets the counter now.
    TestMsg timed;
    timed.SetHeader(static_cast<std::uint32_t>(typeId), 0, 2);
    CHECK(!timed.IsExpired());  // timestamp 0 never expires, whatever the counter says
    timed.SetTimes(1000, 50);   // deadline 1050
    COnline::GetInstance()->SetCounterForTest(1049);
    CHECK(!timed.IsExpired());  // deadline > counter
    COnline::GetInstance()->SetCounterForTest(1050);
    CHECK(!timed.IsExpired());  // deadline == counter is not yet expired (MOVCS returns 0)
    COnline::GetInstance()->SetCounterForTest(1051);
    CHECK(timed.IsExpired());   // deadline < counter

    // Serialize and unserialize round trip, including the 16-byte header.
    TestMsg source;
    source.SetHeader(static_cast<std::uint32_t>(typeId), 0x6, 2);
    source.SetPayload("wxyz");
    NetBitStream wire(64);
    source.Serialize(wire);
    CMessage* received = CMessage::Unserialize(wire);
    CHECK(received != nullptr);
    if (received != nullptr) {
        auto* typed = static_cast<TestMsg*>(received);
        CHECK(std::strncmp(typed->Payload(), "wxyz", 4) == 0);
        CHECK(typed->IsFor(1));  // mask 0x6 covers members 1 and 2
        CHECK(typed->IsFor(2));
        CHECK(!typed->IsFor(0));
        CHECK(typed->IsFrom(2));
        delete received;
    }

    // Duplicate is a serialize + unserialize of the same message.
    TestMsg dupSource;
    dupSource.SetHeader(static_cast<std::uint32_t>(typeId), 0, 2);
    dupSource.SetPayload("dup!");
    CMessage* dup = dupSource.Duplicate();
    CHECK(dup != nullptr);
    if (dup != nullptr) {
        CHECK(std::strncmp(static_cast<TestMsg*>(dup)->Payload(), "dup!", 4) == 0);
        delete dup;
    }

    // Constructor (name, serial flag): local sender and the SetDefaultProperties flags.
    class NamedMsg : public CMessage {
    public:
        explicit NamedMsg(bool withSerial) : CMessage("TestMsgA", withSerial) {}
    };
    NamedMsg named(false);
    CHECK(named.IsFromMe());   // sender is the local member (2)
    CHECK(named.IsReliable());  // SetDefaultProperties sets reliable

    // CompareMsgSendPriority orders by the +0x38 word: 100 for a constructed message, 0 for a
    // default-constructed one.
    CMessage plain;
    CHECK(CMessage::CompareMsgSendPriority(&plain, &named) == true);
    CHECK(CMessage::CompareMsgSendPriority(&named, &plain) == false);
    CHECK(CMessage::CompareMsgSendPriority(&plain, &plain) == false);

    std::printf("%s\n", failures ? "c_message: FAILED" : "c_message: ok");
    CMatching::Set(nullptr);
    return failures != 0;
}
