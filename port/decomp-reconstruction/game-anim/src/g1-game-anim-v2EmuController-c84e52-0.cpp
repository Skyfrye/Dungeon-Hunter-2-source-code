// v2EmuController functions of libDungeonHunter2.so (game-anim batch g1-game-anim-v2EmuController-c84e52-0).
// Covers the two constructors (0x4065ac, 0x4066cc), the three destructors (0x4064b8, 0x406528, 0x406544), the IEvent
// entry onEvent (0x406450) and the input handlers _onEvent(EvMouseButton) (0x405f48) and _onEvent(EvKeyboard) (0x4060c0).
// Class layout and declarations: game/include/dh2/v2EmuController.hpp. Every body was checked against its assembly
// (tools/decomp_asm.py).
//
// Status: the controller logic is rebuilt in v2EmuController_detail (the keyboard switch, the mouse command choice and
// the head-towards offset) and covered by tests/g1-game-anim-v2EmuController-c84e52-0_test.cpp. Both input handlers use
// dh2/EvMouseButton.hpp and dh2/EvKeyboard.hpp. dh2/IEvent.hpp (getEventID, the vtable slot +0x08) and dh2/EventManager.hpp are present, so onEvent dispatches on the
// event id and the constructor and destructor attach and detach the receiver on dword_99F740 (dh2/global/MenuManagerGlobals.hpp).
// The v2Controller base constructor (field stores and the ASSERT) is v2Controller::v2Controller in
// game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp. Both handlers return false on every path.

#include "dh2/v2EmuController.hpp"

#include "dh2/Character.hpp"
#include "dh2/EvKeyboard.hpp"
#include "dh2/EvMouseButton.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/v2Controller.hpp"

namespace v2EmuController_detail {

// Mouse command chosen from the key-state mask unk_018 (asm of 0x405f48). Bits 0 and 1 together win (MoveTo), then
// bit 0 (WarpTo), then bit 1 (LookAt). The original translates the screen point only on the branch that runs a command.
enum class MouseCommand { kNone, kMoveTo, kWarpTo, kLookAt };

MouseCommand MouseCommandForMask(unsigned int mask) {
    if ((mask & 3u) == 3u) {
        return MouseCommand::kMoveTo;
    }
    if ((mask & 1u) != 0) {
        return MouseCommand::kWarpTo;
    }
    if ((mask & 2u) != 0) {
        return MouseCommand::kLookAt;
    }
    return MouseCommand::kNone;
}

// Offset built from the key-state mask unk_014 for the head-towards keys 135..138 (asm: loc_406284 to loc_4062fc).
// Bit 0 sets x to -200, bit 1 adds 200 to x, bit 2 subtracts 200 from y and bit 3 adds 200 to y. z stays 0. The
// original does the same steps in single precision in this order; every value is exact.
Point3D<float> HeadOffsetForMask(unsigned int mask) {
    Point3D<float> pos{0.0f, 0.0f, 0.0f};
    if ((mask & 1u) != 0) {
        pos.X = -200.0f;
    }
    if ((mask & 2u) != 0) {
        pos.X += 200.0f;
    }
    if ((mask & 4u) != 0) {
        pos.Y -= 200.0f;
    }
    if ((mask & 8u) != 0) {
        pos.Y += 200.0f;
    }
    return pos;
}

// Keyboard switch of _onEvent(EvKeyboard) (0x4060c0). key is the event's key id (the original's jump table covers ids
// 49..146) and pressed is its flag. Ids that the switch does not list do nothing.
void RouteKey(v2EmuController& self, int key, bool pressed) {
    switch (key) {
        case 49:  // '1'..'4': potions
        case 50:
        case 51:
        case 52:
            if (pressed) {
                self.Cmd_UsePotion();
            }
            return;
        case 77:
            if (pressed) {
                self.Cmd_UseOOI(nullptr);
            }
            return;
        case 78:
            if (pressed) {
                self.Cmd_Attack(nullptr);
            }
            return;
        case 95:  // skill slots 0..2 of the controlled Character
        case 96:
        case 97: {
            Character* character = self.m_character;
            if (character == nullptr) {
                return;
            }
            const int skill = character->SG_GetSkillInSlot(key - 95);
            if (skill == -1) {
                return;
            }
            if (pressed) {
                self.Cmd_BeginSkill(static_cast<unsigned int>(skill));
            } else {
                self.Cmd_EndSkill(static_cast<unsigned int>(skill));
            }
            return;
        }
        case 98:
            if (pressed) {
                self.Cmd_BeginCast(false);
            } else {
                self.Cmd_EndCast(false);
            }
            return;
        case 135:  // head-towards keys: set or clear one bit group of unk_014, then head towards the offset
        case 136:
        case 137:
        case 138: {
            static const unsigned int kBits[4] = {0x9u, 0x6u, 0x5u, 0xAu};
            const unsigned int bits = kBits[key - 135];
            self.unk_014 = pressed ? (self.unk_014 | bits) : (self.unk_014 & ~bits);
            self.Cmd_HeadTowards(HeadOffsetForMask(self.unk_014));
            return;
        }
        case 145:  // unk_018 bit groups, no command
            self.unk_018 = pressed ? (self.unk_018 | 0x9u) : (self.unk_018 & ~0x9u);
            return;
        case 146:
            self.unk_018 = pressed ? (self.unk_018 | 0x12u) : (self.unk_018 & ~0x12u);
            return;
        default:
            return;
    }
}

}  // namespace v2EmuController_detail

// 0x4065ac _ZN15v2EmuControllerC1EP14v2Controllable (complete-object constructor)
// 0x4066cc _ZN15v2EmuControllerC2EP14v2Controllable (base-object constructor): same body, defined once here.
// The v2Controller base (the field stores and the ASSERT(controllable)) runs first, in v2Controller::v2Controller
// (game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp). Then the original clears unk_014 and unk_018 and calls
// Attach(0, this+0x10, 0) and Attach(2, this+0x10, 0) on dword_99F740. Asm verified.
v2EmuController::v2EmuController(v2Controllable* controllable) : v2Controller(controllable) {
    unk_014 = 0;  // +0x14 key-state mask, cleared
    unk_018 = 0;  // +0x18 key-state mask, cleared
    dword_99F740->Attach(0, this, 0);
    dword_99F740->Attach(2, this, 0);
}

// 0x4064b8 _ZN15v2EmuControllerD1Ev (complete-object destructor)
// 0x406544 _ZN15v2EmuControllerD2Ev (base-object destructor): same body, defined once here.
// The vptr stores are compiler-managed. The original calls EventManager::Detach(0, this+0x10) and Detach(2, this+0x10)
// on dword_99F740, then returns. It does not call ~v2Controller, whose body is empty, so the implicit base call changes
// nothing.
v2EmuController::~v2EmuController() {
    dword_99F740->Detach(0, this);
    dword_99F740->Detach(2, this);
}

// 0x406528 _ZN15v2EmuControllerD0Ev (deleting destructor) is compiler-generated: it calls D1 and then CustomFree(this).
// The C++ delete expression covers it, so no body is written here.

// 0x406450 _ZN15v2EmuController7onEventEPK6IEventPK12EventManager
// Asm verified: the event's type id comes from the IEvent vtable (slot +0x08, LDR PC,[R3,#8]). Type 0 tail-calls the
// keyboard handler (B _onEvent(EvKeyboard)), type 2 tail-calls the mouse handler (B _onEvent(EvMouseButton)), and any
// other type returns 0. Both handlers return 0 on every path, so this returns 0 on every path.
bool v2EmuController::onEvent(const IEvent* event, const EventManager* manager) {
    switch (event->getEventID()) {
        case 0:  // EvKeyboard
            // Asm: the tail call passes the same pointer (MOV R1,R4), so no base adjustment happens.
            return _onEvent(static_cast<const EvKeyboard*>(event), manager);
        case 2:  // EvMouseButton
            return _onEvent(static_cast<const EvMouseButton*>(event), manager);
        default:
            return false;
    }
}

// 0x405f48 _ZN15v2EmuController8_onEventEPK13EvMouseButtonPK12EventManager
// Asm verified. Acts only when the word at event+0x08 and the byte at event+0x0c are both 0. The screen point is the
// int16 at event+0x0e (x) and the int16 at event+0x10 (y), each converted to float. The command comes from unk_018
// through v2EmuController_detail::MouseCommandForMask: MoveTo, WarpTo or LookAt. The command runs only when
// PFWorld::TranslateScreenToWorld succeeds. Returns 0 on every path.
bool v2EmuController::_onEvent(const EvMouseButton* event, const EventManager* manager) {
    (void)manager;
    if (event->button == 0 && !event->pressed) {
        // The command comes from the key-state mask. It runs only when the screen point maps to the world.
        const v2EmuController_detail::MouseCommand command = v2EmuController_detail::MouseCommandForMask(unk_018);
        Point2D<float> screen{static_cast<float>(event->x), static_cast<float>(event->y)};
        Point3D<float> world{};
        if (command != v2EmuController_detail::MouseCommand::kNone &&
            Singleton<PFWorld>::s_inst.TranslateScreenToWorld(screen, world)) {
            switch (command) {
                case v2EmuController_detail::MouseCommand::kMoveTo:
                    Cmd_MoveTo(world);
                    break;
                case v2EmuController_detail::MouseCommand::kWarpTo:
                    Cmd_WarpTo(world);
                    break;
                case v2EmuController_detail::MouseCommand::kLookAt:
                    Cmd_LookAt(world);
                    break;
                default:
                    break;
            }
        }
    }
    return false;
}

// 0x4060c0 _ZN15v2EmuController8_onEventEPK10EvKeyboardPK12EventManager
// Asm verified. The key id at event+0x0c is the switch value and the byte at event+0x10 is the pressed flag. The switch
// is v2EmuController_detail::RouteKey, rebuilt and tested. Returns 0 on every path.
bool v2EmuController::_onEvent(const EvKeyboard* event, const EventManager* manager) {
    (void)manager;
    v2EmuController_detail::RouteKey(*this, event->key, event->pressed);
    return false;
}
