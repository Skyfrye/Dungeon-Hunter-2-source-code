// v2Controller functions of libDungeonHunter2.so (game-anim batch g1-game-anim-v2Controller-227be4-0, part 1 of 2).
// Rebuilt from the Hex-Rays pseudocode. Every body was checked against its assembly (tools/decomp_asm.py).
// Class layout and declarations: game/include/dh2/v2Controller.hpp. The Ctrl_* slots that the Cmd_* forward to are
// declared in game/include/dh2/v2Controllable.hpp, in vtable slot order.
//
// Return values: Hex-Rays shows an int return for each Cmd_*. That value is the callee's register residue (the Ctrl_*
// are void, and the blocked path returns the this pointer still in r0), so these functions return void, as the header
// declares.
#include "dh2/v2Controller.hpp"
#include "dh2/v2Controllable.hpp"

namespace {

// The block gate that the gated Cmd_* run before they forward (asm: LDRB +0x09, then s_blocked, then LDRB +0x08).
// The command goes through when the flag at +0x09 is set, or when both the global block and the per-controller
// block at +0x08 are clear. Otherwise the Cmd_* returns and the controllable is not called.
bool CommandAllowed(const v2Controller& self) {
    return self.unk_009 || (!v2Controller::s_blocked && !self.m_blocked);
}

}  // namespace

// 0x3a2f40 v2Controller::~v2Controller() (D1, complete-object destructor)
// The original body is a single BX LR (asm verified). v2Controller owns nothing, so the destructor is empty.
v2Controller::~v2Controller() {}

// 0x3a2f44 v2Controller::Update()
// Empty in the original (asm: BX LR). The vtable entry is kept, and the body stays empty.
void v2Controller::Update() {}

// 0x3a393c v2Controller::~v2Controller() (D0, deleting destructor)
// SKIPPED: compiler-generated deleting destructor. The original body stores the v2Controller vtable (asm: ADD R2,R2,#8;
// STR R2,[R0]), calls CustomFree(this) (_Z10CustomFreePv) and returns this. The C++ compiler emits this shape for the
// virtual ~v2Controller() declared in dh2/v2Controller.hpp, and delete on a v2Controller runs the destructor and then
// operator delete. The port's delete is operator delete, not CustomFree, as in AnimatorBlender D0.

// Static data member v2Controller::s_blocked (_ZN12v2Controller9s_blockedE, one byte in .bss, so it starts false).
// It is the global block that every gated Cmd_* reads. The MenuBase FS_LockCharacter and FS_UnlockCharacter
// functions write it (game-ui). It is defined here because this batch is the first one of the class.
bool v2Controller::s_blocked = false;

// 0x4051a8 v2Controller::Cmd_Click(Point3D<float> const&, bool)
// Gated (CommandAllowed). pos and held are forwarded unchanged in r1 and r2 to Ctrl_Click (vtable +0x08).
void v2Controller::Cmd_Click(const Point3D<float>& pos, bool held) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_Click(pos, held);  // vtable +0x08
}

// 0x405204 v2Controller::Cmd_RotateBy(float)
// Gated. The angle is forwarded unchanged in r1 to Ctrl_RotateBy (vtable +0x0c).
void v2Controller::Cmd_RotateBy(float angle) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_RotateBy(angle);  // vtable +0x0c
}

// 0x405260 v2Controller::Cmd_LookAt(Point3D<float> const&)
// Gated. Forwards pos to Ctrl_LookAt(Point3D) (vtable +0x10).
void v2Controller::Cmd_LookAt(const Point3D<float>& pos) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_LookAt(pos);  // vtable +0x10
}

// 0x4052bc v2Controller::Cmd_LookAt(GameObject*)
// Gated. Forwards target to Ctrl_LookAt(GameObject*) (vtable +0x14).
void v2Controller::Cmd_LookAt(GameObject* target) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_LookAt(target);  // vtable +0x14
}

// 0x405318 v2Controller::Cmd_WarpTo(Point3D<float> const&)
// Gated. Forwards pos to Ctrl_WarpTo (vtable +0x18).
void v2Controller::Cmd_WarpTo(const Point3D<float>& pos) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_WarpTo(pos);  // vtable +0x18
}

// 0x405374 v2Controller::Cmd_HeadTowards(Point3D<float> const&)
// Gated. Forwards pos to Ctrl_HeadTowards(Point3D) (vtable +0x1c).
void v2Controller::Cmd_HeadTowards(const Point3D<float>& pos) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_HeadTowards(pos);  // vtable +0x1c
}

// 0x4053d0 v2Controller::Cmd_HeadTowards(GameObject*)
// Gated. Forwards target to Ctrl_HeadTowards(GameObject*) (vtable +0x20).
void v2Controller::Cmd_HeadTowards(GameObject* target) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_HeadTowards(target);  // vtable +0x20
}

// 0x40542c v2Controller::Cmd_HeadTo(Point3D<float> const&)
// Gated. Forwards pos to Ctrl_HeadTo(Point3D) (vtable +0x24).
void v2Controller::Cmd_HeadTo(const Point3D<float>& pos) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_HeadTo(pos);  // vtable +0x24
}

// 0x405488 v2Controller::Cmd_HeadTo(GameObject*)
// Gated. Forwards target to Ctrl_HeadTo(GameObject*) (vtable +0x28).
void v2Controller::Cmd_HeadTo(GameObject* target) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_HeadTo(target);  // vtable +0x28
}

// 0x4054e4 v2Controller::Cmd_MoveTo(Point3D<float> const&)
// Gated. Forwards pos to Ctrl_MoveTo(Point3D) (vtable +0x2c).
void v2Controller::Cmd_MoveTo(const Point3D<float>& pos) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_MoveTo(pos);  // vtable +0x2c
}

// 0x405540 v2Controller::Cmd_MoveTo(GameObject*)
// Gated. Forwards target to Ctrl_MoveTo(GameObject*) (vtable +0x30).
void v2Controller::Cmd_MoveTo(GameObject* target) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_MoveTo(target);  // vtable +0x30
}

// 0x40559c v2Controller::Cmd_Stop()
// Gated. Forwards to Ctrl_Stop (vtable +0x34).
void v2Controller::Cmd_Stop() {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_Stop();  // vtable +0x34
}

// 0x4055f8 v2Controller::Cmd_BeginCast(bool)
// Gated. primary is forwarded unchanged in r1 to Ctrl_BeginCast (vtable +0x44).
void v2Controller::Cmd_BeginCast(bool primary) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_BeginCast(primary);  // vtable +0x44
}

// 0x405654 v2Controller::Cmd_EndCast(bool)
// Gated. primary is forwarded unchanged in r1 to Ctrl_EndCast (vtable +0x48).
void v2Controller::Cmd_EndCast(bool primary) {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_EndCast(primary);  // vtable +0x48
}

// 0x4056b0 v2Controller::Cmd_UsePotion()
// Gated. Forwards to Ctrl_UsePotion (vtable +0x4c).
void v2Controller::Cmd_UsePotion() {
    if (!CommandAllowed(*this)) return;
    m_controllable->Ctrl_UsePotion();  // vtable +0x4c
}

// 0x40570c v2Controller::Cmd_Kill(GameObject*, bool)
// NOT gated: the asm forwards at once (LDR R3,[R0,#4]; LDR R3,[R3]; LDR PC,[R3,#0x58]), with no test of +0x08,
// +0x09 or s_blocked. Forwards killer and silent unchanged in r1 and r2 to Ctrl_Kill (vtable +0x58).
void v2Controller::Cmd_Kill(GameObject* killer, bool silent) {
    m_controllable->Ctrl_Kill(killer, silent);  // vtable +0x58
}

// 0x405728 v2Controller::Cmd_OpenIGM()
// NOT gated (asm: LDR PC,[R3,#0x5c] with no block test). Forwards to Ctrl_OpenIGM (vtable +0x5c).
void v2Controller::Cmd_OpenIGM() {
    m_controllable->Ctrl_OpenIGM();  // vtable +0x5c
}
