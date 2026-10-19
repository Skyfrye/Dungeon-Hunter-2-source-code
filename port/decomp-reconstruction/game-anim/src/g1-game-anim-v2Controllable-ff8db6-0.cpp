// v2Controllable functions of libDungeonHunter2.so (game-anim batch g1-game-anim-v2Controllable-ff8db6-0).
// Rebuilt from the Hex-Rays pseudocode (recovered/native/hexrays-all/chunk_011.c) and checked against the
// assembly (decomp_asm.py). Class layout and declarations: game/include/dh2/v2Controllable.hpp.
//
// Every function in this batch is a WEAK virtual default of v2Controllable (vtable slots +0x08 to +0x54, see
// the header). The original body is a single `BX LR` (ELF symbol size 4), so each one does nothing and ignores
// its arguments. The bodies below are empty for the same reason. The ELF symbol table and the assembly agree on
// size 4; the batch listing's size column does not, and it was not used.
#include "dh2/v2Controllable.hpp"

// 0x404d60 v2Controllable::Ctrl_Click(Point3D<float> const&, bool)
void v2Controllable::Ctrl_Click(const Point3D<float>& /*pos*/, bool /*held*/) {}

// 0x404d64 v2Controllable::Ctrl_RotateBy(float)
void v2Controllable::Ctrl_RotateBy(float /*angle*/) {}

// 0x404d68 v2Controllable::Ctrl_LookAt(Point3D<float> const&)
void v2Controllable::Ctrl_LookAt(const Point3D<float>& /*pos*/) {}

// 0x404d6c v2Controllable::Ctrl_LookAt(GameObject*)
void v2Controllable::Ctrl_LookAt(GameObject* /*target*/) {}

// 0x404d70 v2Controllable::Ctrl_WarpTo(Point3D<float> const&)
void v2Controllable::Ctrl_WarpTo(const Point3D<float>& /*pos*/) {}

// 0x404d74 v2Controllable::Ctrl_HeadTowards(Point3D<float> const&)
void v2Controllable::Ctrl_HeadTowards(const Point3D<float>& /*pos*/) {}

// 0x404d78 v2Controllable::Ctrl_HeadTowards(GameObject*)
void v2Controllable::Ctrl_HeadTowards(GameObject* /*target*/) {}

// 0x404d7c v2Controllable::Ctrl_HeadTo(Point3D<float> const&)
void v2Controllable::Ctrl_HeadTo(const Point3D<float>& /*pos*/) {}

// 0x404d80 v2Controllable::Ctrl_HeadTo(GameObject*)
void v2Controllable::Ctrl_HeadTo(GameObject* /*target*/) {}

// 0x404d84 v2Controllable::Ctrl_MoveTo(Point3D<float> const&)
void v2Controllable::Ctrl_MoveTo(const Point3D<float>& /*pos*/) {}

// 0x404d88 v2Controllable::Ctrl_MoveTo(GameObject*)
void v2Controllable::Ctrl_MoveTo(GameObject* /*target*/) {}

// 0x404d8c v2Controllable::Ctrl_Stop()
void v2Controllable::Ctrl_Stop() {}

// 0x404d90 v2Controllable::Ctrl_Attack(GameObject*)
void v2Controllable::Ctrl_Attack(GameObject* /*target*/) {}

// 0x404d94 v2Controllable::Ctrl_BeginSkill(unsigned int)
void v2Controllable::Ctrl_BeginSkill(unsigned int /*skill*/) {}

// 0x404d98 v2Controllable::Ctrl_EndSkill(unsigned int)
void v2Controllable::Ctrl_EndSkill(unsigned int /*skill*/) {}

// 0x404d9c v2Controllable::Ctrl_BeginCast(bool)
void v2Controllable::Ctrl_BeginCast(bool /*primary*/) {}

// 0x404da0 v2Controllable::Ctrl_EndCast(bool)
void v2Controllable::Ctrl_EndCast(bool /*primary*/) {}

// 0x404da4 v2Controllable::Ctrl_UsePotion()
void v2Controllable::Ctrl_UsePotion() {}

// 0x404da8 v2Controllable::Ctrl_UseOOI(GameObject*)
void v2Controllable::Ctrl_UseOOI(GameObject* /*target*/) {}

// 0x404dac v2Controllable::Ctrl_DropObject()
void v2Controllable::Ctrl_DropObject() {}
