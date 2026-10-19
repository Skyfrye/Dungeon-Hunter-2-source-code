#include "net-session-online/c_msg_raised_event.hpp"

#include <cstdio>

#include "net-session-online/deps/matching.hpp"

#include "dh2/QuestEvent.hpp"
#include "dh2/tMsgRaisedEventData.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Matching stand-in: the message constructors read the local member id from it.
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

// A quest event that fills the five payload words with recognisable values.
class FillingEvent : public QuestEvent {
public:
    ~FillingEvent() override {}
    void FillNetworkMsg(tMsgRaisedEventData& msg) const override {
        msg.eventKind = 4;
        msg.objectNetworkId = 11;
        msg.unk_08 = 22;
        msg.unk_0c = 33;
        msg.targetNetworkId = 44;
    }
};

static CMessage* MakeRaisedEvent(bool withSerial) { return new CMsgRaisedEvent(withSerial); }

int main() {
    FakeMatching matching;
    CMatching::Set(&matching);
    CMessage::InitializeMessageRegistration();
    CMessage::RegisterMessageType("CMsgRaisedEvent", &MakeRaisedEvent);

    // Create builds a message of the registered type and has the quest event fill the payload.
    FillingEvent event;
    CMessage* created = CMsgRaisedEvent::Create(&event);
    CHECK(created != nullptr);
    CMsgRaisedEvent* raised = dynamic_cast<CMsgRaisedEvent*>(created);
    CHECK(raised != nullptr);
    if (raised != nullptr) {
        CHECK(raised->eventKind_ == 4 && raised->objectNetworkId_ == 11 && raised->unk_58 == 22 && raised->unk_5c == 33 &&
              raised->targetNetworkId_ == 44);
        CHECK(raised->GetDataSize() == 20);
    }
    delete created;

    // A message from the local member (id 2) is ignored, and so is a null message.
    CMsgRaisedEvent local(true);
    CMsgRaisedEvent::RaiseEventFromNetwork(&local);
    CMsgRaisedEvent::RaiseEventFromNetwork(nullptr);

    if (failures == 0) std::printf("c_msg_raised_event_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
