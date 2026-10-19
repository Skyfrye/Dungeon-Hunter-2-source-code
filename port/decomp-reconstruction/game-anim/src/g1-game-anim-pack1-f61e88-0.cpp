// Batch g1-game-anim-pack1-f61e88-0: the destructors, constructors and Update of v2GamepadController, the
// destructors and constructors of v2HudController, and the destructors, constructors and Update of v2NetController.
//
// The v2Controller base constructor (the field stores and the ASSERT(controllable)) is v2Controller::v2Controller in
// game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp. The derived constructors below name it as their base.

#include "dh2/InputManager.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/Vec3f_J.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/GamepadTweaker.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/EvGamepadAxis.hpp"
#include "dh2/EvGamepad.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Character.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/Application.hpp"
#include <cmath>
#include "dh2/v2GamepadController.hpp"
#include "dh2/v2HudController.hpp"
#include "dh2/v2NetController.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/v2Controllable.hpp"
#include "core-platform/memory.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/c_online.hpp"
#include <cstdio>
#include <cstdlib>

namespace v2gamepad_detail {

// The threshold every flagged button group of v2GamepadController::Update compares its value with:
// (lo + hi + 1.0f) * 0.5f in single precision, where lo and hi are that group's two calibration floats.
float ButtonThreshold(float lo, float hi) {
    return (lo + hi + 1.0f) * 0.5f;
}

// Result of one button group of Update. kReleased raises the group's event with state 0, kPressed with state 1.
enum class ButtonEvent { kNone, kReleased, kPressed };

// The edge rule each group applies. Below the threshold, state 0 is raised only when the group's pressed flag (+0x10
// of the group) is set. At or above the threshold, state 1 is raised only when the flag is clear. Update does not
// write the flag in these groups, so the caller stores nothing from this result.
ButtonEvent ButtonEdge(float value, float threshold, bool flag) {
    if (value < threshold) {
        return flag ? ButtonEvent::kReleased : ButtonEvent::kNone;
    }
    return flag ? ButtonEvent::kNone : ButtonEvent::kPressed;
}

}  // namespace v2gamepad_detail

// ---------------------------------------------------------------------------------------------------------------------
// v2GamepadController

// 0x406920 _ZN19v2GamepadControllerD2Ev (base-object destructor)
// 0x406924 _ZN19v2GamepadControllerD1Ev (complete-object destructor)
// Both are a single BX LR in the original (asm verified for D1). The implicit base destructor is empty too. The two
// symbols share this body, so it is defined once here.
v2GamepadController::~v2GamepadController() {}

// 0x40695c _ZN19v2GamepadControllerD0Ev (deleting destructor)
// skipped: compiler-generated. The original calls D1 (0x406924) and then CustomFree(this) (asm verified). The C++
// delete expression runs the destructor and then the deallocation, so no body is written here.

// 0x406978 _ZN19v2GamepadControllerC1EP14v2Controllablei (complete-object constructor)
// 0x406a64 _ZN19v2GamepadControllerC2EP14v2Controllablei (base-object constructor), same body, defined once here.
// The v2Controller base (field stores and ASSERT(controllable)) runs first, in v2Controller::v2Controller. Then m_padIndex
// at +0x10 and unk_014 at +0x14..+0x1c are set. The vptr writes are compiler-managed.
v2GamepadController::v2GamepadController(v2Controllable* controllable, int padIndex)
    : v2Controller(controllable)
{
    m_padIndex = padIndex;
    unk_014.X = 0.0f;
    unk_014.Y = 0.0f;
    unk_014.Z = 0.0f;
}

// 0x406c2c _ZN19v2GamepadController6UpdateEv
// Reads the pad selected by m_padIndex (a negative index selects the first connected pad). The left stick (axes 0 and 1,
// y negated) is turned into a direction: a dead zone of 0.25 and a linear ramp up to full deflection. While the character
// has a spot target pending (Character +0x14c8) the stick moves that target instead (dt * 1.25 per frame, rotated by the
// camera). Otherwise the direction is rotated by the active camera's look-at angle and sent to Cmd_HeadTowards, with the
// old handling (switch OPTIM_UseOldGamepadHandling) re-sending it only when it changed. Then the buttons: attack
// (control 0), the three skill slots (controls 2, 3, 1), the cast (8), the potions (10, 12, 11, 13), the lift / use
// (control 6), the in-game menu (14 on release), the 26 flagged controls as EvGamepad events (control 19 also asks the scene
// manager for a screenshot when released), the zoom axis (3) as EvGamepadAxis, and the map camera on the stick.
void v2GamepadController::Update() {
    InputManager* input = InputManager::GetInstance();
    if (m_padIndex >= input->GetNumGamepads()) {
        return;
    }
    // +0x10 m_padIndex: a negative index selects the first connected pad, any other index selects that pad.
    Gamepad* pad = (m_padIndex < 0) ? input->GetFirstConnectedGamepad() : input->GetGamepad(m_padIndex);
    if (!pad) {
        return;
    }
    ApplicationGetInstance().m_gamepadTweaker->UpdateButtonMappings();  // dword_99F794 = Application +0x68

    // previous_* thresholds of the buttons, value thresholds of the raw reads (controls 0 and 6)
    auto down = [pad](int k) {
        const Gamepad::Channel& c = pad->m_buttons[k];
        return c.previous >= ((c.previous_maximum + c.previous_minimum) + 1.0f) * 0.5f;
    };
    auto latched = [pad](int k) { return pad->m_buttons[k].previous_above_threshold; };
    auto valueDown = [pad](int k) {
        const Gamepad::Channel& c = pad->m_buttons[k];
        return c.value >= ((c.maximum + c.minimum) + 1.0f) * 0.5f;
    };
    // An axis as a fraction of its range: (value + value) / (maximum - minimum).
    auto axisRatio = [pad](int axis) {
        const Gamepad::Channel& c = pad->m_axes[axis];
        return (c.value + c.value) / (c.maximum - c.minimum);
    };

    Point3D<float> stick;
    stick.X = axisRatio(0);
    stick.Y = -axisRatio(1);
    stick.Z = 0.0f;
    const float length = sqrtf((stick.X * stick.X + stick.Y * stick.Y) + 0.0f);
    Point3D<float> direction;
    if (length >= 0.25f) {
        stick.normalize();
        if (length < 1.0f) {
            const float scale = (length - 0.25f) / 0.75f;
            stick.X = scale * stick.X;
            stick.Y = stick.Y * scale;
            stick.Z = stick.Z * scale;
        }
        direction = stick;
    } else {
        direction = Vec3f_Origin;
    }

    // Rotates the direction by the angle between the world J axis and the active camera's look-at vector (z cleared).
    auto rotateByCamera = [&direction]() {
        if (CameraBase::s_activeCamera != nullptr) {
            Point3D<float> look = CameraBase::s_activeCamera->GetCameraLookAtVec();
            look.Z = 0.0f;
            const float angle = Vec3f_J.angle(look);
            direction.rotateXY(angle);
        }
    };
    auto distanceSquared = [](const Point3D<float>& a, const Point3D<float>& b) {
        const float dx = a.X - b.X;
        const float dy = a.Y - b.Y;
        const float dz = a.Z - b.Z;
        return (dx * dx + dy * dy) + dz * dz;
    };

    Character* character = m_character;  // +0x0c
    if (character != nullptr && character->m_spotTargetPending) {  // +0x14c8
        unk_014 = Vec3f_Origin;
        rotateByCamera();
        direction.X = direction.X * 1.25f;
        direction.Y = direction.Y * 1.25f;
        direction.Z = direction.Z * 1.25f;
        const float dt = static_cast<float>(static_cast<unsigned int>(ApplicationGetInstance().GetDt()));
        character->m_spotTargetPos.X = dt * direction.X + character->m_spotTargetPos.X;  // +0x14b0
        character->m_spotTargetPos.Y = dt * direction.Y + character->m_spotTargetPos.Y;
        character->m_spotTargetPos.Z = dt * direction.Z + character->m_spotTargetPos.Z;
    } else if (DebugSwitches::GetInstance()->load(), DebugSwitches::GetInstance()->GetSwitch("OPTIM_UseOldGamepadHandling")) {
        if (distanceSquared(direction, unk_014) > 0.0001f) {
            unk_014 = direction;
            rotateByCamera();
            Cmd_HeadTowards(direction);
        } else if (m_character != nullptr && !m_character->SM_IsMoving(false)) {
            unk_014 = Point3D<float>{0.0f, 0.0f, 0.0f};
        }
    } else {
        if (distanceSquared(direction, Vec3f_Origin) > 0.0001f) {
            unk_014 = direction;
            rotateByCamera();
            Cmd_HeadTowards(direction);
        } else if (distanceSquared(unk_014, Vec3f_Origin) > 0.0001f) {
            unk_014 = Point3D<float>{0.0f, 0.0f, 0.0f};
            Cmd_HeadTowards(unk_014);
        }
    }

    if (valueDown(0)) {
        Cmd_Attack(nullptr);
    }
    if (Character* skillUser = m_character) {
        const int skillA = skillUser->SG_GetSkillInSlot(0);
        const int skillB = skillUser->SG_GetSkillInSlot(1);
        const int skillC = skillUser->SG_GetSkillInSlot(2);
        // Slot 0 on control 2, slot 1 on control 3, slot 2 on control 1.
        auto skillControl = [&](int skill, int k) {
            if (skill == -1) {
                return;
            }
            if (!down(k)) {
                if (latched(k)) {
                    Cmd_EndSkill(static_cast<unsigned int>(skill));
                }
            } else if (!latched(k)) {
                Cmd_BeginSkill(static_cast<unsigned int>(skill));
            }
        };
        skillControl(skillA, 2);
        skillControl(skillB, 3);
        skillControl(skillC, 1);
    }
    if (down(8)) {
        if (!latched(8)) {
            Cmd_BeginCast(false);
        }
    } else if (latched(8)) {
        Cmd_EndCast(false);
    }
    if ((down(10) && !latched(10)) || (down(12) && !latched(12)) || (down(11) && !latched(11)) || (down(13) && !latched(13))) {
        Cmd_UsePotion();
    }
    if (valueDown(6)) {
        if (Character* user = m_character) {
            GameObject* interest = user->m_objectOfInterest;  // +0x14a4
            if (user->SM_IsLifting()) {
                Cmd_DropObject();
            } else if (interest != nullptr && interest->IsInteractive(user) && interest->GetInteractionType(user) != 8) {
                Cmd_UseOOI(nullptr);
            }
        }
    }
    if (!down(14) && latched(14)) {
        Cmd_OpenIGM();
    }

    // The player slot that EvGamepad events carry (PlayerInfo +0x668), 0 without a character.
    const int playerId = m_character != nullptr ? ApplicationGetInstance().m_playerManager->GetPlayerByCharacter(m_character, false)->unk_668 : 0;
    EventManager* events = ApplicationGetInstance().m_eventManager;  // dword_99F740
    // The 26 flagged controls, with the button code each raises. Control 23 raises code 7 and control 24 code 9.
    struct Button {
        int control;
        int code;
    };
    static const Button kButtons[] = {{0, 0},   {1, 1},   {2, 2},   {3, 3},   {4, 4},   {5, 5},   {6, 6},   {23, 7},
                                      {8, 8},   {24, 9},  {10, 10}, {11, 11}, {12, 12}, {13, 13}, {14, 14}, {15, 15},
                                      {37, 37}, {38, 38}, {39, 39}, {40, 40}, {41, 41}, {42, 42}, {43, 43}, {44, 44},
                                      {19, 19}, {22, 22}};
    for (const Button& button : kButtons) {
        if (!down(button.control)) {
            if (latched(button.control)) {
                if (button.code == 19) {
                    DeviceSceneManager()->m_screenshotRequested = true;  // scene manager +0x290
                }
                const EvGamepad event(button.code, 0, playerId, 1.0f);
                events->Raise(event);
            }
        } else if (!latched(button.control)) {
            const EvGamepad event(button.code, 1, playerId, 1.0f);
            events->Raise(event);
        }
    }

    const float zoom = axisRatio(3);
    if (std::fabs(zoom) > 0.25) {
        Cmd_Zoom(axisRatio(3));
        const EvGamepadAxis event(3, playerId, zoom);
        events->Raise(event);
    }
    const float mapY = axisRatio(1);
    const float mapX = axisRatio(0);
    if (std::fabs(mapX) > 0.25f) {
        Cmd_TranslateMapCam(mapX, mapY);
        return;
    }
    if (std::fabs(mapY) > 0.25f) {
        Cmd_TranslateMapCam(mapX, mapY);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// v2HudController

// 0x4088ec _ZN15v2HudControllerD2Ev (base-object destructor)
// 0x4088f0 _ZN15v2HudControllerD1Ev (complete-object destructor)
// One BX LR each in the original (asm verified for D1). Same body, defined once here.
v2HudController::~v2HudController() {}

// 0x408914 _ZN15v2HudControllerD0Ev (deleting destructor)
// skipped: compiler-generated. The original calls D1 (0x4088f0) and then CustomFree(this) (asm verified). The C++
// delete expression covers it, so no body is written here.

// 0x408930 _ZN15v2HudControllerC1EP14v2Controllable (complete-object constructor)
// 0x408a04 _ZN15v2HudControllerC2EP14v2Controllable (base-object constructor), same body, defined once here.
// v2HudController adds no members, so the body is the v2Controller base constructor alone.
v2HudController::v2HudController(v2Controllable* controllable)
    : v2Controller(controllable)
{
}

// ---------------------------------------------------------------------------------------------------------------------
// v2NetController

// 0x4091d0 _ZN15v2NetControllerD2Ev (base-object destructor)
// 0x4091d4 _ZN15v2NetControllerD1Ev (complete-object destructor)
// One BX LR each in the original (asm verified for D1). Same body, defined once here.
v2NetController::~v2NetController() {}

// 0x4091d8 _ZN15v2NetControllerD0Ev (deleting destructor)
// skipped: compiler-generated. The original calls D1 (0x4091d4) and then CustomFree(this) (asm verified). The C++
// delete expression covers it, so no body is written here.

// 0x4091f4 _ZN15v2NetControllerC1EP14v2Controllable (complete-object constructor)
// 0x4092c8 _ZN15v2NetControllerC2EP14v2Controllable (base-object constructor), same body, defined once here.
// v2NetController adds no members, so the body is the v2Controller base constructor alone.
v2NetController::v2NetController(v2Controllable* controllable)
    : v2Controller(controllable)
{
}

// 0x40939c _ZN15v2NetController6UpdateEv
// Online with a character: a received CMsgControllerAction is taken from the queue. When its sender byte is the controlled
// character's network id the action is applied to the controllable (0 attack the object, 1 begin skill, 2 end skill, 3 set faerie
// and begin cast, 4 end cast, 5 use the object); any other action fails the ASSERT at v2NetController.cpp:103. A message from
// another sender is dropped without being marked, unless its sender is a character that is not an active player record.
// The message is marked finished afterwards.
void v2NetController::Update() {
    if (!GetOnline()->IsOnlineGame() || m_character == nullptr) {
        return;
    }
    CMessaging* messaging = GetMessaging();
    if (!messaging->IsMessageReceived("CMsgControllerAction")) {
        return;
    }
    CMessage* raw = GetMessaging()->GetMessageFromQueue("CMsgControllerAction");
    CMsgControllerAction* message = static_cast<CMsgControllerAction*>(raw);
    const int sender = message->senderId_;
    if (sender == m_character->unk_108) {
        switch (message->action_) {
        case 0: {
            ObjectHandle handle = dword_99F764->GetObjectHandleByNetworkId(message->targetId_);
            m_controllable->Ctrl_Attack(static_cast<GameObject*>(handle));
            break;
        }
        case 1:
            m_controllable->Ctrl_BeginSkill(message->targetId_);
            break;
        case 2:
            m_controllable->Ctrl_EndSkill(message->targetId_);
            break;
        case 3:
            m_character->SG_SetCurrentFaerie(message->targetId_, -1);
            m_controllable->Ctrl_BeginCast(true);
            break;
        case 4:
            m_controllable->Ctrl_EndCast(true);
            break;
        case 5: {
            ObjectHandle handle = dword_99F764->GetObjectHandleByNetworkId(message->targetId_);
            GameObject* object = static_cast<GameObject*>(handle);
            if (object != nullptr) {
                m_controllable->Ctrl_UseOOI(object);
            }
            break;
        }
        default:
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "0",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\v2NetController.cpp", 103);
            }
            break;
        }
    } else {
        ObjectHandle handle = dword_99F764->GetObjectHandleByNetworkId(sender);
        Character* other = static_cast<Character*>(handle);
        if (other != nullptr && other->IsPlayer()) {
            PlayerInfo* info = dword_99F76C->GetPlayerByCharacter(other, false);
            if (info->unk_66c != 1) {
                return;
            }
        }
    }
    message->SetFinished();  // +0x3c
}
