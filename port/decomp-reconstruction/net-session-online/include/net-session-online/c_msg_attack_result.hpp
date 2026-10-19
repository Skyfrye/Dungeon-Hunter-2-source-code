// CMsgAttackResult: the result of an attack, sent to the other players. One definition (c_msg_fixed.hpp no longer declares a second one). The
// payload starts at +0x50 and is 52 bytes (GetDataSize 0x34). Layout (original 32-bit offsets, kept as comments):
//   +0x50 level tag (int, the current level's index in Arrays::LevelList)   +0x54..+0x7b Character::AttackResult (40 bytes)
//   +0x7c attacker network id (short)   +0x7e defender network id (short)   +0x80 flag (bool, true when the defender is a Character)
#pragma once

#include <cstdint>

#include "net-session-online/c_message.hpp"
#include "net-session-online/deps/character_attack_result.hpp"

class CMsgAttackResult : public CMessage {
public:
    // 0x328b6c GetNewInstance<CMsgAttackResult>(bool) inlines this: CMessage(name, bool), then sendMode_ = 1 (+0x2c) and
    // includeLocalMember_ = false (+0x33).
    explicit CMsgAttackResult(bool withSerial) : CMessage("CMsgAttackResult", withSerial) {
        typeName_ = "CMsgAttackResult";
        sendMode_ = 1;
        includeLocalMember_ = false;
    }
    void* GetDataPtr() override { return &levelTag_; }
    std::uint32_t GetDataSize() const override { return 52; }
    // 0x327a40 _ZN16CMsgAttackResult13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgAttackResult";
        includeLocalMember_ = false;
        sendMode_ = 1;
    }

    // 0x3af330 _ZN16CMsgAttackResult6CreateEiiRKN9Character12AttackResultEb
    // Creates the message through the registry, stores the current level's index (Level +0x3c) as the tag, copies the result and stores the two
    // network ids (as shorts) and the flag. Returns what CMessage::CreateMessage returns when the type is not registered as this class.
    static CMessage* Create(int first, int second, const Character::AttackResult& result, bool flag);

    // Payload (original 32-bit offsets).
    std::int32_t levelTag_ = 0;             // +0x50
    Character::AttackResult result_{};      // +0x54
    std::int16_t first_ = 0;                // +0x7c
    std::int16_t second_ = 0;               // +0x7e
    bool flag_ = false;                     // +0x80
};
