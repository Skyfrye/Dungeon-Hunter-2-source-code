// Batch g1-game-anim-v2MixedController-0ac955-0 (game-anim, owner v2MixedController), part 1 of the class.
//
// Covers Update() and the Ctrl_* slots from 0x408b4c to 0x408c2c. Each Ctrl_* slot is a single branch in the
// original to the v2Controller::Cmd_* of the same name, so it forwards its arguments unchanged, with `this` as
// the v2Controller base at +0x00. Ctrl_BeginCast and Ctrl_EndCast are the exceptions: each loads 0 into the bool
// argument before its branch (asm: MOV R1, #0), so they forward false and drop the argument.
// The constructors, the destructor, AddController and the Ctrl_Click, Ctrl_RotateBy, Ctrl_LookAt and Ctrl_WarpTo
// slots are in the other batches of this class.

#include "dh2/v2MixedController.hpp"

#include <cstddef>

// 0x408ad8 _ZN17v2MixedController6UpdateEv
// Runs Update() on each entry of m_controllers in index order (the original calls slot +0x08 of each entry). The
// count is taken once, before the first call. The entry is read from the vector's current begin on every pass
// (the original reloads +0x18 before each element), so a sub-controller that reallocates the vector during its
// Update() is seen by the next pass. An empty vector returns without any call.
void v2MixedController::Update() {
    const std::size_t count = m_controllers.size();  // (end - begin) >> 2, from +0x1c and +0x18
    if (count == 0) {
        return;
    }
    std::size_t index = 0;
    do {
        v2Controller* controller = m_controllers[index];
        ++index;
        controller->Update();
    } while (index != count);
}

// 0x408b4c _ZN17v2MixedController14Ctrl_ResetZoomEv
// Thunk: single branch to v2Controller::Cmd_ResetZoom. Forwarded, not reimplemented.
void v2MixedController::Ctrl_ResetZoom() {
    v2Controller::Cmd_ResetZoom();
}

// 0x408b58 _ZN17v2MixedController9Ctrl_ZoomEf
// Thunk: single branch to v2Controller::Cmd_Zoom. The float argument is passed through in the same register.
void v2MixedController::Ctrl_Zoom(float amount) {
    v2Controller::Cmd_Zoom(amount);
}

// 0x408b64 _ZN17v2MixedController12Ctrl_OpenIGMEv
// Thunk: single branch to v2Controller::Cmd_OpenIGM.
void v2MixedController::Ctrl_OpenIGM() {
    v2Controller::Cmd_OpenIGM();
}

// 0x408b70 _ZN17v2MixedController9Ctrl_KillEP10GameObjectb
// Thunk: single branch to v2Controller::Cmd_Kill, both arguments unchanged.
void v2MixedController::Ctrl_Kill(GameObject* killer, bool silent) {
    v2Controller::Cmd_Kill(killer, silent);
}

// 0x408b7c _ZN17v2MixedController15Ctrl_DropObjectEv
// Thunk: single branch to v2Controller::Cmd_DropObject.
void v2MixedController::Ctrl_DropObject() {
    v2Controller::Cmd_DropObject();
}

// 0x408b88 _ZN17v2MixedController11Ctrl_UseOOIEP10GameObject
// Thunk: single branch to v2Controller::Cmd_UseOOI.
void v2MixedController::Ctrl_UseOOI(GameObject* target) {
    v2Controller::Cmd_UseOOI(target);
}

// 0x408b94 _ZN17v2MixedController14Ctrl_UsePotionEv
// Thunk: single branch to v2Controller::Cmd_UsePotion.
void v2MixedController::Ctrl_UsePotion() {
    v2Controller::Cmd_UsePotion();
}

// 0x408ba0 _ZN17v2MixedController12Ctrl_EndCastEb
// Two instructions: MOV R1, #0 then B v2Controller::Cmd_EndCast. The bool argument is replaced by false, so the
// value the caller passed is not forwarded.
void v2MixedController::Ctrl_EndCast(bool primary) {
    (void)primary;
    v2Controller::Cmd_EndCast(false);
}

// 0x408bb0 _ZN17v2MixedController14Ctrl_BeginCastEb
// Two instructions: MOV R1, #0 then B v2Controller::Cmd_BeginCast. Same as Ctrl_EndCast: false is forwarded.
void v2MixedController::Ctrl_BeginCast(bool primary) {
    (void)primary;
    v2Controller::Cmd_BeginCast(false);
}

// 0x408bc0 _ZN17v2MixedController13Ctrl_EndSkillEj
// Thunk: single branch to v2Controller::Cmd_EndSkill.
void v2MixedController::Ctrl_EndSkill(unsigned int skill) {
    v2Controller::Cmd_EndSkill(skill);
}

// 0x408bcc _ZN17v2MixedController15Ctrl_BeginSkillEj
// Thunk: single branch to v2Controller::Cmd_BeginSkill.
void v2MixedController::Ctrl_BeginSkill(unsigned int skill) {
    v2Controller::Cmd_BeginSkill(skill);
}

// 0x408bd8 _ZN17v2MixedController11Ctrl_AttackEP10GameObject
// Thunk: single branch to v2Controller::Cmd_Attack.
void v2MixedController::Ctrl_Attack(GameObject* target) {
    v2Controller::Cmd_Attack(target);
}

// 0x408be4 _ZN17v2MixedController9Ctrl_StopEv
// Thunk: single branch to v2Controller::Cmd_Stop.
void v2MixedController::Ctrl_Stop() {
    v2Controller::Cmd_Stop();
}

// 0x408bf0 _ZN17v2MixedController11Ctrl_MoveToEP10GameObject
// Thunk: single branch to v2Controller::Cmd_MoveTo(GameObject*).
void v2MixedController::Ctrl_MoveTo(GameObject* target) {
    v2Controller::Cmd_MoveTo(target);
}

// 0x408bfc _ZN17v2MixedController11Ctrl_MoveToERK7Point3DIfE
// Thunk: single branch to v2Controller::Cmd_MoveTo(Point3D<float> const&).
void v2MixedController::Ctrl_MoveTo(const Point3D<float>& pos) {
    v2Controller::Cmd_MoveTo(pos);
}

// 0x408c08 _ZN17v2MixedController11Ctrl_HeadToEP10GameObject
// Thunk: single branch to v2Controller::Cmd_HeadTo(GameObject*).
void v2MixedController::Ctrl_HeadTo(GameObject* target) {
    v2Controller::Cmd_HeadTo(target);
}

// 0x408c14 _ZN17v2MixedController11Ctrl_HeadToERK7Point3DIfE
// Thunk: single branch to v2Controller::Cmd_HeadTo(Point3D<float> const&).
void v2MixedController::Ctrl_HeadTo(const Point3D<float>& pos) {
    v2Controller::Cmd_HeadTo(pos);
}

// 0x408c20 _ZN17v2MixedController16Ctrl_HeadTowardsEP10GameObject
// Thunk: single branch to v2Controller::Cmd_HeadTowards(GameObject*).
void v2MixedController::Ctrl_HeadTowards(GameObject* target) {
    v2Controller::Cmd_HeadTowards(target);
}

// 0x408c2c _ZN17v2MixedController16Ctrl_HeadTowardsERK7Point3DIfE
// Thunk: single branch to v2Controller::Cmd_HeadTowards(Point3D<float> const&).
void v2MixedController::Ctrl_HeadTowards(const Point3D<float>& pos) {
    v2Controller::Cmd_HeadTowards(pos);
}
