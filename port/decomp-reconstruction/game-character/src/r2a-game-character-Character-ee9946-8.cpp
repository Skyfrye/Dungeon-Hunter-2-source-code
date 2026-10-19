// Batch r2a-game-character-Character-ee9946-8 (Character, redo pass): the Lua binding _SpawnSkillProjectile.
//
// _SpawnSkillProjectile lives in this file, not in g1-game-character-Character-ee9946-13.cpp. It needs Arrays::ProjectileTable
// from pydata-accessors/w7_arrays_00.hpp, and that header and w7_arrays_02.hpp (Arrays::AnimTable, used by _PlayAnim in the
// batch-13 file) declare the same Arrays structs, so no translation unit can include both. The batch-13 file keeps the
// other bindings. The shared helpers (argument tags and counts, the float conversions, the assert reporting) are in
// dh2/global/character_lua_bindings.hpp.

#include "core-platform/memory.hpp"  // before Character.hpp, which renames MemoryHintState while it includes net-transport
#include "dh2/CharAISkillScript.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/global/character_lua_bindings.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"  // Arrays::ProjectileTable (not together with w7_arrays_02.hpp)

// 0x3b99d0 _ZN9Character21_SpawnSkillProjectileERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked in the assembly (0x3b99d0). Needs args[0] a number, and args[1] a number below Arrays::ProjectileTable::size (the
// projectile id). script = CharAI::m_skillScripts[(int) getNumber(args[0])] (self +0x47c). The spawn, by the arguments:
//   args[2] a boolean (tag 1): SpawnProjectile(script, id, getBool(args[2])), the bool overload (0x3da510).
//   args[2] a number (tag 3) with three or more arguments: SpawnProjectile(script, id, getNumber(args[2])), the float
//     overload (0x3da494).
//   otherwise: SpawnProjectile(script, id, false). The asm passes the literal 0 to the bool overload (MOV R2, #0).
// With args[2] a userdata (tag 7): the projectile's position is (args[2] m_position.x, args[2] m_position.y, the projectile's
// own GameObject m_position.z), set with GameObject::SetPosition(projectile, position, true). With args[3] a userdata
// (tag 7) as well: GameObject::SetDestination(projectile, args[3] m_position). The projectile is then pushed as a pointer.
// (1) a null script is reported as the original's assertion (Character_LuaCallbacks.cpp line 916), and the binding
// returns; the original goes on and calls SpawnProjectile on the null script (a null this). (2) A slot outside
// m_skillScripts reads past the vector in the original (undefined); this port returns without a report. (3) A null
// projectile from SpawnProjectile is not dereferenced for the position step (the original does, and crashes); it is pushed.
void Character::_SpawnSkillProjectile(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                      void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (LuaArgCount(args) <= 1 || !LuaArgHasTag(args, 0, kLuaTagNumber) || !LuaArgHasTag(args, 1, kLuaTagNumber)) {
        return;
    }
    const unsigned int projectileId = args[1].getUInteger();
    if (projectileId >= Arrays::ProjectileTable::size) {
        return;
    }
    const std::int32_t index = LuaFloatToInt32(args[0].getNumber());
    const auto& scripts = self->CharAI::m_skillScripts;
    if (index < 0 || static_cast<std::size_t>(index) >= scripts.size()) {
        return;
    }
    CharAISkillScript* script = scripts[static_cast<std::size_t>(index)];
    if (script == nullptr) {
        LuaReportAssert("script && \"WOW! If a non-existing script was able to call this method, MIRACLE!\"",
                        kLuaCallbacksSourceFile, 916);
        return;
    }

    const std::size_t count = LuaArgCount(args);
    Projectile* projectile = nullptr;
    if (count > 2 && LuaArgHasTag(args, 2, kLuaTagBoolean)) {
        projectile = script->SpawnProjectile(projectileId, args[2].getBool());
    } else if (count > 2 && LuaArgHasTag(args, 2, kLuaTagNumber)) {
        projectile = script->SpawnProjectile(projectileId, args[2].getNumber());
    } else {
        projectile = script->SpawnProjectile(projectileId, false);
    }

    if (projectile != nullptr && count > 2 && LuaArgHasTag(args, 2, kLuaTagUserData)) {
        GameObject* anchor = static_cast<GameObject*>(args[2].getUserData());
        const Point3D<float> position{anchor->m_position.X, anchor->m_position.Y,
                                      projectile->GameObject::m_position.Z};
        projectile->GameObject::SetPosition(position, true);
        if (count > 3 && LuaArgHasTag(args, 3, kLuaTagUserData)) {
            GameObject* destination = static_cast<GameObject*>(args[3].getUserData());
            projectile->GameObject::SetDestination(destination->m_position);
        }
    }
    ret.pushPointer(projectile);
}
