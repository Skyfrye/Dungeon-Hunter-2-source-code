// Batch g1-game-character-CharAISkillScript-56b6ea-0 (CharAISkillScript, 16 functions). Declarations are in dh2/CharAISkillScript.hpp.
// Offsets in comments are the original 32-bit offsets inside CharAISkillScript (this) unless a line says Character or CharAI.
//
// Every Lua-driven hook builds sfc::script::lua::Arguments and ReturnValues, calls LuaScript::Call on the owner's AI script (CharAIScript is a
// LuaScript) and reads the returned Value list (112 bytes each in the original).

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"            // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"   // Arrays::ProjectileTable::size

namespace {

// The original's assert file name, as the pseudocode spells it.
const char* const kSkillScriptHeader =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/CharAISkillScript.h";

// The original ASSERT(expr) macro. Level 2 stops the process (the original stores to address 0); level 1 prints the
// message; level 0 is silent. Callers go on after a failed assert, as the original does.
void AssertFailed(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kSkillScriptHeader, line);
    }
}

// The live Lua script of the owning character: CharAI::m_script (CharAI +0x1c, Character +0x3e4 in the original). Null until
// the script process has loaded. The CharAI qualification is required: GameObject also has an m_script (+0x300).
LuaScript* LiveScript(const CharAISkillScript* skill) {
    return skill->m_character->CharAI::m_script;
}

}  // namespace

// 0x3cc238 CharAISkillScript::~CharAISkillScript()   (D1, complete-object destructor)
// The embedded Arguments (m_arguments, +0x0c) is destroyed after this body, as the original's ~Arguments call does.
CharAISkillScript::~CharAISkillScript() {}

// 0x3cc448 CharAISkillScript::~CharAISkillScript()   (D0, deleting destructor)
// SKIPPED: compiler-generated. It calls D1 above and then CustomFree(this), which is what delete on a CharAISkillScript
// pointer emits. Not written.

// 0x3cde2c CharAISkillScript::CharAISkillScript(Character*,char const*,unsigned int)
// The stores, the Arguments constructor (m_arguments), the cooldown slot of -1 and both asserts ("user" then "name", line 46)
// run in the original order; the script name and the skill index are then pushed onto the Lua arguments.
CharAISkillScript::CharAISkillScript(Character* character, const char* scriptName, unsigned int skillIndex)
    : m_character(character),
      m_scriptName(scriptName),
      m_skillIndex(skillIndex),
      m_cooldownTimerId(-1) {
    if (!character) {
        AssertFailed("user", 46);
    }
    if (!scriptName) {
        AssertFailed("name", 46);
    }
    m_arguments.pushString(scriptName);
    m_arguments.pushInteger(static_cast<int>(skillIndex));
}

// 0x3da3d0 CharAISkillScript::GetCooldown()
// The cooldown is the CharTimers slot in m_cooldownTimerId (+0x18). Without a slot (-1) or when the timer lookup fails the
// result is 0. Otherwise the result is 1 - elapsed / interval, both read from the owner's CharTimers subobject (Character +0x3b4).
// The division is done in float and the subtraction in double, as the pseudocode writes "1.0 - (float)(...)".
float CharAISkillScript::GetCooldown() {
    if (m_cooldownTimerId == -1) {
        return 0.0f;
    }
    unsigned int elapsed = 0;
    unsigned int interval = 0;
    if (!m_character->CharTimers::TMR_TimeLeft(static_cast<unsigned int>(m_cooldownTimerId), elapsed, interval)) {
        return 0.0f;
    }
    const float fraction = static_cast<float>(elapsed) / static_cast<float>(interval);
    return static_cast<float>(1.0 - fraction);
}

// 0x3da494 CharAISkillScript::SpawnProjectile(unsigned int,float)
// A projectile id below Arrays::ProjectileTable::size spawns that projectile for the owning character with no target, this script's callbacks
// (_ProjectileCheck, _ProjectileHit) and this script as their user data: ProjectileManager::Spawn(id, m_character, nullptr, check, hit, this,
// angle) on Singleton<ProjectileManager>::s_inst. Any other id gives null.
Projectile* CharAISkillScript::SpawnProjectile(unsigned int projectileId, float angle) {
    if (projectileId < Arrays::ProjectileTable::size) {
        return Singleton<ProjectileManager>::s_inst.Spawn(static_cast<int>(projectileId), m_character, nullptr, &_ProjectileCheck,
                                                          &_ProjectileHit, this, angle);
    }
    return nullptr;
}

// 0x3da510 CharAISkillScript::SpawnProjectile(unsigned int,bool)
// The same with the bool overload of ProjectileManager::Spawn.
Projectile* CharAISkillScript::SpawnProjectile(unsigned int projectileId, bool flag) {
    if (projectileId < Arrays::ProjectileTable::size) {
        return Singleton<ProjectileManager>::s_inst.Spawn(static_cast<int>(projectileId), m_character, nullptr, &_ProjectileCheck,
                                                          &_ProjectileHit, this, flag);
    }
    return nullptr;
}

// 0x3da6c0 CharAISkillScript::OnPostSkill()
// With a live script: SetSkill with the Arguments at +0x0c, and when that succeeds the returned values are emptied and "OnPostSkill" is
// called. Without a script nothing happens.
void CharAISkillScript::OnPostSkill() {
    sfc::script::lua::ReturnValues returned;
    if (LuaScript* script = LiveScript(this)) {
        script->Call("SetSkill", m_arguments, returned);
        if (!returned.m_error.m_status) {
            returned.m_valueList->clear();
            LiveScript(this)->Call("OnPostSkill", returned);
        }
    }
}

// 0x3da794 CharAISkillScript::OnSkill()
// SetSkill, then the values are emptied and "OnSkill" runs. No script, a failed SetSkill or a failed call give 0; no returned value gives 1;
// otherwise the boolean value of the first returned value.
int CharAISkillScript::OnSkill() {
    sfc::script::lua::ReturnValues returned;
    LuaScript* script = LiveScript(this);
    if (!script) {
        return 0;
    }
    script->Call("SetSkill", m_arguments, returned);
    if (returned.m_error.m_status) {
        return 0;
    }
    returned.m_valueList->clear();
    LiveScript(this)->Call("OnSkill", returned);
    if (returned.m_error.m_status) {
        return 0;
    }
    if (!returned.m_valueList->empty()) {
        return returned[0].getBool() ? 1 : 0;
    }
    return 1;
}

// 0x3da8b8 CharAISkillScript::OnPreSkill()
// As OnSkill with "OnPreSkill": false without a script or on a failed call, true when nothing is returned, otherwise the first value.
bool CharAISkillScript::OnPreSkill() {
    sfc::script::lua::ReturnValues returned;
    LuaScript* script = LiveScript(this);
    if (!script) {
        return false;
    }
    script->Call("SetSkill", m_arguments, returned);
    if (returned.m_error.m_status) {
        return false;
    }
    returned.m_valueList->clear();
    LiveScript(this)->Call("OnPreSkill", returned);
    if (returned.m_error.m_status) {
        return false;
    }
    if (!returned.m_valueList->empty()) {
        return returned[0].getBool();
    }
    return true;
}

// 0x3da9dc CharAISkillScript::OnSkillCheck_Usable()
// SetSkill, then the function named "OnSkillCheck" (not "OnSkillCheck_Usable"). No script, a failed call or no returned value give false,
// otherwise the boolean value of the first returned value.
bool CharAISkillScript::OnSkillCheck_Usable() {
    sfc::script::lua::ReturnValues returned;
    LuaScript* script = LiveScript(this);
    if (!script) {
        return false;
    }
    script->Call("SetSkill", m_arguments, returned);
    if (returned.m_error.m_status) {
        return false;
    }
    returned.m_valueList->clear();
    LiveScript(this)->Call("OnSkillCheck", returned);
    if (returned.m_error.m_status || returned.m_valueList->empty()) {
        return false;
    }
    return returned[0].getBool();
}

// 0x3daafc CharAISkillScript::OnSkillCleanUp()
// With a live script: SetSkill, then (when it succeeded) the values are emptied and "OnSkillCleanUp" is called.
void CharAISkillScript::OnSkillCleanUp() {
    sfc::script::lua::ReturnValues returned;
    if (LuaScript* script = LiveScript(this)) {
        script->Call("SetSkill", m_arguments, returned);
        if (!returned.m_error.m_status) {
            returned.m_valueList->clear();
            LiveScript(this)->Call("OnSkillCleanUp", returned);
        }
    }
}

// 0x3dabd0 CharAISkillScript::OnSkillUpdate()
// As OnSkillCleanUp with "OnSkillUpdate".
void CharAISkillScript::OnSkillUpdate() {
    sfc::script::lua::ReturnValues returned;
    if (LuaScript* script = LiveScript(this)) {
        script->Call("SetSkill", m_arguments, returned);
        if (!returned.m_error.m_status) {
            returned.m_valueList->clear();
            LiveScript(this)->Call("OnSkillUpdate", returned);
        }
    }
}

// 0x3daca8 CharAISkillScript::GetInfo(unsigned int,float*)
// Without a script *out is set to 0 (when out is not null). With one: SetSkill, then "OnSkillInfo" with the info id pushed as an integer.
// When both calls succeed *out is 0, or, when the first returned value is a number n (type 3), 1 - elapsed / interval of the owner's CharTimers
// slot n (TMR_TimeLeft, the same formula as GetCooldown). A failed call leaves *out as it was.
void CharAISkillScript::GetInfo(unsigned int infoId, float* out) {
    sfc::script::lua::Arguments arguments;
    sfc::script::lua::ReturnValues returned;
    if (LuaScript* script = LiveScript(this)) {
        script->Call("SetSkill", m_arguments, returned);
        if (!returned.m_error.m_status) {
            arguments.pushInteger(static_cast<int>(infoId));
            returned.m_valueList->clear();
            LiveScript(this)->Call("OnSkillInfo", arguments, returned);
            if (!returned.m_error.m_status && out) {
                *out = 0.0f;
                if (!returned.m_valueList->empty() && returned[0].m_type == 3) {
                    unsigned int elapsed = 0;
                    unsigned int interval = 0;
                    const int slot = static_cast<int>(returned[0].getNumber());
                    if (m_character->CharTimers::TMR_TimeLeft(static_cast<unsigned int>(slot), elapsed, interval)) {
                        *out = 1.0f - (static_cast<float>(elapsed) / static_cast<float>(interval));
                    }
                }
            }
        }
    } else if (out) {
        *out = 0.0f;
    }
}

namespace {

// The shared body of _ProjectileHit and _ProjectileCheck (they differ only in the script function name): SetSkill, then the function with the
// projectile's hit object (pushed as userdata) and the projectile itself (pointer). Without a script the result is 1. Otherwise 1 only when the
// calls succeed and the first returned value is the boolean false; every other outcome gives 0.
int ProjectileCallback(Projectile* projectile, CharAISkillScript* skill, const char* function) {
    sfc::script::lua::Arguments arguments;
    sfc::script::lua::ReturnValues returned;
    LuaScript* script = LiveScript(skill);
    if (!script) {
        return 1;
    }
    script->Call("SetSkill", skill->m_arguments, returned);
    if (returned.m_error.m_status) {
        return 0;
    }
    arguments.pushUserData(projectile->m_hitObject);
    arguments.pushPointer(projectile);
    returned.m_valueList->clear();
    LiveScript(skill)->Call(function, arguments, returned);
    if (returned.m_error.m_status || returned.m_valueList->empty() || returned[0].m_type != 1 || returned[0].getBool()) {
        return 0;
    }
    return 1;
}

}  // namespace

// 0x3dae7c CharAISkillScript::_ProjectileHit(Projectile*,void*)
// The callback's user data is the CharAISkillScript; the script function is "OnDelayedSkill" (see ProjectileCallback).
int CharAISkillScript::_ProjectileHit(Projectile* projectile, void* user) {
    return ProjectileCallback(projectile, static_cast<CharAISkillScript*>(user), "OnDelayedSkill");
}

// 0x3daff4 CharAISkillScript::_ProjectileCheck(Projectile*,void*)
// The same with the script function "OnDelayedSkillCheck".
int CharAISkillScript::_ProjectileCheck(Projectile* projectile, void* user) {
    return ProjectileCallback(projectile, static_cast<CharAISkillScript*>(user), "OnDelayedSkillCheck");
}

// 0x3db16c CharAISkillScript::OnSkillCheck_Active()
// SetSkill, then "OnSkillCheck". No script, a failed call, or fewer than two returned values give false; otherwise the boolean value of the
// second returned value.
bool CharAISkillScript::OnSkillCheck_Active() {
    sfc::script::lua::ReturnValues returned;
    LuaScript* script = LiveScript(this);
    if (!script) {
        return false;
    }
    script->Call("SetSkill", m_arguments, returned);
    if (returned.m_error.m_status) {
        return false;
    }
    returned.m_valueList->clear();
    LiveScript(this)->Call("OnSkillCheck", returned);
    if (returned.m_error.m_status || returned.m_valueList->size() <= 1) {
        return false;
    }
    return returned[1].getBool();
}
