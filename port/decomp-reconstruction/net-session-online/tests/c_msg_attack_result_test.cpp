#include "net-session-online/c_msg_attack_result.hpp"

#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "net-session-online/deps/matching.hpp"

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

// The level query Create reads (Level +0x3c, m_levelListIndex): a fake level in zeroed storage, index 11.
alignas(Level) static unsigned char g_levelStorage[sizeof(Level)];
alignas(Application) static unsigned char g_appStorage[sizeof(Application)];
Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
Level* Application::GetCurrentLevel() const { return reinterpret_cast<Level*>(g_levelStorage); }

static CMessage* MakeAttackResult(bool withSerial) { return new CMsgAttackResult(withSerial); }

int main() {
    FakeMatching matching;
    CMatching::Set(&matching);
    CMessage::InitializeMessageRegistration();
    CMessage::RegisterMessageType("CMsgAttackResult", &MakeAttackResult);

    reinterpret_cast<Level*>(g_levelStorage)->m_levelListIndex = 11;

    Character::AttackResult result{};
    result.m_damage = 100;
    result.unk_24 = 109;
    result.m_resultFlags = 0x18;

    CMessage* created = CMsgAttackResult::Create(7, -3, result, true);
    CHECK(created != nullptr);
    CMsgAttackResult* message = dynamic_cast<CMsgAttackResult*>(created);
    CHECK(message != nullptr);
    if (message != nullptr) {
        CHECK(message->first_ == 7);
        CHECK(message->second_ == -3);
        CHECK(message->flag_);
        CHECK(message->result_.m_damage == 100);
        CHECK(message->result_.unk_24 == 109);
        CHECK(message->result_.m_resultFlags == 0x18);
        CHECK(message->levelTag_ == 11);
        CHECK(message->GetDataSize() == 0x34);
        CHECK(message->GetDataPtr() == static_cast<void*>(&message->levelTag_));
    }
    delete created;

    if (failures == 0) std::printf("c_msg_attack_result_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
