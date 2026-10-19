// Batch g1-game-character-AISExternal-528ac2-1 (part 2 of 2 of AISExternal): InitVCB, the three destructor
// symbols, the two constructors, and the event hooks from OnCombatResults through OnDied (13 functions).
// Declarations come from dh2/AISExternal.hpp, which already declares every method in this batch.
//
// Two blockers keep some functions partial. Each affected function names the one that applies.
//  - The Lua hooks build an sfc::script::lua::Arguments, push their argument and call LuaScript::Call(name, args).
//    The Arguments header is in the tree now, so those hooks are written.
//  - AISDefault declares no constructor that takes the skip-bindings flag. The AISExternal(bool) constructors pass
//    their flag through the AISDefault base to CharAIScript(bool). They are not written until dh2/AISDefault.hpp
//    declares AISDefault(bool).

#include "dh2/AISExternal.hpp"
#include "dh2/Character.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"

// 0x3dcec8 AISExternal::InitVCB(void)
// Calls the base InitVCB (AISDefault, 0x3dc7d8) first. Then each Lua hook that the external script defines sets its
// bit in the callback mask unk_b8 (+0xb8). LuaScript::IsInVFTable reports whether the name is in the function table.
// The last test (OnMasterInMeleeRange, bit 0x200) is the value the function returns, as in the original.
int AISExternal::InitVCB() {
    AISDefault::InitVCB();
    unk_b8 |= IsInVFTable("OnUpdate") ? 0x1u : 0u;                       // bit 0: gates the Lua OnUpdate call
    unk_b8 |= IsInVFTable("OnFriendSpotted") ? 0x2u : 0u;                // bit 1: gates the Lua OnFriendSpotted call
    unk_b8 |= IsInVFTable("OnTargetOutOfRange") ? 0x4u : 0u;             // bit 2
    unk_b8 |= IsInVFTable("OnTargetInRangedRange") ? 0x8u : 0u;          // bit 3
    unk_b8 |= IsInVFTable("OnTargetInCloseRange") ? 0x10u : 0u;          // bit 4
    unk_b8 |= IsInVFTable("OnTargetInMeleeRange") ? 0x20u : 0u;          // bit 5
    unk_b8 |= IsInVFTable("OnMasterOutOfRange") ? 0x40u : 0u;            // bit 6
    unk_b8 |= IsInVFTable("OnMasterInRangedRange") ? 0x80u : 0u;         // bit 7
    unk_b8 |= IsInVFTable("OnMasterInCloseRange") ? 0x100u : 0u;         // bit 8
    const int result = IsInVFTable("OnMasterInMeleeRange") ? 0x200 : 0;  // bit 9
    unk_b8 |= static_cast<uint32_t>(result);
    return result;
}

// 0x3dd060 AISExternal::~AISExternal(void)   (D1, complete object)
// 0x3dd0b0 AISExternal::~AISExternal(void)   (D2, base object; the same bytes)
// The original body is the implicit base chain. It stores the AISDefault vtable (_ZTV10AISDefault + 8), with
// AISDefault's destructor inlined, and calls CharAIScript::~CharAIScript. An empty user-declared body compiles to
// the same chain: AISDefault's destructor runs, then CharAIScript's.
AISExternal::~AISExternal() {}

// 0x3dd094 AISExternal::~AISExternal(void)   (D0, deleting destructor)
// SKIPPED: the compiler emits the deleting destructor for `delete` of an AISExternal. The original calls D1 and then
// CustomFree(this). Nothing is written here.

// 0x3dd0e4 AISExternal::AISExternal(bool)   (C1)
// 0x3dd128 AISExternal::AISExternal(bool)   (C2)
// CharAIScript C2 (0x3d8fb0) runs with the flag, reached through the AISDefault base, then the vptr is stored (_ZTV11AISExternal + 8) and
// unk_c0 (+0xc0), unk_b8 (+0xb8) and unk_bc (+0xbc) are cleared (AISDefault(bool) does the clears).
AISExternal::AISExternal(bool skipBindings) : AISDefault(skipBindings) {}

// 0x3dd250 AISExternal::OnCombatResults(GameObject*, void*)
// Builds an Arguments with the results pointer, calls the external script's OnCombatResults, and destroys the Arguments.
// The GameObject argument is not pushed (the original passes only the results pointer).
void AISExternal::OnCombatResults(GameObject* /*other*/, void* results) {
    sfc::script::lua::Arguments args;
    args.pushPointer(results);
    LuaScript::Call("OnCombatResults", args);
}

// 0x3dd2a0 AISExternal::OnProjectileHit(GameObject*)
// The base hook runs first, then the external script's OnProjectileHit gets the target as userdata.
void AISExternal::OnProjectileHit(GameObject* target) {
    AISDefault::OnProjectileHit(target);
    sfc::script::lua::Arguments args;
    args.pushUserData(target);
    LuaScript::Call("OnProjectileHit", args);
}

// 0x3dd2f4 AISExternal::OnEnemySpotted(Character*)
// Calls OnEnemySpotted with the character as userdata, unconditionally.
void AISExternal::OnEnemySpotted(Character* c) {
    sfc::script::lua::Arguments args;
    args.pushUserData(c);
    LuaScript::Call("OnEnemySpotted", args);
}

// 0x3dd344 AISExternal::OnNeutralSpotted(Character*)
// Calls OnNeutralSpotted with the character as userdata, unconditionally.
void AISExternal::OnNeutralSpotted(Character* c) {
    sfc::script::lua::Arguments args;
    args.pushUserData(c);
    LuaScript::Call("OnNeutralSpotted", args);
}

// 0x3dd394 AISExternal::OnFriendSpotted(Character*)
// Only when bit 1 of unk_b8 (0x2, set by InitVCB when OnFriendSpotted is in the function table) does the original push c
// as userdata and call OnFriendSpotted.
void AISExternal::OnFriendSpotted(Character* c) {
    if ((unk_b8 & 0x2u) != 0) {
        sfc::script::lua::Arguments args;
        args.pushUserData(c);
        LuaScript::Call("OnFriendSpotted", args);
    }
}

// 0x3dd3f0 AISExternal::OnRevived(GameObject*)
// Calls OnRevived with the reviver as userdata, unconditionally.
void AISExternal::OnRevived(GameObject* reviver) {
    sfc::script::lua::Arguments args;
    args.pushUserData(reviver);
    LuaScript::Call("OnRevived", args);
}

// 0x3dd440 AISExternal::OnDied(GameObject*)
// Calls OnDied with the killer as userdata, unconditionally.
void AISExternal::OnDied(GameObject* killer) {
    sfc::script::lua::Arguments args;
    args.pushUserData(killer);
    LuaScript::Call("OnDied", args);
}
