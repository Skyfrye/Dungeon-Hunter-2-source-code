// v2PS3MoveController functions of libDungeonHunter2.so (game-anim batch g1-game-anim-pack2-a632de-0; the constructor
// and Update rows were redone under r2a-game-anim-pack3-a632de-0).
// Rebuilt from the Hex-Rays pseudocode in recovered/native/hexrays-all and checked against the ARM assembly
// (tools/decomp_asm.py --address 0x409bd8 lists every call). Class layout and declarations: game/include/dh2/v2PS3MoveController.hpp.
//
// Status. The destructors and the constructors are rebuilt (see their rows). The constructors run the
// v2Controller(v2Controllable*) base constructor, defined in game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp, which
// makes the base stores and the null-controllable assert. Update is partial for one reason: its four EvGamepad events are dropped,
// because dh2/EvGamepad.hpp does not exist (see RaiseGamepadEvent). Every other read is the one the original makes: the
// Gamepad channels (kPadBindings), the cursor words of MenuManager, PFWorld::TranslateScreenToWorld, the player id in
// PlayerInfo, the room object list of ObjectManager, and the debug switches.

#include "dh2/v2PS3MoveController.hpp"

#include <cstdint>
#include <cstring>
#include <list>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point2D, Point3D
#include "dh2/Application.hpp"                // ApplicationGetInstance(), the Singleton<Application>::s_inst accessor
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/EvGamepad.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"

namespace v2PS3MoveController_detail {

// The pad controls Update reads, named by the call they drive.
enum PadControl : int {
    kPadPrimary,       // aim, target search, Cmd_HeadTo, Cmd_Attack / Cmd_UseOOI while held
    kPadMoveToClick,   // Cmd_Stop on release unless IsMovingToClick is set
    kPadAttack,        // Cmd_Attack(nullptr) while held
    kPadSkill0,        // skill slot 0, and EvGamepad action 2
    kPadSkill1,        // skill slot 1, and EvGamepad action 3
    kPadSkill2,        // skill slot 2, and EvGamepad action 1
    kPadEventAction0,  // EvGamepad action 0 only
    kPadMadness0,      // move madness, slot 0
    kPadMadness1,      // move madness, slot 1
    kPadMadness2,      // move madness, slot 2
    kPadPotion,        // Cmd_UsePotion while IsUsingMoveMadness is set
    kPadCast,          // Cmd_BeginCast(false) on press, Cmd_EndCast(false) on release
    kPadOpenIGM,       // Cmd_OpenIGM on release while latched
};

// Skill slot id of "no skill" (Character::SG_GetSkillInSlot returns -1, which the original compares as unsigned).
constexpr unsigned int kNoSkill = 0xFFFFFFFFu;

// Where each control reads. Gamepad::m_buttons[channel] holds it: the original's channel k is at +0x0c + 0x20 * k. A live
// control reads value, minimum and maximum, and has no latch. Every other control reads the threshold group: previous,
// previous_minimum and previous_maximum, with previous_above_threshold as its latch. The offsets below are the value
// (or previous) word the asm loads for each control, from the Update listing (0x409bd8).
struct PadBinding {
    int channel;  // index into Gamepad::m_buttons
    bool live;    // true: value / minimum / maximum; false: previous / previous_minimum / previous_maximum / latch
};

constexpr PadBinding kPadBindings[] = {
    {30, true},   // kPadPrimary:       value +0x3cc, minimum +0x3d0, maximum +0x3d4
    {30, false},  // kPadMoveToClick:   previous +0x3d8, latch +0x3e8
    {26, true},   // kPadAttack:        value +0x34c, minimum +0x350, maximum +0x354
    {25, false},  // kPadSkill0:        previous +0x338, latch +0x348
    {28, false},  // kPadSkill1:        previous +0x398, latch +0x3a8
    {27, false},  // kPadSkill2:        previous +0x378, latch +0x388
    {26, false},  // kPadEventAction0:  previous +0x358, latch +0x368
    {33, false},  // kPadMadness0:      previous +0x438, latch +0x448
    {34, false},  // kPadMadness1:      previous +0x458, latch +0x468
    {35, false},  // kPadMadness2:      previous +0x478, latch +0x488
    {36, false},  // kPadPotion:        previous +0x498, latch +0x4a8
    {29, false},  // kPadCast:          previous +0x3b8, latch +0x3c8
    {31, false},  // kPadOpenIGM:       previous +0x3f8, latch +0x408
};

// The channel a control reads.
const Gamepad::Channel& PadChannel(const Gamepad::Channel* buttons, PadControl control) {
    return buttons[kPadBindings[control].channel];
}

// The value the press test compares: value for a live control, previous for a threshold control.
float PadValue(const Gamepad::Channel* buttons, PadControl control) {
    const Gamepad::Channel& channel = PadChannel(buttons, control);
    return kPadBindings[control].live ? channel.value : channel.previous;
}

// The lower bound of the press level: minimum, or previous_minimum for a threshold control.
float PadBound0(const Gamepad::Channel* buttons, PadControl control) {
    const Gamepad::Channel& channel = PadChannel(buttons, control);
    return kPadBindings[control].live ? channel.minimum : channel.previous_minimum;
}

// The upper bound of the press level: maximum, or previous_maximum for a threshold control.
float PadBound1(const Gamepad::Channel* buttons, PadControl control) {
    const Gamepad::Channel& channel = PadChannel(buttons, control);
    return kPadBindings[control].live ? channel.maximum : channel.previous_maximum;
}

// The latch, set while the control is held. A live control has none and reports false.
bool PadLatched(const Gamepad::Channel* buttons, PadControl control) {
    return !kPadBindings[control].live && PadChannel(buttons, control).previous_above_threshold;
}

// The press level, ((bound1 + bound0) + 1.0f) * 0.5f, in the original's order. A control is pressed while its value is
// at or above this level.
float PadPressLevel(const Gamepad::Channel* buttons, PadControl control) {
    return (PadBound1(buttons, control) + PadBound0(buttons, control) + 1.0f) * 0.5f;
}

// The cursor the primary control aims with: the two words at MenuManager +0x50 and +0x54 (Application +0x54, the global
// dword_99F780), copied bit for bit into a Point2D<float>. The original passes those words to TranslateScreenToWorld.
Point2D<float> CursorScreenPosition() {
    const MenuManager& menu = *ApplicationGetInstance().m_menuManager;
    const std::uint32_t words[2] = {menu.unk_50, menu.unk_54};
    Point2D<float> screen{0.0f, 0.0f};
    std::memcpy(&screen.X, &words[0], sizeof(float));
    std::memcpy(&screen.Y, &words[1], sizeof(float));
    return screen;
}

// PFWorld::TranslateScreenToWorld of the cursor, on Singleton<PFWorld>::s_inst. Returns false, and leaves `world` alone,
// when the cursor point does not hit the world.
bool TranslateCursorToWorld(Point3D<float>& world) {
    return Singleton<PFWorld>::s_inst.TranslateScreenToWorld(CursorScreenPosition(), world);
}

// The player id of a character: the int at +0x668 of the PlayerInfo that PlayerManager::GetPlayerByCharacter returns
// (the global dword_99F76C, Application +0x40). The original reads it with no null check, and so does this. PlayerInfo's
// unk_668 is that word; its name is still a candidate (m_playerId).
int PlayerIdForCharacter(const Character* character) {
    PlayerInfo* player = ApplicationGetInstance().m_playerManager->GetPlayerByCharacter(character, false);
    return player->unk_668;
}

// Raises EvGamepad on Application::m_eventManager (Application +0x14, the global dword_99F740). The original fills the event
// before EventManager::Raise: vtable _ZTV9EvGamepad (IEvent base), +0x04 event id 7, +0x08 action, +0x0c pressed, +0x10 player
// id, +0x14 1.0f (the asm stores these before each BL to EventManager::Raise).
void RaiseGamepadEvent(int action, int pressed, int playerId) {
    const EvGamepad event(action, pressed, playerId, 1.0f);
    ApplicationGetInstance().m_eventManager->Raise(event);
}

// DebugSwitches::load(), then GetSwitch(name), on DebugSwitches::s_inst (the object the original passes as this).
bool DebugSwitchOn(const char* name) {
    DebugSwitches::s_inst.load();
    const std::string key(name);
    return DebugSwitches::s_inst.GetSwitch(key);
}

// One hold control for a skill: the skill slots (0, 1 and 2) and the move madness slots. Press (value >= press level)
// begins the skill when the control was not latched. Release (value < press level) ends it when it was latched. The
// original orders these comparisons differently for the two groups. The calls and their conditions are the same.
void SkillHold(v2Controller& controller, const Gamepad::Channel* buttons, PadControl control, unsigned int skill) {
    if (PadValue(buttons, control) >= PadPressLevel(buttons, control)) {
        if (!PadLatched(buttons, control)) controller.Cmd_BeginSkill(skill);
    } else if (PadLatched(buttons, control)) {
        controller.Cmd_EndSkill(skill);
    }
}

// One EvGamepad for an action control. Release (value < press level) raises pressed = 0 when latched. Press raises
// pressed = 1 when it was not latched. The original orders the action-1 comparison differently. The reads have no side
// effects, so the outcome is the same.
void RaiseOnChange(const Gamepad::Channel* buttons, PadControl control, int action, int playerId) {
    if (PadValue(buttons, control) >= PadPressLevel(buttons, control)) {
        if (!PadLatched(buttons, control)) RaiseGamepadEvent(action, 1, playerId);
    } else if (PadLatched(buttons, control)) {
        RaiseGamepadEvent(action, 0, playerId);
    }
}

}  // namespace v2PS3MoveController_detail

using namespace v2PS3MoveController_detail;

// 0x4098ac v2PS3MoveController::~v2PS3MoveController() (D2, base-object destructor)
// 0x4098b0 v2PS3MoveController::~v2PS3MoveController() (D1, complete-object destructor), same body.
// Both are empty in the original (4 bytes, bx lr). The v2Controller base destructor is empty too, so the call is not made.
// The vptr writes are the compiler's.
v2PS3MoveController::~v2PS3MoveController() {}

// 0x4098b4 v2PS3MoveController::~v2PS3MoveController() (D0, deleting destructor)
// skipped: compiler-generated deleting destructor. The original body is the D1 call (0x4098b0) and then CustomFree(this)
// (28 bytes in the symbol table). The C++ compiler emits it for the virtual destructor declared in
// dh2/v2PS3MoveController.hpp, so no body is written here.

// 0x4098d0 v2PS3MoveController::v2PS3MoveController(v2Controllable*, int) (C1, complete-object constructor)
// 0x4099bc v2PS3MoveController::v2PS3MoveController(v2Controllable*, int) (C2, base-object constructor), same body.
// reconstructed: the v2Controller(v2Controllable*) base constructor runs first, through the initializer list. It makes
// the base stores (vptr, +0x04 m_controllable, +0x08 m_blocked, +0x09, +0x0a and +0x0c m_character) and runs the
// null-controllable assert (level 2 aborts, level 1 prints the v2Controller.h:68 message). The original writes that base
// inline and runs the assert once, at loc_409948 (asm verified), so the assert is not repeated here. The base constructor
// is defined in game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp.
// This body does: the gamepad index at +0x10 and the three zeroed words at +0x14..+0x1c.
v2PS3MoveController::v2PS3MoveController(v2Controllable* controllable, int gamepadIndex)
    : v2Controller(controllable) {
    m_gamepadIndex = gamepadIndex;  // +0x10
    unk_14 = 0;                     // +0x14
    unk_18 = 0;                     // +0x18
    unk_1c = 0;                     // +0x1c
}

// 0x409bd8 v2PS3MoveController::Update() (vtable slot 2, overrides v2Controller::Update)
// The four EvGamepad events (actions 2, 0, 1 and 3) are raised through RaiseGamepadEvent. Every read and command is the original's: the pad channels, the cursor and PFWorld translation,
// the spot target, the target search over the room objects, the debug switches and the player id.
void v2PS3MoveController::Update() {
    InputManager* input = InputManager::GetInstance();
    if (m_gamepadIndex >= input->GetNumGamepads()) return;  // +0x10
    Gamepad* pad = (m_gamepadIndex < 0) ? input->GetFirstConnectedGamepad() : input->GetGamepad(m_gamepadIndex);
    if (pad == nullptr) return;
    const Gamepad::Channel* buttons = pad->m_buttons;

    // Primary control. While held: with a pending spot target, store the translated cursor point on the character
    // (+0x14b0 and +0x14bc). Otherwise head to the cursor point, search for a target and act on the nearest hit.
    if (PadValue(buttons, kPadPrimary) >= PadPressLevel(buttons, kPadPrimary)) {
        Character* character = m_character;   // +0x0c, the original's v18
        Point3D<float> pos{0.0f, 0.0f, 0.0f};  // zeroed before the translation (v42..v44)
        if (character != nullptr && character->m_spotTargetPending != 0) {  // Character +0x14c8
            if (TranslateCursorToWorld(pos)) {
                character->m_spotTargetPos = pos;       // Character +0x14b0
                character->m_spotTargetValidPos = pos;  // Character +0x14bc
            }
        } else {
            if (TranslateCursorToWorld(pos)) Cmd_HeadTo(pos);
            ObjectSearcher::TargetList targets(character, 1, 0, 1);
            targets.m_filterMask = 89;  // +0x34, overrides the constructor argument
            targets.m_arg3 = 1;         // +0x38
            while (!targets.m_results.empty()) targets.m_results.pop();
            // The sorter is ObjectSearcher::TargetSorter::_sortClosest, which the constructor's sortType 1 installs.
            // The room objects are a RoomObjectList over ObjectManager's room list (ObjectManager +0x80, the global
            // dword_99F764 + 0x80), built the way the original builds it on the stack: the list, the first room, the
            // end of the list, and a null current object.
            ObjectSearcher::RoomObjectList rooms;
            const std::list<std::list<GameObject*>*>& roomZones = ApplicationGetInstance().m_objectManager->m_roomZones;
            rooms.m_list = &roomZones;
            rooms.m_node = roomZones.begin();
            rooms.m_end = roomZones.end();
            rooms.m_current = {};
            // maxAngle is the float 0x40C90FDB (2 * pi, 6.2831855f), the bits the original loads with MOVW/MOVT.
            // 6.2832f is a different float (0x40C90FF9), so it is not used.
            targets.Search(pos, 0.0f, 6.2831855f, rooms);
            if (!targets.m_results.empty()) {
                GameObject* target = targets.m_results.top().object;
                if (target != nullptr && target->IsInteractive(character)) {
                    if (character->AI_CanAttack(target)) {
                        Cmd_Attack(nullptr);
                    } else if (!character->SM_IsInteracting()) {
                        Cmd_UseOOI(nullptr);
                    }
                }
            }
        }
    }

    // Move-to-click control. On release, stop unless the IsMovingToClick debug switch is set.
    if (PadValue(buttons, kPadMoveToClick) < PadPressLevel(buttons, kPadMoveToClick) &&
        PadLatched(buttons, kPadMoveToClick) && !DebugSwitchOn("IsMovingToClick")) {
        Cmd_Stop();
    }

    // Attack control. Attack while held (no latch).
    if (PadValue(buttons, kPadAttack) >= PadPressLevel(buttons, kPadAttack)) Cmd_Attack(nullptr);

    // Skill slots, then move madness when the IsUsingMoveMadness debug switch is set. All three slots are read before
    // any of them is used, as in the original.
    Character* character = m_character;  // the original's v6
    if (character != nullptr) {
        const unsigned int skill0 = static_cast<unsigned int>(character->SG_GetSkillInSlot(0));
        const unsigned int skill1 = static_cast<unsigned int>(character->SG_GetSkillInSlot(1));
        const unsigned int skill2 = static_cast<unsigned int>(character->SG_GetSkillInSlot(2));
        if (skill0 != kNoSkill) SkillHold(*this, buttons, kPadSkill0, skill0);
        if (skill1 != kNoSkill) SkillHold(*this, buttons, kPadSkill1, skill1);
        if (skill2 != kNoSkill) SkillHold(*this, buttons, kPadSkill2, skill2);

        if (m_character != nullptr && DebugSwitchOn("IsUsingMoveMadness")) {
            Character* madnessCharacter = m_character;  // the original re-reads +0x0c here
            const unsigned int madness0 = static_cast<unsigned int>(madnessCharacter->SG_GetSkillInSlot(0));
            const unsigned int madness1 = static_cast<unsigned int>(madnessCharacter->SG_GetSkillInSlot(1));
            const unsigned int madness2 = static_cast<unsigned int>(madnessCharacter->SG_GetSkillInSlot(2));
            if (madness0 != kNoSkill) SkillHold(*this, buttons, kPadMadness0, madness0);
            if (madness1 != kNoSkill) SkillHold(*this, buttons, kPadMadness1, madness1);
            if (madness2 != kNoSkill) SkillHold(*this, buttons, kPadMadness2, madness2);
        }
    }

    // Potion control. On press, use a potion when IsUsingMoveMadness is set. The control must not be latched.
    if (PadValue(buttons, kPadPotion) >= PadPressLevel(buttons, kPadPotion) && !PadLatched(buttons, kPadPotion)) {
        if (DebugSwitchOn("IsUsingMoveMadness")) Cmd_UsePotion();
    }

    // Cast control. Press begins the cast (argument false), release ends it.
    if (PadValue(buttons, kPadCast) >= PadPressLevel(buttons, kPadCast)) {
        if (!PadLatched(buttons, kPadCast)) Cmd_BeginCast(false);
    } else if (PadLatched(buttons, kPadCast)) {
        Cmd_EndCast(false);
    }

    // Open-IGM control. Opens the menu on release while latched.
    if (PadValue(buttons, kPadOpenIGM) < PadPressLevel(buttons, kPadOpenIGM) && PadLatched(buttons, kPadOpenIGM)) {
        Cmd_OpenIGM();
    }

    // EvGamepad events for the skill and action controls, in the original's order: action 2, action 0, action 1,
    // action 3. The player id comes from the character's player record (0 when there is no character). Nothing
    // follows the last event, as in the original.
    const int playerId = (m_character != nullptr) ? PlayerIdForCharacter(m_character) : 0;
    RaiseOnChange(buttons, kPadSkill0, 2, playerId);
    RaiseOnChange(buttons, kPadEventAction0, 0, playerId);
    RaiseOnChange(buttons, kPadSkill2, 1, playerId);
    RaiseOnChange(buttons, kPadSkill1, 3, playerId);
}
