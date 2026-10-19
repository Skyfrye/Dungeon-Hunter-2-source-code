// Batch g1-game-character-AISFaery-71f155-0 (AISFaery, part 1 of 1): the nine functions of the faery script.
// A faery holds the id of the faery form it shows (+0xc4) and follows its master. OnUpdate copies the master's
// faery skin onto the visual, OnFriendSpotted makes a friend the faery's master, and the master range hooks steer
// the faery behind its master. dh2/AISFaery.hpp already declares every method here, so the header is unchanged.
//
// Members used (all declared): CharAIScript::m_character (+0x98), CharAI::m_master (+0x50 of CharAI, Character
// +0x418), CharAI::unk_58 (+0x58 of CharAI, Character +0x420), v2Controllable::m_controller (+0x04, Character
// +0x378), GameObject::m_visualObject (+0x2d8), and the CharStateMachine base of the owner (+0x4fc).

#include "core-platform/deps/game_types.hpp"
#include "dh2/AISDefault.hpp"
#include "dh2/AISFaery.hpp"

// AISFaery::AISFaery(bool)  (inlined into CharAI::SetScript<AISFaery> at 0x3cccf8): AISDefault(skipBindings), the faery id (+0xc4) is -1.
AISFaery::AISFaery(bool skipBindings) : AISDefault(skipBindings), m_currentFaerieId(-1) {}
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"

namespace {

// PhysicalWorld::TILE_SIZE, a read-only float in .rodata at 0x8c0618. The four bytes there are 00 00 48 43, which
// is 200.0f, and Hex-Rays folds that same value into the body. No header declares PhysicalWorld::TILE_SIZE yet
// (game/include has no PhysicalWorld.hpp), so this named constant stands in until a declaration exists.
constexpr float kPhysicalWorldTileSize = 200.0f;

}  // namespace

// 0x3de2d0 AISFaery::OnMasterInCloseRange(void)
// The original is a tail call through the vtable: LDR R3,[R0]; LDR PC,[R3,#0x7C]. Slot +0x7c is
// AISFaery::OnMasterInMeleeRange (0x3de318), so the call dispatches virtually to that override. This rebuild
// makes the same virtual call.
void AISFaery::OnMasterInCloseRange() {
    OnMasterInMeleeRange();
}

// 0x3de2e4 AISFaery::~AISFaery(void)  (base-object destructor, vtable slot 0)
// The original stores the AISDefault vtable (_ZTV10AISDefault + 8) in *this, which is AISDefault's destructor
// inlined, and then calls CharAIScript::~CharAIScript (D2). AISDefault::~AISDefault (0x3dbf6c, defined as
// `= default` in game-character/src/g1-game-character-AISDefault-7ff887-1.cpp) makes the same store and the same
// call, so the implicit destructor chain of this class has the same effect. The body is empty.
AISFaery::~AISFaery() {}

// 0x3de688 AISFaery::~AISFaery(void)  (deleting destructor, vtable slot 1). Not written: the compiler emits it
// for `delete` of an AISFaery. The original calls the base-object destructor above and then CustomFree(this).

// 0x3de318 AISFaery::OnMasterInMeleeRange(void)
// When the faery and its master are both idle, the faery moves to a point 200 units (PhysicalWorld::TILE_SIZE)
// behind the master along its look direction, and heads there.
void AISFaery::OnMasterInMeleeRange() {
    if (!m_character->SM_IsIdle(false)) {  // CharStateMachine at Character +0x4fc
        return;
    }
    Character* master = m_character->m_master;  // CharAI +0x50 (Character +0x418)
    if (master == nullptr) {
        return;
    }
    if (!master->SM_IsIdle(false)) {
        return;
    }

    // Look direction of the master, negated and scaled. The original flips the sign bit (ADD #0x80000000)
    // and multiplies by the TILE_SIZE value.
    Point3D<float> look{0.0f, 0.0f, 0.0f};
    master->GetLookAtVec(look);
    const float scaledX = -look.X * kPhysicalWorldTileSize;
    const float scaledY = -look.Y * kPhysicalWorldTileSize;
    const float scaledZ = -look.Z * kPhysicalWorldTileSize;

    const Point3D<float>& masterPos = master->GetTargetPosition();
    Point3D<float> target{masterPos.X + scaledX, masterPos.Y + scaledY, masterPos.Z + scaledZ};
    m_character->m_controller->Cmd_HeadTo(target);
}

// 0x3de444 AISFaery::OnMasterInRangedRange(void)
void AISFaery::OnMasterInRangedRange() {
    m_character->m_controller->Cmd_Stop();
}

// 0x3de450 AISFaery::OnMasterOutOfRange(void)
// The faery heads toward its master: direction = master position - own position (not normalized).
void AISFaery::OnMasterOutOfRange() {
    const Point3D<float>& masterPos = m_character->m_master->GetTargetPosition();
    const Point3D<float>& selfPos = m_character->GetTargetPosition();
    Point3D<float> direction{masterPos.X - selfPos.X, masterPos.Y - selfPos.Y, masterPos.Z - selfPos.Z};
    m_character->m_controller->Cmd_HeadTowards(direction);
}

// 0x3de4c8 AISFaery::OnMasterOutOfSight(void)
// The faery warps to its master's target position.
void AISFaery::OnMasterOutOfSight() {
    v2Controller* controller = m_character->m_controller;
    const Point3D<float>& target = m_character->m_master->GetTargetPosition();
    controller->Cmd_WarpTo(target);
}

// 0x3de4ec AISFaery::OnFriendSpotted(Character *)
// A friend without a master and without a faery attached becomes this faery's master. The faery then links back
// to the friend through the friend's CharAI::unk_58 (+0x58; the name is unknown, the value is the faery's
// Character) and switches the friend to its own current faery id.
void AISFaery::OnFriendSpotted(Character* c) {
    if (m_character->m_master != nullptr || c->unk_58 != nullptr) {
        return;
    }
    m_character->AI_SetMaster(c);
    c->unk_58 = m_character;
    const int faeryId = c->SG_GetCurrentFaerieId(-1);
    c->ChangeFaery(static_cast<unsigned int>(faeryId));
}

// 0x3de544 AISFaery::OnUpdate(void)
// Runs the AISDefault update first, then, when the master and the visual both exist, re-skins the visual with the
// master's faery id whenever it differs from the id stored at +0xc4.
void AISFaery::OnUpdate() {
    AISDefault::OnUpdate();
    Character* master = m_character->m_master;
    if (master == nullptr) {
        return;
    }
    VisualObject* visual = m_character->m_visualObject;  // GameObject +0x2d8
    if (visual == nullptr) {
        return;
    }
    const int previousId = m_currentFaerieId;
    const int masterFaeryId = master->SG_GetCurrentFaerieId(-1);
    if (previousId == masterFaeryId) {
        return;
    }
    m_currentFaerieId = master->SG_GetCurrentFaerieId(-1);
    visual->SetModularSkin(0, m_currentFaerieId);
}
