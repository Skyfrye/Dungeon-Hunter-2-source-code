// Batch g1-game-character-pack8-870e63-0: the CSSpawn and CSStunned character states, the CharMenuTutorialMsg queue entry and
// CharPropTextField (the gameswf text binding). Declarations come from dh2/CSSpawn.hpp, dh2/CSStunned.hpp,
// dh2/CharMenuTutorialMsg.hpp and dh2/CharPropTextField.hpp. The ledger rows in
// game-character/ledger.d/g1-game-character-pack8-870e63-0.csv give each function's status. The two deleting destructors
// (CSSpawn D0 0x3c0a60, CSStunned D0 0x3c08c0) are compiler-generated and skipped.

#include <cstdint>
#include <cstring>
#include <string>

#include "dh2/CSSpawn.hpp"
#include "dh2/CSStunned.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/CharPropTextField.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/v2Controller.hpp"
#include "gameswf/gameswf_character.h"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// Event and state ids the handlers compare against.
constexpr int kInteractEvent = 40;        // CSSpawn::OnEvent: the event whose data string names "is_interactive"
constexpr int kPreSpawnState = 17;        // CSSpawn::OnFocus: the previous state id that keeps the interactive bit (PreSpawn, see Character::GetPreSetAIState)

// CharStateMachine::m_stateFlags (Character +0x520) and m_statusFlags (Character +0x528) bits.
constexpr std::uint32_t kInteractiveBit = 0x2000u;   // set by CSSpawn::OnEvent (event 40) and kept across CSSpawn::OnFocus
constexpr std::uint32_t kSpawnFocusFlags = 577u;     // 0x241, written by CSSpawn::OnFocus
constexpr std::uint32_t kStunFocusFlags = 8706u;     // 0x2202, written by CSStunned::OnFocus
constexpr std::uint32_t kStatusStunnedBit = 2u;      // CharStateMachine::m_statusFlags bit 1, tested by CSStunned::OnUpdate

// The AnimStancedAnim/SL__LIST_IPHONE masks that select the stance offset in each focus.
constexpr int kSpawnStanceBit = 1;                   // CSSpawn::OnFocus (the original's `& 1`)
constexpr int kStunStanceBit = 0x200;                // CSStunned::OnFocus (the original's `& 0x200`)

// The tracing-switch probe. The original loads the switch file, reads one named switch and discards the bool.
void ProbeSwitch(const char* name) {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    switches->GetSwitch(name);
}

}  // namespace

namespace charproptext_internal {

// The name parse of the CharPropTextField constructor (0x41f8f0). `name` is the source text character's name (its
// get_name().c_str()). The original searches the first '_' with strchr. When there is one, the mode is name[2] if that
// is 'i', 'p' or 'b' (otherwise '_'), and the property id is GetPropIDFromName of the text after the '_'. Without a '_'
// the outputs are left as they are.
void ParsePropName(const char* name, int& propId, int& kind) {
    const char* underscore = std::strchr(name, '_');
    if (underscore == nullptr) {
        return;
    }
    // The original reads name[2] without a length check. For a name of two characters that is the terminating NUL, which
    // this reads too. A shorter name reads past its NUL in the original; here it reads as '\0', which is not a mode.
    const char letter = std::strlen(name) >= 2 ? name[2] : '\0';
    kind = (letter == 'i' || letter == 'p' || letter == 'b') ? letter : '_';
    propId = CharProperties::GetPropIDFromName(underscore + 1);
}

// The colour step of mode 'b' for a property that is not a bonus (the original's inline code in CharPropTextField::Update,
// 0x422aa8). The target's custom block (gameswf::character +0x54) is allocated on first use. Its colour transform is set to
// the identity, the target's local transform (+0x48) points at it, and the changed flag (+0x9a) is set.
void ApplyIdentityColourTransform(gameswf::character* target) {
    if (target->m_custom == nullptr) {
        target->m_custom = new gameswf::character::custom();
    }
    gameswf::character::custom* block = target->m_custom;
    block->m_cxform = gameswf::cxform::identity;
    target->m_local_cxform = &block->m_cxform;
    target->m_cxform_changed = true;
}

// Internal helper, not an original symbol: the mode dispatch of CharPropTextField::Update, given the local player's Character.
// Update fetches that Character itself. A null character takes the original's early return. The test calls this directly.
void UpdatePropText(RenderFX* renderFx, Character* localCharacter, int propId, int kind, gameswf::character* target) {
    if (localCharacter == nullptr || propId == -1) {
        return;
    }

    const int value = localCharacter->CharProperties::PROPS_GetIntWithBonus(propId, false);
    switch (kind) {
        case 'b':
            if (localCharacter->CharProperties::PROPS_IsBonus(propId)) {
                // The bonus colour: RenderFX::SetColorTransform(target, 0xFF000000, the FontTextColors propBonus constant).
                const auto colour = static_cast<unsigned int>(
                    ApplicationGetPyDataConstants()->getConstant("FontTextColors", "propBonus"));
                renderFx->SetColorTransform(target, 0xFF000000u, colour);
            } else {
                ApplyIdentityColourTransform(target);
            }
            [[fallthrough]];
        case '_':
            if (value <= 1000) {
                renderFx->FormatHTML(target, "%d", value);
            } else {
                // Values above 1000 are formatted by the string manager's "^d" pattern and set as text.
                std::string text;
                ApplicationGetStringManager()->parse(text, "^d", value);
                renderFx->SetText(target, text.c_str(), true);
            }
            break;
        case 'i':
            if (value != -1) {
                GameSWFUtils::GotoFrame(target, value);
            }
            break;
        case 'p':
            renderFx->FormatHTML(target, "%d%%", value);
            break;
        default:
            return;
    }
}

}  // namespace charproptext_internal

// ---------------------------------------------------------------------------------------------------------------------
// CSSpawn

// 0x3bffec CSSpawn::~CSSpawn() (D1)
// Empty: the body is a bare return (4-byte bx lr). The base destructor runs implicitly, as in CSIdle.
CSSpawn::~CSSpawn() {}

// 0x3bfff0 CSSpawn::OnUpdate(int,Character*,CharStateMachine*)
// Empty (4-byte bx lr). The arguments are not read.
void CSSpawn::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c0a60 CSSpawn::~CSSpawn() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above (vptr store and CustomFree).
// See the ledger row.

// 0x3c0b04 CSSpawn::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Event 40 with data "is_interactive" sets the interactive bit (Character +0x520 |= 0x2000) and runs InitPhysicalObject. Other
// events are ignored. The original returns r0 (the data pointer, or the InitPhysicalObject result); CharStateMachine::RaiseStateEvent
// calls the slot and discards that value, so the declaration is void.
void CSSpawn::OnEvent(int, Character* character, CharStateMachine*, int eventId, void* data) {
    if (eventId != kInteractEvent) {
        return;
    }
    if (std::strcmp(static_cast<const char*>(data), "is_interactive") != 0) {
        return;
    }
    character->m_stateFlags |= kInteractiveBit;
    character->InitPhysicalObject();
}

// 0x3c2f7c CSSpawn::OnBlur(int,Character*,CharStateMachine*,int)
// Probes the tracing switch, then runs InitPhysicalObject unless the interactive bit is set.
void CSSpawn::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeSwitch("isTracingCharState");
    if ((character->m_stateFlags & kInteractiveBit) == 0) {
        character->InitPhysicalObject();
    }
}

// 0x3c35ec CSSpawn::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Probes two tracing switches, then sets the spawn flags and the spawn animation (the CharAnim row's m_w32 field, plus the stance when
// the AnimStancedAnim constant has bit 0 set). The AI target is cleared and the sneaking state cancelled. When the focus came from the
// PreSpawn state (fromState 17) and the interactive bit was set, the bit is kept. The fade-in runs on the visual object with the
// Character's unk_1440 float (the original's (float*)a3 + 1296) as its duration. The fromState name is inferred from the CharState slot
// and the PreSpawn id; the event argument (the original's a6) is not read.
void CSSpawn::OnFocus(int, Character* character, CharStateMachine*, int fromState, int, void*) {
    ProbeSwitch("isTracingCharState");
    ProbeSwitch("isTracingCSSpawn");

    const bool keepInteractive =
        (fromState == kPreSpawnState) && ((character->m_stateFlags & kInteractiveBit) != 0);
    character->m_stateFlags = kSpawnFocusFlags;

    const int animId = character->GetCharAnimTable()->Spawn;
    int stance = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & kSpawnStanceBit;
    if (stance != 0) {
        stance = character->GetAnimStance();
    }
    character->CharAnimator::ANIM_Set(stance + animId);

    character->CharAI::AI_SetTarget(nullptr, false);
    character->CharAI::AI_SyncLastTarget();
    character->CancelSneaking();

    if (keepInteractive) {
        character->m_stateFlags |= kInteractiveBit;
    }
    if (character->m_visualObject != nullptr) {
        character->m_visualObject->StartFadeIn(character->unk_1440);
    }
}

// 0x3c7d0c CSSpawn::OnInit(int,Character*,CharStateMachine*)
// Registers the spawn state's events on the character's state machine, in the original's call order. The registrations go to the
// CharStateMachine base (the original's (char*)a3 + 1276). A null handler is the original's zero pointer-to-member.
void CSSpawn::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
}

// ---------------------------------------------------------------------------------------------------------------------
// CSStunned

// 0x3c002c CSStunned::~CSStunned() (D1)
// Empty: the body is a bare return (4-byte bx lr).
CSStunned::~CSStunned() {}

// 0x3c0030 CSStunned::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Empty (4-byte bx lr). The arguments are not read.
void CSStunned::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c08c0 CSStunned::~CSStunned() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above (vptr store and CustomFree).
// See the ledger row.

// 0x3c3b4c CSStunned::OnBlur(int,Character*,CharStateMachine*,int)
// Probes the tracing switch, clears the controller's block flag (v2Controller +0x08), then pins the physical object when present.
void CSStunned::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeSwitch("isTracingCharState");
    character->m_controller->m_blocked = false;
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->pin();
    }
}

// 0x3c3cc0 CSStunned::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Probes two tracing switches, sets the stun flags (0x2202), and sets the stun animation (the CharAnim row's m_w35 field, plus the stance
// when the AnimStancedAnim constant has bit 9 set). A player's controller is blocked while stunned, which the original tests with the
// IsPlayer virtual at vtable offset 0x28. The sneaking state is cancelled, and the physical object is unpinned when present.
void CSStunned::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeSwitch("isTracingCharState");
    ProbeSwitch("isTracingCSStunned");

    character->m_stateFlags = kStunFocusFlags;

    const int animId = character->GetCharAnimTable()->Stunned;
    int stance = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & kStunStanceBit;
    if (stance != 0) {
        stance = character->GetAnimStance();
    }
    character->CharAnimator::ANIM_Set(stance + animId);

    if (character->IsPlayer()) {
        character->m_controller->m_blocked = true;
    }
    character->CancelSneaking();

    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->unpin();
    }
}

// 0x3c549c CSStunned::OnUpdate(int,Character*,CharStateMachine*)
// While the stunned status bit (CharStateMachine::m_statusFlags bit 1) is clear, probes the tracing switch and sets the idle state with
// flag 0. The original leaves its return register undefined on the other path; the void slot needs no value.
void CSStunned::OnUpdate(int, Character* character, CharStateMachine*) {
    if ((character->m_statusFlags & kStatusStunnedBit) != 0) {
        return;
    }
    ProbeSwitch("isTracingCSStunned");
    character->SM_SetIdleState(false);
}

// 0x3c8730 CSStunned::OnInit(int,Character*,CharStateMachine*)
// Registers the stun state's three events on the CharStateMachine base, in the original's call order.
void CSStunned::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
}

// ---------------------------------------------------------------------------------------------------------------------
// CharMenuTutorialMsg

// 0x433b44 CharMenuTutorialMsg::CharMenuTutorialMsg(int, std::string const&, std::string const&) (C1)
// 0x433b70 is the C2 variant of the same constructor with an identical body; the two share this definition.
// The string fields are the original's STLport std::string members (the original sets the begin and end words directly; the port
// copies through std::string).
CharMenuTutorialMsg::CharMenuTutorialMsg(int stringId, const std::string& frame, const std::string& menu)
    : m_stringId(stringId), m_frame(frame), m_menu(menu) {}

// 0x45a780 CharMenuTutorialMsg::CharMenuTutorialMsg(CharMenuTutorialMsg const&)
// Copies the id and both strings. The original range-initialises each string from the source's begin and end words, which is the
// same copy.
CharMenuTutorialMsg::CharMenuTutorialMsg(const CharMenuTutorialMsg& other)
    : m_stringId(other.m_stringId), m_frame(other.m_frame), m_menu(other.m_menu) {}

// ---------------------------------------------------------------------------------------------------------------------
// CharPropTextField

// 0x41f8f0 CharPropTextField::CharPropTextField(gameswf::character*, gameswf::character*) (C1)
// 0x41f978 is the C2 variant with an identical body; the two share this definition.
// The target defaults to the source when null. The name is the source character's get_name() (the original reads the
// gameswf::character +0x44 name pointer and the tu_string text behind it), and the parse is charproptext_internal::ParsePropName.
CharPropTextField::CharPropTextField(gameswf::character* source, gameswf::character* target)
    : m_propId(-1), m_kind('_'), m_target(target != nullptr ? target : source) {
    charproptext_internal::ParsePropName(source->get_name().c_str(), m_propId, m_kind);
}

// 0x422aa8 CharPropTextField::Update(RenderFX*)
// The original takes the local player's Character as PlayerManager::GetLocalPlayer(0, true)->character_660, where the PlayerManager
// global dword_99F76C is Application +0x40 (m_playerManager, the same source NativeGetPlayerChar uses). PlayerInfo names that field
// unk_660. The fetch is unconditional in the original, and the PlayerInfo pointer is not checked here either. The dispatch is
// charproptext_internal::UpdatePropText.
void CharPropTextField::Update(RenderFX* renderFx) {
    Character* localCharacter = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    charproptext_internal::UpdatePropText(renderFx, localCharacter, m_propId, m_kind, m_target);
}
