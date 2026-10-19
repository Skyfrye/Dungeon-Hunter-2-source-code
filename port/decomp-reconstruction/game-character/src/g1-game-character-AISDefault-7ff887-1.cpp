// Batch g1-game-character-AISDefault-7ff887-1 (part 2 of 3 of AISDefault): the master hooks, the timer, stun, fear and
// attack-delay hooks, the end-of-animation and pre-interact and pre-attack hooks, the projectile, kill and combat hooks,
// the destructor, and the collision hooks (OnCollisionBegin, OnCollisionPersist, OnCollisionEnd, OnCollisionResult).
// Declarations and layout come from dh2/AISDefault.hpp (the static s_collisionCount was added there by this batch).
//
// Most hooks are a bare return in the binary (4-byte listings: one ARM BX LR). OnPreInteract returns true.
// OnCollisionBegin and OnCollisionEnd adjust s_collisionCount. OnCollisionPersist is the one with logic: it picks
// up a new target from a colliding enemy, cancels sneaking for a player, and charges the per-frame AI pause counter
// (CharAIScript::unk_bc) once per frame.
//
// Notes on the collision code:
//  - Character offsets are read through the CharAI base (Character +0x3c8 .. +0x4fc). Character +0x408 is CharAI +0x40
//    (m_target), Character +0x418 is CharAI +0x50 (m_master), Character +0x3e0 is CharAI +0x18 (m_updatePaused).
//  - dword_99F7A0 is the frame counter. It is Singleton<Application>::s_inst (0x99f72c) + 0x74, which is
//    Application::m_frameCount; Application::_Update increments that word (++*((_DWORD *)this + 29)). The singleton is
//    reached through ApplicationGetInstance() (dh2/global/ctrl_camera.hpp), which the integrator defines.
//  - GameObject +0xf4 is m_goId (GO_IDS). The original compares it with the raw values 21 and 2; no enumerator names
//    them, so the comparison is written against the integers.
//  - OnCollisionBegin's original returns an int: the value is whatever r0 the tail call to OnCollisionPersist leaves
//    behind, and OnCollisionPersist returns nothing. This version returns void as CharAIScript declares.

#include "dh2/AISDefault.hpp"

#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance()

int AISDefault::s_collisionCount = 0;  // .bss, 0x9a2c20

// 0x3dbec8 AISDefault::OnMasterInSight(void)
void AISDefault::OnMasterInSight() {}

// 0x3dbecc AISDefault::OnMasterOutOfRange(void)
void AISDefault::OnMasterOutOfRange() {}

// 0x3dbed0 AISDefault::OnMasterInRangedRange(void)
void AISDefault::OnMasterInRangedRange() {}

// 0x3dbed4 AISDefault::OnMasterInCloseRange(void)
void AISDefault::OnMasterInCloseRange() {}

// 0x3dbed8 AISDefault::OnMasterInMeleeRange(void)
void AISDefault::OnMasterInMeleeRange() {}

// 0x3dbedc AISDefault::OnTimer(void*)
void AISDefault::OnTimer(void* /*timer*/) {}

// 0x3dbee0 AISDefault::OnStunExpired(void)
void AISDefault::OnStunExpired() {}

// 0x3dbee4 AISDefault::OnFearExpired(void)
void AISDefault::OnFearExpired() {}

// 0x3dbee8 AISDefault::OnAttackDelayExpired(void)
void AISDefault::OnAttackDelayExpired() {}

// 0x3dbeec AISDefault::OnEndOfAnim(void)
void AISDefault::OnEndOfAnim() {}

// 0x3dbef0 AISDefault::OnPreInteract(void)
bool AISDefault::OnPreInteract() { return true; }

// 0x3dbef8 AISDefault::OnPreAttack(int)
void AISDefault::OnPreAttack(int /*attackStep*/) {}

// 0x3dbefc AISDefault::OnProjectileHit(GameObject*)
void AISDefault::OnProjectileHit(GameObject* /*target*/) {}

// 0x3dbf00 AISDefault::OnKill(Character*)
void AISDefault::OnKill(Character* /*victim*/) {}

// 0x3dbf04 AISDefault::OnCombatResults(GameObject*,void*)
void AISDefault::OnCombatResults(GameObject* /*other*/, void* /*results*/) {}

// 0x3dbf08 AISDefault::OnCollisionBegin(GameObject*,bool)
// Counts the collision, then runs OnCollisionPersist through the vtable (slot +0xc0), so an override of the persist hook
// is what runs here too.
void AISDefault::OnCollisionBegin(GameObject* other, bool flag) {
    ++s_collisionCount;
    OnCollisionPersist(other, flag);
}

// 0x3dbf40 AISDefault::OnCollisionEnd(GameObject*,bool)
void AISDefault::OnCollisionEnd(GameObject* /*other*/, bool /*flag*/) {
    --s_collisionCount;
}

// 0x3dbf68 AISDefault::OnCollisionResult(GameObject*,bool)
void AISDefault::OnCollisionResult(GameObject* /*other*/, bool /*flag*/) {}

// AISDefault::AISDefault(bool)  (inlined into CharAI::SetScript<AISDefault> at 0x3cce14, 0x3ccbe4, 0x3cccf8 and 0x3cd11c)
// CharAIScript(skipBindings), then the callback mask words unk_b8, unk_bc and unk_c0 are cleared.
AISDefault::AISDefault(bool skipBindings) : CharAIScript(skipBindings) {
    unk_b8 = 0;
    unk_bc = 0;
    unk_c0 = 0;
}

// 0x3dbf6c AISDefault::~AISDefault()
// The base-object destructor. It stores AISDefault's vtable and runs CharAIScript::~CharAIScript, which is exactly what the
// compiler generates for a defaulted destructor. The deleting variant (0x3dc968) is compiler generated and not in this batch.
AISDefault::~AISDefault() = default;

// 0x3dbfa0 AISDefault::OnCollisionPersist(GameObject*,bool)
// Runs while a body keeps touching this character. A moving character that meets an enemy it is not already fighting
// retargets to it, and a player cancels sneaking. When the other body is a character, or has type 21 or 2, the per-frame
// pause counter (unk_bc) is charged with the frame time, once per frame (unk_c0 keeps the last frame that charged it).
void AISDefault::OnCollisionPersist(GameObject* other, bool flag) {
    Character* ch = m_character;      // +0x98
    CharAI& ai = *ch;                 // Character +0x3c8, the CharAI base
    if (ch->SM_IsMoving(false)) {
        GameObject* target = ai.m_target;   // CharAI +0x40, Character +0x408
        if (other != target) {
            if (other->IsCharacter()) {
                GameObject* master = ai.m_master;   // CharAI +0x50, Character +0x418, a Character*
                if (!ch->IsPlayer()) {
                    const bool masterNotTarget = master != target || master == nullptr;
                    if (masterNotTarget && ai.AI_IsEnemy(other)) {
                        ai.AI_SetTarget(other, false);
                        return;
                    }
                }
                if (ch->IsPlayer() && ai.AI_IsEnemy(other)) {
                    ch->CancelSneaking();
                }
            }
            if (flag) {
                if (other->IsCharacter()
                    || static_cast<std::int32_t>(other->m_goId) == 21
                    || static_cast<std::int32_t>(other->m_goId) == 2) {
                    Application& app = ApplicationGetInstance();
                    const std::uint32_t frame = static_cast<std::uint32_t>(app.m_frameCount);  // dword_99F7A0
                    if (unk_c0 != frame && !ai.m_updatePaused) {   // Character +0x3e0 is CharAI +0x18
                        unk_c0 = frame;
                        const std::uint32_t before = unk_bc;         // v7 in the pseudocode, read first
                        unk_bc = static_cast<std::uint32_t>(app.GetDt()) + before;
                    }
                }
            }
        }
    }
}
