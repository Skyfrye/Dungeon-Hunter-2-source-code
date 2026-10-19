// CharAISkillScript: the AI skill controller that drives one Lua-scripted character skill. It holds the
// owning Character, the skill script name and index, and an embedded Lua Arguments object that the
// constructor fills with the name and index before the script runs.
// Original 32-bit size 0x1c (28).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3cde2c, dtors 0x3cc238 / 0x3cc448).
// Vtable: two header words plus two slots (D1 at slot 0x00, D0 at slot 0x04). No other virtuals.
#pragma once

#include <cstdint>

#include "dh2/sfc/script/lua/Arguments.hpp"

class Character;
class Projectile;

class CharAISkillScript {
public:
    // Ctor takes the owning character, the script name and the skill index.
    CharAISkillScript(Character* character, const char* scriptName, unsigned int skillIndex); // 0x3cde2c
    virtual ~CharAISkillScript();                                       // 0x3cc238 (D1), 0x3cc448 (D0)

    float GetCooldown();                                                // 0x3da3d0
    Projectile* SpawnProjectile(unsigned int projectileId, float angle);  // 0x3da494 (Hex-Rays types the result int; ProjectileManager::Spawn returns Projectile*)
    Projectile* SpawnProjectile(unsigned int projectileId, bool flag);   // 0x3da510
    void OnPostSkill();                                                 // 0x3da6c0
    int OnSkill();                                                      // 0x3da794
    bool OnPreSkill();                                                  // 0x3da8b8
    bool OnSkillCheck_Usable();                                         // 0x3da9dc
    void OnSkillCleanUp();                                              // 0x3daafc
    void OnSkillUpdate();                                               // 0x3dabd0
    void GetInfo(unsigned int infoId, float* out);                      // 0x3daca8
    bool OnSkillCheck_Active();                                         // 0x3db16c

    // Projectile callbacks. The void* is the CharAISkillScript the projectile was spawned for.
    static int _ProjectileHit(Projectile* projectile, void* user);      // 0x3dae7c
    static int _ProjectileCheck(Projectile* projectile, void* user);    // 0x3daff4

    // Object layout. The vptr sits at +0x00.
    Character* m_character;                                             // +0x04 owning character (asserted non-null by the ctor)
    const char* m_scriptName;                                           // +0x08 skill script name (pushed into the Lua arguments)
    sfc::script::lua::Arguments m_arguments;                            // +0x0c the Lua arguments the constructor fills (8 bytes at 32-bit)
    unsigned int m_skillIndex;                                          // +0x14 skill index, pushed into the Lua arguments
    int m_cooldownTimerId;                                              // +0x18 CharTimers slot of the skill cooldown, -1 = none (ctor). GetCooldown reads it; Character::_SetSpellCooldownTimerId writes it
};
