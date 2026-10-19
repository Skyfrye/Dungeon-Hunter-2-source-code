// Test for the CMessaging batch r1n-net-session-online-CMessaging-7b9dc9-0: packet slot registration,
// the named queue searches (signed wire type ids), finished-message purging, the sequence bookkeeping
// (16-bit hashes, including hashes of 0x8000 and up), PackMessages' size check, and the local-message
// branch of AddToSendQueue.
#include <cstdint>
#include <cstdio>
#include <set>

#include "net-session-online/c_messaging.hpp"
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

// A message with a chosen sender, serial, wire type and destination mask. The fields are set in the
// header the way CMessage's constructor would set them.
class TestMessage : public CMessage {
public:
    TestMessage(int sender, int serial, const char* type, std::uint32_t destMask = 0) {
        header_.sender = sender;
        header_.type = static_cast<std::uint32_t>(serial);
        header_.reserved = static_cast<std::uint32_t>(CMessage::FindTypeId(type)) & 0xffu;
        header_.destMask = destMask;
    }
};

int main() {
    FakeMatching matching;
    CMatching::Set(&matching);
    CMessage::RegisterTypeStr("TEST_A");  // type id 0
    CMessage::RegisterTypeStr("TEST_B");  // type id 1

    // The constructor registers packet slot 1 with the four callbacks; the destructor unregisters it.
    // (The registration itself is not checked here: the stand-in does not record it.)
    CMessaging* box = new CMessaging();
    CHECK(box->AreMessagesAcknowledged(nullptr) == 0);

    // Empty queues: the unnamed search gives 0; the named search gives 1 (nothing pending).
    CHECK(box->AreMessagesAcknowledged(nullptr) == 0);
    CHECK(box->AreMessagesAcknowledged("TEST_A") == 1);
    box->PrintRecvQueue();
    box->PrintSendQueue();

    // Send queue: a message from another member is queued and acknowledged for the local member.
    // It counts as pending for the named search until it is finished.
    TestMessage* sent = new TestMessage(9, 1, "TEST_A");
    box->AddToSendQueue(sent);
    CHECK(box->AreMessagesAcknowledged(nullptr) == 1);
    CHECK(box->AreMessagesAcknowledged("TEST_A") == 0);
    CHECK(box->AreMessagesAcknowledged("TEST_B") == 1);
    sent->SetFinished();
    CHECK(box->AreMessagesAcknowledged("TEST_A") == 1);
    // ProcessSendQueue finishes the message (it is not a reliable unacknowledged message) and purges
    // it, which deletes it. The pointer is not used after this call.
    box->ProcessSendQueue();
    CHECK(box->AreMessagesAcknowledged(nullptr) == 0);

    // Local message: the server's message with no destination is received (not for this member,
    // not forwarded) and destroyed, so nothing is queued to send.
    box->AddToSendQueue(new TestMessage(1, 3, "TEST_A"));
    CHECK(box->AreMessagesAcknowledged(nullptr) == 0);

    // Receive queue: a message added for this member is found by its wire type. Finished messages are
    // not found, and ProcessRecvQueue purges and deletes them.
    TestMessage* got = new TestMessage(9, 2, "TEST_B");
    box->AddToRecvQueue(got);
    CHECK(box->GetMessageFromQueue("TEST_B") == got);
    CHECK(box->GetMessageFromQueue("TEST_A") == nullptr);
    CHECK(box->IsMessageReceived("TEST_B"));
    got->SetFinished();
    CHECK(box->GetMessageFromQueue("TEST_B") == nullptr);
    box->ProcessRecvQueue();  // deletes got
    CHECK(!box->IsMessageReceived("TEST_B"));

    // Sequence bookkeeping for sender 5 (hash = 16 * serial, since MemberBit(5) & 0xf is 0).
    // Sequence 3 arrives first, so it is recorded and is queued.
    TestMessage m3(5, 3, "TEST_A");
    TestMessage m4(5, 4, "TEST_A");
    TestMessage m5(5, 5, "TEST_A");
    TestMessage m6(5, 6, "TEST_A");
    CHECK(!box->HasMessageBeenQueued(&m3));  // sender not known yet
    box->ProcessMissingMessages(&m3);
    CHECK(box->HasMessageBeenQueued(&m3));
    // Sequence 6 arrives: 4 and 5 are missing, so they are not queued yet.
    box->ProcessMissingMessages(&m6);
    CHECK(!box->HasMessageBeenQueued(&m4));
    CHECK(!box->HasMessageBeenQueued(&m5));
    CHECK(box->HasMessageBeenQueued(&m6));
    // Sequence 4 arrives late: it is no longer missing, and 5 is still missing.
    box->ProcessMissingMessages(&m4);
    CHECK(box->HasMessageBeenQueued(&m4));
    CHECK(!box->HasMessageBeenQueued(&m5));

    // An older sequence arriving after a newer one: sequence 9 becomes missing, and 8 is queued.
    TestMessage m10(7, 10, "TEST_A");
    TestMessage m8(7, 8, "TEST_A");
    TestMessage m9(7, 9, "TEST_A");
    box->ProcessMissingMessages(&m10);
    box->ProcessMissingMessages(&m8);
    CHECK(!box->HasMessageBeenQueued(&m9));
    CHECK(box->HasMessageBeenQueued(&m8));
    CHECK(box->HasMessageBeenQueued(&m10));

    // Hashes of 0x8000 and up. For member 11 (MemberBit & 0xf is 0) the hash is serial * 16, so serial 2051 is
    // hash 0x8030. The original's set lookup compares 16-bit keys unsigned, so the missing hash is found: serial
    // 2051 is not queued until it arrives, and its arrival erases the hash. Member 13 with serials 50, 52 and 51
    // is the low-hash control.
    TestMessage h2050(11, 2050, "TEST_A");
    TestMessage h2051(11, 2051, "TEST_A");
    TestMessage h2052(11, 2052, "TEST_A");
    CHECK(static_cast<std::uint16_t>(h2051.GetHash()) == 0x8030);
    box->ProcessMissingMessages(&h2050);
    box->ProcessMissingMessages(&h2052);
    CHECK(!box->HasMessageBeenQueued(&h2051));
    box->ProcessMissingMessages(&h2051);
    CHECK(box->HasMessageBeenQueued(&h2051));
    CHECK(box->HasMessageBeenQueued(&h2052));

    TestMessage l50(13, 50, "TEST_A");
    TestMessage l51(13, 51, "TEST_A");
    TestMessage l52(13, 52, "TEST_A");
    box->ProcessMissingMessages(&l50);
    box->ProcessMissingMessages(&l52);
    CHECK(!box->HasMessageBeenQueued(&l51));
    box->ProcessMissingMessages(&l51);
    CHECK(box->HasMessageBeenQueued(&l51));

    // Ids 128 and up: the stored byte reads back negative, so a queued message with id 128 does not match its
    // own name. Ids 2..127 are filled first so that TEST_HIGH registers as 128.
    for (int i = 2; i < 128; ++i) {
        char filler[32];
        std::snprintf(filler, sizeof filler, "TEST_FILL_%d", i);
        CMessage::RegisterTypeStr(filler);
    }
    CHECK(CMessage::RegisterTypeStr("TEST_HIGH") == 128);
    TestMessage* high = new TestMessage(15, 6, "TEST_HIGH");
    box->AddToRecvQueue(high);
    CHECK(box->GetMessageFromQueue("TEST_HIGH") == nullptr);
    high->SetFinished();
    box->ProcessRecvQueue();  // deletes high

    // An unregistered name: FindTypeId gives -1 and the message stores 0xFF, which reads back as -1, so the name
    // matches it on the receive side until the message is finished and purged.
    TestMessage* unregistered = new TestMessage(15, 7, "NEVER_REGISTERED");
    box->AddToRecvQueue(unregistered);
    CHECK(box->GetMessageFromQueue("NEVER_REGISTERED") == unregistered);
    unregistered->SetFinished();
    box->ProcessRecvQueue();  // deletes unregistered
    CHECK(box->GetMessageFromQueue("NEVER_REGISTERED") == nullptr);

    // PackMessages: a message whose 16-byte header and data do not fit is skipped. The message is for
    // member 9 and is not acknowledged by it. A stream of 16 bytes has 15 bytes free after the
    // terminator's byte, so it is skipped; a 64-byte stream takes it.
    TestMessage* out = new TestMessage(2, 1, "TEST_A", 1u << 9);
    box->AddToSendQueue(out);
    {
        NetBitStream small(16);
        const std::set<std::uint16_t> none = box->PackMessages(9, small);
        CHECK(none.empty());
        CHECK(small.WritePosition() == 1);  // only the terminating 0 bit
    }
    {
        NetBitStream large(64);
        const std::set<std::uint16_t> one = box->PackMessages(9, large);
        CHECK(one.size() == 1);
        CHECK(one.count(static_cast<std::uint16_t>(20)) == 1);  // hash = MemberBit(sender 2) & 0xf + 16 * serial 1
    }
    // A finished message is never packed.
    out->SetFinished();
    {
        NetBitStream large(64);
        CHECK(box->PackMessages(9, large).empty());
    }
    box->ProcessSendQueue();  // purges and deletes out
    CHECK(box->AreMessagesAcknowledged(nullptr) == 0);

    // Send side of an unregistered name: the unfinished message matches it (0) until ProcessSendQueue finishes
    // and purges it.
    box->AddToSendQueue(new TestMessage(9, 5, "NEVER_REGISTERED"));
    CHECK(box->AreMessagesAcknowledged("NEVER_REGISTERED") == 0);
    CHECK(box->AreMessagesAcknowledged("TEST_A") == 1);
    box->ProcessSendQueue();  // deletes the message
    CHECK(box->AreMessagesAcknowledged("NEVER_REGISTERED") == 1);

    // Destroying the instance unregisters packet slot 1 and clears the queues.
    delete box;

    CMatching::Set(nullptr);
    std::printf("%s\n", failures ? "r1n-net-session-online-CMessaging-7b9dc9-0: FAILED"
                                 : "r1n-net-session-online-CMessaging-7b9dc9-0: ok");
    return failures != 0;
}
