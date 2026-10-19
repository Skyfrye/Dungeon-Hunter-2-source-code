// Batch g1-game-character-AISMonster-5385f0-0 (the whole of AISMonster): the two empty hooks, the base destructor, the
// enemy and target hooks, and OnUpdate. The deleting destructor is compiler generated and is not written.
// Declarations and layout come from dh2/AISMonster.hpp, which already declares every method in this batch. AISMonster
// adds no members, so the owner is reached through CharAIScript::m_character (+0x98).
//
// Offsets in comments are the 32-bit offsets inside the owner Character, unless a line says CharAI, v2Controllable,
// CharStateMachine, GameObject or a table row. CharAI sits at Character +0x3c8, so CharAI +0x40 is Character +0x408.

#include "dh2/AISMonster.hpp"

// AISMonster::AISMonster(bool)  (inlined into CharAI::SetScript<AISMonster> at 0x3ccbe4): AISDefault(skipBindings), mask words cleared.
AISMonster::AISMonster(bool skipBindings) : AISDefault(skipBindings) {}

#include "dh2/AISDefault.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"

// 0x3dd490 AISMonster::OnTargetRevived(void)
// The binary is a bare BX LR (4 bytes). The body is empty.
void AISMonster::OnTargetRevived() {}

// 0x3dd494 AISMonster::OnTargetInSight(void)
// The binary is a bare BX LR (4 bytes). The body is empty.
void AISMonster::OnTargetInSight() {}

// 0x3dd498 AISMonster::~AISMonster(void)   (D1, complete object; the base-object variant is this same address)
// The original stores the AISDefault vtable (_ZTV10AISDefault + 8), with AISDefault's destructor inlined, and calls
// CharAIScript::~CharAIScript. An empty user-declared destructor runs AISDefault's destructor and then CharAIScript's,
// which leaves the same state (the same chain as AISExternal and AISDefault).
AISMonster::~AISMonster() {}

// 0x3dd4cc AISMonster::OnEnemySpotted(Character *)
// Takes the spotted enemy as the target when the owner has none (CharAI m_target, +0x408). Then the owner's
// m_targetSeeking flag is set (CharAI +0x4a, Character +0x412). When a target already exists, nothing happens.
void AISMonster::OnEnemySpotted(Character* c) {
    Character* character = m_character;                                 // +0x98 owner
    if (character->m_target != nullptr) {                               // +0x408 CharAI::m_target
        return;
    }
    character->AI_SetTarget(c, false);                                  // CharAI::AI_SetTarget(c, 0) on CharAI (+0x3c8)
    character->m_targetSeeking = true;                                  // +0x412 CharAI::m_targetSeeking
}

// 0x3dd500 AISMonster::OnTargetOutOfSight(void)
// When a target is still set, the owner's controller (v2Controllable::m_controller, +0x378) moves towards that target's
// position. Hex-Rays drops the second argument of Cmd_MoveTo. The assembly shows the call takes the result of
// GameObject::GetTargetPosition() of the target in r1, so the call is v2Controller::Cmd_MoveTo(const Point3D<float>&).
// Then the target is cleared and the last target is synced. The original tail-calls AI_SyncLastTarget and returns its
// result, which a void hook ignores.
void AISMonster::OnTargetOutOfSight() {
    if (m_character->m_target != nullptr) {                             // +0x408
        v2Controller* controller = m_character->m_controller;           // +0x378
        controller->Cmd_MoveTo(m_character->m_target->GetTargetPosition());
    }
    m_character->AI_SetTarget(nullptr, false);                          // CharAI::AI_SetTarget(nullptr, 0)
    m_character->AI_SyncLastTarget();                                   // CharAI::AI_SyncLastTarget (tail call)
}

// 0x3dd550 AISMonster::OnTargetDied(void)
// Stops the owner's controller (+0x378), clears the target, and syncs the last target. The original tail-calls
// AI_SyncLastTarget and returns its result, which a void hook ignores.
void AISMonster::OnTargetDied() {
    m_character->m_controller->Cmd_Stop();                              // v2Controller::Cmd_Stop on +0x378
    m_character->AI_SetTarget(nullptr, false);                          // CharAI::AI_SetTarget(nullptr, 0)
    m_character->AI_SyncLastTarget();                                   // CharAI::AI_SyncLastTarget (tail call)
}

// 0x3dd588 AISMonster::OnUpdate(void)
// Runs AISDefault::OnUpdate first (a direct call to the base, not a virtual dispatch). Then, if the owner is idle
// (CharStateMachine at +0x4fc, SM_IsIdle(false)), has no target (+0x408), and is not within 1.0f of its initial position
// (+0x1450), the owner walks back to that initial position when it has strayed further from it than the squared
// AI table range (Structs::AIProps +0x1c, indexed by GetCharAIId()). The owner's own position is GetTargetPosition().
// The original's squared-distance expression is ((dx*dx + dy*dy) + dz*dz), which this keeps in the same order.
// The move is v2Controller::Cmd_MoveTo(const Point3D<float>&) on the controller (+0x378) with the initial position.
void AISMonster::OnUpdate() {
    AISDefault::OnUpdate();
    Character* character = m_character;                                 // +0x98 owner
    if (!character->SM_IsIdle(false)) {                                 // CharStateMachine (+0x4fc)
        return;
    }
    if (character->m_target != nullptr) {                               // +0x408 CharAI::m_target
        return;
    }
    if (character->IsNearby(character->m_initialPosition, 1.0f)) {      // +0x1450 initial position, margin 0x3f800000
        return;
    }
    const Point3D<float>& pos = character->GetTargetPosition();         // the owner's own position
    const float dx = character->m_initialPosition.X - pos.X;            // +0x1450 - position
    const float dy = character->m_initialPosition.Y - pos.Y;            // +0x1454 - position
    const float dz = character->m_initialPosition.Z - pos.Z;            // +0x1458 - position
    const float range = character->GetCharAI()->LeashDistance;                   // AI table row +0x1c (Arrays::AITable, 68-byte stride)
    if (range * range < dx * dx + dy * dy + dz * dz) {
        character->m_controller->Cmd_MoveTo(character->m_initialPosition);  // +0x378 controller, +0x1450 initial position
    }
}

// 0x3dd7b0 AISMonster::~AISMonster(void)   (D0, deleting destructor)
// SKIPPED: the compiler emits the deleting destructor for `delete` of an AISMonster. The original stores the AISDefault
// vtable, calls CharAIScript::~CharAIScript, and then CustomFree(this). Nothing is written here.
