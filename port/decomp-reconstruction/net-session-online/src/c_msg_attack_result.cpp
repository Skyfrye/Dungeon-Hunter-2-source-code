#include "net-session-online/c_msg_attack_result.hpp"

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance

// 0x3af330 _ZN16CMsgAttackResult6CreateEiiRKN9Character12AttackResultEb
// The message comes from the registry (CMessage::CreateMessage("CMsgAttackResult", true)). The level tag is the
// current level's list index (Hex-Rays: *(Message+0x50) = *(Application::GetCurrentLevel(&s_inst) + 60), i.e.
// Level +0x3c = m_levelListIndex; the binary reads it with no null test). Then the ten AttackResult words go to
// +0x54..+0x77, the two int arguments are stored as shorts at +0x7c/+0x7e and the flag as a byte at +0x80.
// Deviation: the dynamic_cast below is the port's type check; the binary writes at +0x50 unconditionally.
CMessage* CMsgAttackResult::Create(int first, int second, const Character::AttackResult& result, bool flag) {
    CMessage* base = CMessage::CreateMessage("CMsgAttackResult", true);
    CMsgAttackResult* message = dynamic_cast<CMsgAttackResult*>(base);
    if (message == nullptr) {
        return base;
    }
    message->levelTag_ = ApplicationGetInstance().GetCurrentLevel()->m_levelListIndex;
    message->result_ = result;
    message->first_ = static_cast<std::int16_t>(first);
    message->second_ = static_cast<std::int16_t>(second);
    message->flag_ = flag;
    return base;
}
