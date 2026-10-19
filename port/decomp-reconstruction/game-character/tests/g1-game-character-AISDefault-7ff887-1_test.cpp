// Test for batch g1-game-character-AISDefault-7ff887-1.
//
// The batch source calls functions of other batches (CharStateMachine::SM_IsMoving, CharAI::AI_IsEnemy and AI_SetTarget,
// Character::CancelSneaking, Application::GetDt, the ApplicationGetInstance accessor, the CharAIScript base destructor) and
// AISDefault's vtable refers to every hook, so those are stubbed below. Nothing is constructed: AISDefault, Character,
// GameObject and Application are zero-filled storage whose vptr (offset 0) points at a table of stub functions, the same
// access trick the CharAI test uses. The qualified calls (obj->AISDefault::OnX) run the body without a virtual dispatch.
//
// The checks cover the counter (OnCollisionBegin and OnCollisionEnd), OnPreInteract, and every branch of
// OnCollisionPersist: not moving, the current target, retargeting (with its early return), the player sneaking cancel,
// the master test, the type gate (IsCharacter, m_goId 21 or 2), the once-per-frame charge and the pause flag.

#include <cstdio>
#include <cstring>

#include "dh2/AISDefault.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/global/ctrl_camera.hpp"

namespace {

// ---- stub state -------------------------------------------------------------------------------------------------------

bool g_isMoving = false;          // CharStateMachine::SM_IsMoving
bool g_isEnemy = false;           // CharAI::AI_IsEnemy
bool g_isPlayer = false;          // Character::IsPlayer (virtual stub)
bool g_otherIsCharacter = false;  // GameObject::IsCharacter (virtual stub)
int g_setTargetCalls = 0;
GameObject* g_lastSetTarget = nullptr;
bool g_lastForce = true;
int g_cancelCalls = 0;
int g_dt = 0;
int g_persistCalls = 0;
GameObject* g_lastPersistOther = nullptr;
bool g_lastPersistFlag = false;

constexpr int kSlots = 96;   // more slots than any table below uses; the stubs fill all of them
void* g_goVtable[kSlots];
void* g_chVtable[kSlots];
void* g_aisVtable[kSlots];

alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_chStorage[sizeof(Character)];
alignas(16) unsigned char g_goStorage[sizeof(GameObject)];
alignas(16) unsigned char g_aisStorage[sizeof(AISDefault)];

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            ++g_failures;                                              \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
        }                                                              \
    } while (0)

// ---- virtual stubs and their tables -----------------------------------------------------------------------------------

bool StubGameObjectIsCharacter(const GameObject*) { return g_otherIsCharacter; }
bool StubCharacterIsPlayer(const Character*) { return g_isPlayer; }
void StubPersist(AISDefault*, GameObject* other, bool flag) {
    ++g_persistCalls;
    g_lastPersistOther = other;
    g_lastPersistFlag = flag;
}

AISDefault* Obj() { return reinterpret_cast<AISDefault*>(g_aisStorage); }
Character* Ch() { return reinterpret_cast<Character*>(g_chStorage); }
GameObject* Other() { return reinterpret_cast<GameObject*>(g_goStorage); }
Application* App() { return reinterpret_cast<Application*>(g_appStorage); }

void ResetCase() {
    std::memset(g_aisStorage, 0, sizeof g_aisStorage);
    std::memset(g_chStorage, 0, sizeof g_chStorage);
    std::memset(g_goStorage, 0, sizeof g_goStorage);
    std::memset(g_appStorage, 0, sizeof g_appStorage);
    *reinterpret_cast<void**>(g_aisStorage) = static_cast<void*>(g_aisVtable);
    *reinterpret_cast<void**>(g_chStorage) = static_cast<void*>(g_chVtable);
    *reinterpret_cast<void**>(g_goStorage) = static_cast<void*>(g_goVtable);
    Obj()->m_character = Ch();
    App()->m_frameCount = 7;
    g_isMoving = false;
    g_isEnemy = false;
    g_isPlayer = false;
    g_otherIsCharacter = false;
    g_setTargetCalls = 0;
    g_lastSetTarget = nullptr;
    g_lastForce = true;
    g_cancelCalls = 0;
    g_dt = 16;
    g_persistCalls = 0;
    g_lastPersistOther = nullptr;
    g_lastPersistFlag = false;
    AISDefault::s_collisionCount = 0;
}

void Persist(bool flag) { Obj()->AISDefault::OnCollisionPersist(Other(), flag); }

}  // namespace

// ---- stubs for symbols defined by other batches (only the linker needs them) ------------------------------------------

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }

int Application::GetDt() { return g_dt; }

bool CharStateMachine::SM_IsMoving(bool) const { return g_isMoving; }

bool CharAI::AI_IsEnemy(const GameObject*) const { return g_isEnemy; }

void CharAI::AI_SetTarget(GameObject* target, bool force) {
    ++g_setTargetCalls;
    g_lastSetTarget = target;
    g_lastForce = force;
}

void Character::CancelSneaking() { ++g_cancelCalls; }

CharAIScript::~CharAIScript() {}
LuaScript::~LuaScript() {}                    // members of the CharAIScript stub above
CharAIScript::_State::~_State() {}

// AISDefault's vtable refers to every hook. Those defined in this batch are in the source; the rest are empty here.
void AISDefault::OnInit() {}
void AISDefault::OnInitPost() {}
void AISDefault::OnInitFinal() {}
void AISDefault::OnTerminate() {}
void AISDefault::OnUpdate() {}
void AISDefault::OnMsg(int, const void*) {}
void AISDefault::OnStateChanged(int, int) {}
void AISDefault::OnDied(GameObject*) {}
void AISDefault::OnRevived(GameObject*) {}
void AISDefault::OnFriendSpotted(Character*) {}
void AISDefault::OnNeutralSpotted(Character*) {}
void AISDefault::OnEnemySpotted(Character*) {}
void AISDefault::OnAggro(Character*) {}
void AISDefault::OnDeAggro(Character*) {}
void AISDefault::OnTargetDied() {}
void AISDefault::OnTargetRevived() {}
void AISDefault::OnTargetOutOfSight() {}
void AISDefault::OnTargetInSight() {}
void AISDefault::OnTargetOutOfRange() {}
void AISDefault::OnTargetInRangedRange() {}
void AISDefault::OnTargetInCloseRange() {}
void AISDefault::OnTargetInMeleeRange() {}
void AISDefault::OnMasterDied() {}
void AISDefault::OnMasterRevived() {}
void AISDefault::OnMasterOutOfSight() {}
void AISDefault::OnScriptTimer(unsigned int) {}
void AISDefault::OnAnimEvent(const char*) {}
void AISDefault::OnInteract() {}
void AISDefault::OnAttack(int, int, bool) {}
void AISDefault::OnCombatResults(Character*, Character*, void*) {}
int AISDefault::InitVCB() { return 0; }

// ---- the test ---------------------------------------------------------------------------------------------------------

int main() {
    for (int i = 0; i < kSlots; ++i) {
        g_goVtable[i] = reinterpret_cast<void*>(&StubGameObjectIsCharacter);
        g_chVtable[i] = reinterpret_cast<void*>(&StubCharacterIsPlayer);
        g_aisVtable[i] = reinterpret_cast<void*>(&StubPersist);
    }

    // OnPreInteract returns true, and the empty hooks do nothing.
    ResetCase();
    CHECK(Obj()->AISDefault::OnPreInteract() == true);
    Obj()->AISDefault::OnMasterInSight();
    Obj()->AISDefault::OnTimer(nullptr);
    CHECK(AISDefault::s_collisionCount == 0);

    // OnCollisionBegin counts the collision and dispatches OnCollisionPersist through the vtable (slot 48).
    ResetCase();
    Obj()->AISDefault::OnCollisionBegin(Other(), true);
    CHECK(AISDefault::s_collisionCount == 1);
    CHECK(g_persistCalls == 1);
    CHECK(g_lastPersistOther == Other());
    CHECK(g_lastPersistFlag == true);
    Obj()->AISDefault::OnCollisionBegin(Other(), false);
    CHECK(AISDefault::s_collisionCount == 2);
    CHECK(g_persistCalls == 2);
    CHECK(g_lastPersistFlag == false);

    // OnCollisionEnd subtracts one, and OnCollisionResult does nothing.
    Obj()->AISDefault::OnCollisionEnd(Other(), true);
    CHECK(AISDefault::s_collisionCount == 1);
    Obj()->AISDefault::OnCollisionResult(Other(), true);
    CHECK(AISDefault::s_collisionCount == 1);

    // OnCollisionPersist, not moving: nothing happens, not even the frame charge.
    ResetCase();
    g_isMoving = false;
    g_otherIsCharacter = true;
    g_isEnemy = true;
    Persist(true);
    CHECK(g_setTargetCalls == 0);
    CHECK(g_cancelCalls == 0);
    CHECK(Obj()->unk_bc == 0 && Obj()->unk_c0 == 0);

    // Moving, the other object is the current target: nothing happens.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = true;
    Ch()->CharAI::m_target = Other();
    Persist(true);
    CHECK(g_setTargetCalls == 0);
    CHECK(g_cancelCalls == 0);
    CHECK(Obj()->unk_bc == 0 && Obj()->unk_c0 == 0);

    // Moving, a character that is an enemy and not the target, master is null: retarget and return early. The frame
    // charge is skipped by the return even though the flag is set.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = true;
    g_isPlayer = false;
    Ch()->CharAI::m_target = nullptr;
    Ch()->CharAI::m_master = nullptr;
    Persist(true);
    CHECK(g_setTargetCalls == 1);
    CHECK(g_lastSetTarget == Other());
    CHECK(g_lastForce == false);
    CHECK(g_cancelCalls == 0);
    CHECK(Obj()->unk_bc == 0 && Obj()->unk_c0 == 0);

    // Same, but the master is the current target and not null: the retarget is skipped, and the frame charge applies.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = true;
    g_isPlayer = false;
    Ch()->CharAI::m_target = Ch();   // master == target, not null: masterNotTarget is false
    Ch()->CharAI::m_master = Ch();
    Obj()->unk_bc = 100;
    Obj()->unk_c0 = 3;
    Persist(true);
    CHECK(g_setTargetCalls == 0);
    CHECK(g_cancelCalls == 0);
    CHECK(Obj()->unk_c0 == 7);
    CHECK(Obj()->unk_bc == 116);   // 100 + GetDt (16)

    // A player that meets an enemy that is not the target: no retarget (the player skips the master block), a sneaking
    // cancel instead.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = true;
    g_isPlayer = true;
    Ch()->CharAI::m_target = nullptr;
    Persist(false);
    CHECK(g_setTargetCalls == 0);
    CHECK(g_cancelCalls == 1);
    CHECK(Obj()->unk_bc == 0 && Obj()->unk_c0 == 0);

    // A player with an enemy that is not an enemy: nothing.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = false;
    g_isPlayer = true;
    Persist(false);
    CHECK(g_cancelCalls == 0);

    // The type gate: a non-character with m_goId 21 or 2 charges the counter; another id does not.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = false;
    Other()->m_goId = static_cast<GameObject::GO_IDS>(21);
    Persist(true);
    CHECK(Obj()->unk_c0 == 7);
    CHECK(Obj()->unk_bc == 16);

    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = false;
    Other()->m_goId = static_cast<GameObject::GO_IDS>(2);
    Persist(true);
    CHECK(Obj()->unk_bc == 16);

    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = false;
    Other()->m_goId = static_cast<GameObject::GO_IDS>(5);
    Persist(true);
    CHECK(Obj()->unk_c0 == 0 && Obj()->unk_bc == 0);

    // The charge needs the flag: flag false skips it even for a character.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = false;
    g_isPlayer = false;
    Persist(false);
    CHECK(Obj()->unk_c0 == 0 && Obj()->unk_bc == 0);

    // Once per frame: the second call in the same frame adds nothing, and the next frame adds again.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = false;
    g_isPlayer = false;
    Persist(true);
    CHECK(Obj()->unk_bc == 16);
    Persist(true);
    CHECK(Obj()->unk_bc == 16);
    App()->m_frameCount = 8;
    Persist(true);
    CHECK(Obj()->unk_bc == 32);
    CHECK(Obj()->unk_c0 == 8);

    // The pause flag (CharAI +0x18) blocks the charge but still records nothing new.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = false;
    g_isPlayer = false;
    Ch()->CharAI::m_updatePaused = true;
    Persist(true);
    CHECK(Obj()->unk_c0 == 0 && Obj()->unk_bc == 0);

    // An earlier frame stamp (unk_c0 equal to the frame) also blocks the charge.
    ResetCase();
    g_isMoving = true;
    g_otherIsCharacter = true;
    g_isEnemy = false;
    g_isPlayer = false;
    Obj()->unk_c0 = 7;
    Obj()->unk_bc = 50;
    Persist(true);
    CHECK(Obj()->unk_bc == 50 && Obj()->unk_c0 == 7);

    if (g_failures == 0) {
        std::printf("AISDefault collision and hook checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
