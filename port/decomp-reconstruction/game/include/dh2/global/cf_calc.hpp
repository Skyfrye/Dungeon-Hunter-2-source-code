// Combat rolls of the <global> CF__Calc* family (Character against Character), CF_CalcDotDamage,
// CF__CalcDamage and the level-scaled XP percentage. Batch g1-game-app-global-f216b6-3 (part 4 of 22).
// Definitions: game-app/src/g1-game-app-global-f216b6-3.cpp.
//
// The four flags s_ad_dlevel, s_da_dlevel, s_isBlocked and s_isCritical are file-static in the original (ELF
// _ZL11s_ad_dlevel, _ZL11s_da_dlevel, _ZL11s_isBlocked, _ZL12s_isCritical, all .bss, zero at start). They are declared
// in dh2/global/CombatFormulas.hpp, the owner of the combat state, and defined once, in the batch source above.
// CF_SetCombatants, which is not in this batch, writes them before the rolls run.
#pragma once

#include <cstdint>

#include "dh2/global/CombatFormulas.hpp"

class Character;

// Result of CF_CalcDotDamage: three int32 in the original, returned through a hidden pointer there.
struct DotDamage {
    std::int32_t m_gate;     // +0x00 property 125 (181 for the element form) read from the attacker; <= 0 means no DOT
    std::int32_t m_damage;   // +0x04 rolled damage, 0 when the gate is closed
    std::int32_t m_element;  // +0x08 element index (property 178 >> 8), -1 when none
};

// Result of CF__CalcDamage: seven int32 (28 bytes) in the original, returned through a hidden pointer there.
struct CombatDamage {
    std::int32_t m_damage;    // +0x00 damage after the modifiers (fixed point, >> 8 for display)
    std::int32_t m_element;   // +0x04 weapon element index (property 97 or 100, >> 8); -1 when none, 0 in mode 2
    std::int32_t m_value132;  // +0x08 attacker property 132 applied to the damage, / 100
    std::int32_t m_value133;  // +0x0c attacker property 133 applied to the damage, / 100
    DotDamage m_dot;          // +0x10 .. +0x1b, the damage-over-time part (gate, damage, element)
};

// Result of CF__CalcMissOrDodge. The original packs two bytes into its return word: the low byte is
// missed, the high byte is dodged.
struct MissOrDodgeResult {
    bool m_missed;   // low byte: the roll failed the to-hit threshold, or a gate in the miss path closed
    bool m_dodged;   // high byte: a melee roll passed the defender's dodge test
};

// 0x3b0868 CF__CalcCrit(Character*, Character*, int, int)
bool CF__CalcCrit(Character* attacker, Character* target, int a3, int a4);
// 0x3b0918 CF__CalcBlock(Character*, Character*, int, int)
bool CF__CalcBlock(Character* attacker, Character* target, int a3, int a4);
// 0x3b09c4 CF_CalcDotDamage(Character*, Character*, bool)
DotDamage CF_CalcDotDamage(Character* attacker, Character* target, bool isDot);
// 0x3b0ad4 CF__CalcSlow(Character*, Character*, int, int)
bool CF__CalcSlow(Character* attacker, Character* target, int a3, int a4);
// 0x3b0c64 CF__CalcFear(Character*, Character*, int, int)
bool CF__CalcFear(Character* attacker, Character* target, int a3, int a4);
// 0x3b0d78 CF__CalcPush(Character*, Character*, int, int)
bool CF__CalcPush(Character* attacker, Character* target, int a3, int a4);
// 0x3b0e8c CF__CalcHurt(Character*, Character*, int, int)
bool CF__CalcHurt(Character* attacker, Character* target, int a3, int a4);
// 0x3b0fa0 CF__CalcStun(Character*, Character*, int, int)
bool CF__CalcStun(Character* attacker, Character* target, int a3, int a4);
// 0x3b1df0 CF__CalcMissOrDodge(Character*, Character*, int, int, int, bool)
MissOrDodgeResult CF__CalcMissOrDodge(Character* attacker, Character* target, int a3, int a4, int element, bool offHand);
// 0x3b1fb8 CF__CalcDamage(Character*, Character*, int, int, int, bool, bool)
CombatDamage CF__CalcDamage(Character* attacker, Character* target, int fixedDamage, int mode, int element,
                            bool offHand, bool isDot);
// 0x3bd918 GetLevelScaledXP(float, Character*, Character*)
float GetLevelScaledXP(float xp, Character* other, Character* self);

// Pure arithmetic of the functions above, inline so that a test can run them without linking the engine.
namespace cf_calc {

// (x << 8) >> 8 on 32 bits: the low 24 bits, sign-extended (the original's SBFX #0, #0x18).
inline std::int32_t SignExtend24(std::int32_t x) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(x) << 8) >> 8;
}

// (x << shl) >> sar on 32 bits, as the pseudocode writes it (s_ad_dlevel << 9 >> 8 is ShlSar(x, 9, 8)).
inline std::int32_t ShlSar(std::int32_t x, unsigned shl, unsigned sar) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(x) << shl) >> sar;
}

// The test shared by CF__CalcFear, CF__CalcPush, CF__CalcHurt and CF__CalcStun once the gate is positive:
// 5 * attacker.19 - defense + gate - 5 * target.19 > a3.
inline bool StatusEffectPasses(std::int32_t gate, std::int32_t attacker19, std::int32_t defense,
                               std::int32_t target19, std::int32_t a3) {
    const std::int32_t v13 = 5 * attacker19 - defense;
    return v13 + gate - 5 * target19 > a3;
}

// The test of CF__CalcSlow once the gate is positive. Single-precision, as the original; 0.125 is 1/8.
inline bool SlowEffectPasses(std::int32_t gate, std::int32_t attacker19, std::int32_t defense144,
                             std::int32_t target19, std::int32_t a3) {
    const std::int32_t v14 = static_cast<std::int32_t>(static_cast<float>(gate) + static_cast<float>(attacker19) * 0.125f);
    const std::int32_t v17 = v14 - defense144;
    return static_cast<std::int32_t>(static_cast<float>(v17) - static_cast<float>(target19) * 0.125f) > a3;
}

// The GetLevelScaledXP percentage, single-precision as in the original. levelDiff is self level minus other
// level. cap is DesignSettings +0x9c, positive +0x8c (levelDiff > 0), negative +0x90 (levelDiff < 0), lower
// +0x98 and upper +0x94 bound the result. The clamp order (lower first, then upper) is the original's.
inline float LevelScaledPercent(std::int32_t levelDiff, float cap, float positive, float negative, float lower,
                                float upper) {
    std::int32_t v7 = levelDiff;
    const std::int32_t capInt = static_cast<std::int32_t>(cap);
    if (v7 >= capInt) {
        v7 = capInt;
    }
    float v8 = positive;
    float v12;
    if (v7 > 0) {
        v12 = static_cast<float>(static_cast<std::int32_t>(v8) * v7) + 100.0f;
    } else if (v7 != 0) {
        v8 = negative;
        v12 = static_cast<float>(static_cast<std::int32_t>(v8) * v7) + 100.0f;
    } else {
        v12 = 100.0f;
    }
    if (lower >= v12) {
        v12 = lower;
    }
    if (upper <= v12) {
        v12 = upper;
    }
    return v12;
}

}  // namespace cf_calc
