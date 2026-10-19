#include "net-session-online/c_messaging.hpp"

#include <cstdio>

#include "net-session-online/deps/matching.hpp"
#include "messaging_stand_ins_for_tests.hpp"  // weak CPacketManager and CMatching::Get stand-ins (see the header)

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Member n owns bit (1 << n). Server is 1, local player is 2.
class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int memberId) const override { return 1u << memberId; }
    int LocalMemberId() const override { return 2; }
    int ServerMemberId() const override { return 1; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return false; }
    std::uint32_t GetRoomMask() const override { return 0x7; }
};

int main() {
    FakeMatching matching;
    CMatching::Set(&matching);

    CHECK(CMessaging::IsInitialized() == 0);
    CHECK(CMessaging::Update() == 0);
    CMessaging::SetInstanceForTest(new CMessaging(), false);
    CHECK(CMessaging::IsInitialized() == 0);
    CMessaging::SetInstanceForTest(nullptr, false);

    CMessaging::SetInstanceForTest(new CMessaging(), true);
    CHECK(CMessaging::IsInitialized() == 1);
    CMessaging::Terminate();
    CHECK(CMessaging::IsInitialized() == 0);
    CMessaging::Terminate();  // no instance: no-op

    // Initialize creates the singleton once; GetInstance returns the same one.
    CHECK(CMessaging::Initialize() == 0);
    CHECK(CMessaging::IsInitialized() == 1);
    CMessaging* first = CMessaging::GetInstance();
    CHECK(first != nullptr);
    CHECK(CMessaging::GetInstance() == first);
    CHECK(CMessaging::Initialize() == 0);
    CHECK(CMessaging::GetInstance() == first);
    CMessaging::Terminate();
    CHECK(CMessaging::IsInitialized() == 0);

    // Lost and acknowledged packet callbacks do nothing when the packet map is empty.
    CMessaging::Initialize();
    CMessaging::sProcessLostPacket(3, 4);
    CMessaging::sProcessAcknowledgedPacket(3, 4);
    CMessaging::Terminate();

    // Send path: an empty queue writes a single 0 bit and returns 0.
    CMessaging::Initialize();
    CMessaging* box = CMessaging::GetInstance();
    CHECK(box->AreMessagesAcknowledged(nullptr) == 0);
    NetBitStream empty(16);
    CHECK(CMessaging::sWritePacketData(2, 7, empty) == 0);
    CHECK(empty.WritePosition() == 1);  // bits written

    // SendMsg queues the message; it is acknowledged for the local member, so PackMessages
    // skips it and WritePacketData writes the 1-bit header and the 0-bit terminator.
    box->SendMsg(new CMessage());
    CHECK(box->AreMessagesAcknowledged(nullptr) == 1);
    NetBitStream packed(16);
    CHECK(box->WritePacketData(2, 7, packed) == 1);
    CHECK(packed.WritePosition() == 2);  // bits written

    // Receive path: AddToRecvQueue and ProcessRecvQueue keep the queue consistent (no nulls).
    box->AddToRecvQueue(new CMessage());
    box->ProcessRecvQueue();
    // The default message has wire type id 0, and FindTypeId("") is 0 while no type is registered.
    CHECK(box->IsMessageReceived("") == true);

    // AddMissingMessages with an empty range is a no-op.
    box->AddMissingMessages(2, 5, 5);
    CMessaging::Terminate();
    CMatching::Set(nullptr);

    std::printf("%s\n", failures ? "c_messaging: FAILED" : "c_messaging: ok");
    return failures != 0;
}
