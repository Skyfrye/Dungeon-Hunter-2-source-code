// Batch g1-game-app-global-f216b6-3 (<global>, part 4 of 22): the combat rolls CF__Calc* (Character against
// Character), CF_CalcDotDamage, CF__CalcDamage, GetLevelScaledXP and the nine GetNewState<CS*>() factories.
// Declarations: dh2/global/cf_calc.hpp (new in this batch) and dh2/global/GetNewState.hpp (shared with batch -4).
//
// Property reads. The original calls CharProperties::_GetProperty(this, sheet, id) with sheet = this->m_props
// (Character +0xff4 is CharProperties +0xa94). PROPS_Get(id, false) reads that same sheet in both clones, so each
// such read is written as x->PROPS_Get(id, false).
// Random rolls. Every Random::GetRandom call in this batch goes to the GCC clone at 0x3af6d8
// (_ZN6Random9GetRandomEib.clone.1_1). That clone takes only the range and draws from the ordinary stream, so
// the calls are Random::GetRandom(range, false). The pseudocode's "&dword_64" argument is the constant 0x64.
// Hex-Rays prints the 3-argument form; the callee ignores the extra registers.

#include "dh2/global/cf_calc.hpp"
#include "dh2/global/GetNewState.hpp"

#include <cstdint>
#include <string>

#include "dh2/CSAttack.hpp"
#include "dh2/CSCast.hpp"
#include "dh2/CSDespawn.hpp"
#include "dh2/CSIdle.hpp"
#include "dh2/CSLimbus.hpp"
#include "dh2/CSMove.hpp"
#include "dh2/CSScared.hpp"
#include "dh2/CSSkill.hpp"
#include "dh2/CSSpawn.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Random.hpp"
#include "dh2/Singleton.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"

// The single definitions of the four combat flags (declared in dh2/global/CombatFormulas.hpp). Zero at start (.bss).
// The sibling batch -2 defines the other five combat state variables of this translation unit and not these four.
bool s_isCritical = false;
bool s_isBlocked = false;
int s_ad_dlevel = 0;
int s_da_dlevel = 0;

namespace {

// a3 - 1 on 32 bits. The pseudocode compares a3 - 1 with a3, so the wrap is kept.
std::int32_t Dec32(std::int32_t x) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(x) - 1u);
}

// a3 + 1 on 32 bits, for the overflow test a3 + 1 <= a3 in the miss path.
std::int32_t Inc32(std::int32_t x) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(x) + 1u);
}

// Shared body of CF__CalcFear, CF__CalcPush, CF__CalcHurt and CF__CalcStun. gateProp is the attacker property
// of the a4 == 0 form, gateProp2 the one of the a4 == 2 form, defenseProp the target property.
bool StatusEffect(Character* attacker, Character* target, int a3, int a4, int gateProp, int gateProp2,
                  int defenseProp) {
    std::int32_t gate;
    if (a4 != 0) {
        if (a4 != 2) {
            return Dec32(a3) > a3;
        }
        gate = attacker->PROPS_Get(gateProp2, false);
    } else {
        gate = attacker->PROPS_Get(gateProp, false);
    }
    if (gate <= 0) {
        return gate > a3;
    }
    return cf_calc::StatusEffectPasses(gate, attacker->PROPS_Get(19, false), target->PROPS_Get(defenseProp, false),
                                       target->PROPS_Get(19, false), a3);
}

}  // namespace

// 0x3b0868 CF__CalcCrit(Character*, Character*, int, int)
bool CF__CalcCrit(Character* attacker, [[maybe_unused]] Character* target, int a3, int a4) {
    std::int32_t v5 = Inc32(a3);
    std::int32_t v6;
    if (a4 != 0) {
        if (a4 == 2) {
            v6 = attacker->PROPS_Get(165, false) + cf_calc::SignExtend24(s_ad_dlevel);
        } else {
            v6 = Dec32(a3);
        }
    } else {
        v5 = 25088;
        v6 = attacker->PROPS_Get(63, false) + cf_calc::SignExtend24(s_ad_dlevel);
    }
    if (v5 <= a3 || v6 <= a3) {
        return false;
    }
    s_isCritical = true;
    return true;
}

// 0x3b0918 CF__CalcBlock(Character*, Character*, int, int)
// The blocker is the target (the second character): its property 61, its shield and its property 62.
bool CF__CalcBlock([[maybe_unused]] Character* attacker, Character* target, int a3, int a4) {
    std::int32_t limit;
    std::int32_t v7;
    if (a4 == 0) {
        v7 = target->PROPS_Get(61, false) + cf_calc::SignExtend24(s_da_dlevel);
        if (target->ItemInventory::HasShield()) {
            v7 += target->PROPS_Get(62, false);
        }
        limit = 25088;
    } else {
        limit = Inc32(a3);
        v7 = Dec32(a3);
    }
    if (limit <= a3 || v7 <= a3) {
        return false;
    }
    s_isBlocked = true;
    return true;
}

// 0x3b09c4 CF_CalcDotDamage(Character*, Character*, bool)
// The original writes three int32 through a hidden pointer and returns it. The attacker supplies the gate, the
// roll range and the element; the target supplies the resistance of that element.
DotDamage CF_CalcDotDamage(Character* attacker, Character* target, bool isDot) {
    const std::int32_t gate = attacker->PROPS_Get(isDot ? 181 : 125, false);
    if (gate <= 0) {
        return DotDamage{gate, 0, -1};
    }
    if (isDot) {
        const std::int32_t lo = attacker->PROPS_Get(179, false);
        const std::int32_t hi = attacker->PROPS_Get(180, false);
        std::int32_t damage = static_cast<std::int32_t>(Random::GetRandom(hi - lo, false)) + lo;
        const std::int32_t element = attacker->PROPS_Get(178, false) >> 8;
        if (element != -1) {
            const std::int32_t diff = damage - target->PROPS_Get(element + 74, false);
            damage = diff < 0 ? 0 : diff;  // diff & ~(diff >> 31): clamp at zero
        }
        return DotDamage{gate, damage, element};
    }
    const std::int32_t lo = attacker->PROPS_Get(123, false);
    const std::int32_t hi = attacker->PROPS_Get(124, false);
    const std::int32_t roll = static_cast<std::int32_t>(Random::GetRandom(hi - lo, false));
    return DotDamage{gate, lo + roll, -1};
}

// 0x3b0ad4 CF__CalcSlow(Character*, Character*, int, int)
bool CF__CalcSlow(Character* attacker, Character* target, int a3, int a4) {
    std::int32_t gate;
    if (a4 != 0) {
        if (a4 != 2) {
            return Dec32(a3) > a3;
        }
        gate = attacker->PROPS_Get(188, false);
    } else {
        gate = attacker->PROPS_Get(145, false);
    }
    if (gate <= 0) {
        return gate > a3;
    }
    return cf_calc::SlowEffectPasses(gate, attacker->PROPS_Get(19, false), target->PROPS_Get(144, false),
                                     target->PROPS_Get(19, false), a3);
}

// 0x3b0c64 CF__CalcFear(Character*, Character*, int, int)
bool CF__CalcFear(Character* attacker, Character* target, int a3, int a4) {
    return StatusEffect(attacker, target, a3, a4, 142, 186, 141);
}

// 0x3b0d78 CF__CalcPush(Character*, Character*, int, int)
bool CF__CalcPush(Character* attacker, Character* target, int a3, int a4) {
    return StatusEffect(attacker, target, a3, a4, 137, 183, 136);
}

// 0x3b0e8c CF__CalcHurt(Character*, Character*, int, int)
bool CF__CalcHurt(Character* attacker, Character* target, int a3, int a4) {
    return StatusEffect(attacker, target, a3, a4, 135, 182, 134);
}

// 0x3b0fa0 CF__CalcStun(Character*, Character*, int, int)
bool CF__CalcStun(Character* attacker, Character* target, int a3, int a4) {
    return StatusEffect(attacker, target, a3, a4, 139, 184, 138);
}

// 0x3b1df0 CF__CalcMissOrDodge(Character*, Character*, int, int, int, bool)
// The roll is drawn first, as in the original. Mode 0 is melee (the only mode that can dodge), mode 2 uses the
// element term, any other mode uses a3 + 1 as the threshold.
MissOrDodgeResult CF__CalcMissOrDodge(Character* attacker, Character* target, int a3, int a4, int element,
                                      bool offHand) {
    const std::uint32_t roll = Random::GetRandom(100, false);
    std::int32_t limit;  // v11
    if (a4 == 0 || a4 == 2) {
        limit = 12800;
        if (a3 >= 25088) {
            return MissOrDodgeResult{true, false};
        }
    } else {
        limit = Dec32(a3);
        if (Inc32(a3) <= a3) {
            return MissOrDodgeResult{true, false};
        }
    }
    if (limit > a3) {
        return MissOrDodgeResult{false, false};
    }
    const std::int32_t rollShift = static_cast<std::int32_t>(roll << 8);  // v12
    std::int32_t threshold;                                               // v13
    std::int32_t dodgeValue;                                              // v14
    if (a4 != 0) {
        if (a4 == 2) {
            const std::int32_t base = attacker->PROPS_Get(158, false);
            std::int32_t v26 = base;
            if (element != -1) {
                v26 = base + attacker->PROPS_Get(element + 159, false);
            }
            threshold = cf_calc::ShlSar(s_ad_dlevel, 9, 8) + 19200 +
                        cf_calc::ShlSar(v26 - target->PROPS_Get(164, false), 9, 8);
        } else {
            threshold = Inc32(a3);
        }
        dodgeValue = rollShift + 1;
    } else {
        const std::int32_t attackerProp50 = attacker->PROPS_Get(50, false);
        const std::int32_t v20 = attackerProp50 < 256 ? 256 : attackerProp50;
        const std::int32_t bonus = attacker->PROPS_GetBonusAttackRating(offHand);
        threshold = cf_calc::ShlSar(s_ad_dlevel, 9, 8) + 19200 +
                    ((51 * (v20 - target->PROPS_Get(59, false) + bonus)) >> 8);
        dodgeValue = target->PROPS_Get(60, false) + cf_calc::SignExtend24(s_da_dlevel);
    }
    if (a3 >= threshold) {
        return MissOrDodgeResult{true, false};
    }
    if (a4 != 0 || dodgeValue <= rollShift) {
        return MissOrDodgeResult{false, false};
    }
    return MissOrDodgeResult{false, true};
}

// 0x3b1fb8 CF__CalcDamage(Character*, Character*, int, int, int, bool, bool)
// The original returns its hidden result pointer. Mode 0 and 1 are the normal roll (the weapon element and the
// DOT part are included), mode 2 is the flat variant, mode 3 returns fixedDamage and any other mode is all zero.
// The attacker is the second character (a2 in the pseudocode) and the target the third (a3).
CombatDamage CF__CalcDamage(Character* attacker, Character* target, int fixedDamage, int mode, int element,
                            bool offHand, bool isDot) {
    CombatDamage out{};
    if (static_cast<std::uint32_t>(mode) <= 1u) {
        std::int32_t minDamage;      // Property: 79 or 81 (174 for a DOT)
        std::int32_t maxDamage;      // v22: 80 or 82 (175 for a DOT)
        std::int32_t weaponElement;  // v64, -1 when none
        if (offHand) {
            minDamage = attacker->PROPS_Get(81, false);
            maxDamage = attacker->PROPS_Get(82, false);
            weaponElement = attacker->PROPS_Get(100, false) >> 8;
        } else {
            minDamage = attacker->PROPS_Get(79, false);
            maxDamage = attacker->PROPS_Get(80, false);
            weaponElement = attacker->PROPS_Get(97, false) >> 8;
        }
        if (isDot) {
            minDamage = attacker->PROPS_Get(174, false);
            maxDamage = attacker->PROPS_Get(175, false);
        }
        const std::int32_t hi = maxDamage < 0 ? 0 : maxDamage;  // v65: max(v22, 0)
        const std::int32_t lo = minDamage < 0 ? 0 : minDamage;  // v56: max(Property, 0)
        std::int32_t damage = static_cast<std::int32_t>(Random::GetRandom(hi - lo, false)) +
                              attacker->PROPS_GetBonusDamage(offHand) + lo;
        if (target->CharStateMachine::SM_GetState() == 9) {
            damage += attacker->PROPS_Get(92, false);
        }
        if (attacker->PROPS_Get(198, false) > target->PROPS_Get(199, false)) {
            damage += attacker->PROPS_Get(93, false);
        }
        const std::uint16_t extraCount = static_cast<std::uint16_t>(attacker->unk_14d0);  // +0x14d0, unsigned
        if (extraCount != 0) {
            damage += static_cast<std::int32_t>(extraCount) * attacker->PROPS_Get(94, false);
        }
        if (s_isBlocked) {
            damage = (damage * target->PROPS_Get(121, false)) >> 8;
        }
        if (s_isCritical) {
            damage += hi;
        }
        std::int32_t dmg = damage - ((25 * target->PROPS_Get(71, false)) >> 8);  // v26
        if (dmg <= 0) {
            dmg = 256;
        }
        std::int32_t value132 = 0;  // v61
        std::int32_t value133 = 0;  // v60
        if (!isDot) {
            value132 = ((dmg * attacker->PROPS_Get(132, false)) >> 8) / 100;
            value133 = ((dmg * attacker->PROPS_Get(133, false)) >> 8) / 100;
        }
        if (weaponElement != -1) {
            std::int32_t v27;  // min of the second roll
            std::int32_t v28;  // max of the second roll
            if (offHand) {
                v27 = attacker->PROPS_Get(98, false);
                v28 = attacker->PROPS_Get(99, false);
            } else {
                v27 = attacker->PROPS_Get(95, false);
                v28 = attacker->PROPS_Get(96, false);
            }
            if (v27 >= 0 && v28 >= 0) {
                const std::int32_t roll = static_cast<std::int32_t>(Random::GetRandom(v28 - v27, false));
                std::int32_t v53 = (target->PROPS_Get(weaponElement + 74, false) >> 8) / -100 + 1;
                if (v53 >= 0) {
                    if (v53 >= 1) {
                        v53 = 1;
                    }
                    dmg += (roll + v27) * v53;
                    if (dmg <= 0) {
                        dmg = 256;
                    }
                }
            }
        }
        const DotDamage dot = CF_CalcDotDamage(attacker, target, isDot);
        out.m_damage = dmg;
        out.m_element = weaponElement;
        out.m_value132 = value132;
        out.m_value133 = value133;
        out.m_dot = dot;
        return out;
    }
    if (mode == 2) {
        std::int32_t minValue;  // v41: 174 for a DOT, else 79
        std::int32_t maxValue;  // v37: 175 for a DOT, else 80
        if (isDot) {
            minValue = attacker->PROPS_Get(174, false);
            maxValue = attacker->PROPS_Get(175, false);
        } else {
            minValue = attacker->PROPS_Get(79, false);
            maxValue = attacker->PROPS_Get(80, false);
            // The original overwrites its element argument with the weapon element on this path.
            element = attacker->PROPS_Get(97, false) >> 8;
        }
        std::int32_t sum = maxValue | minValue;  // v42, tested for non-zero
        if (sum != 0) {
            const std::int32_t hiMax = maxValue < 0 ? 0 : maxValue;  // v62
            const std::int32_t loMin = minValue < 0 ? 0 : minValue;
            std::int32_t v43 = static_cast<std::int32_t>(Random::GetRandom(hiMax - loMin, false)) + loMin;
            if (!isDot) {
                v43 += attacker->PROPS_GetBonusDamage(offHand);
            }
            if (element != -1) {
                std::int32_t v45 = (target->PROPS_Get(element + 74, false) >> 8) / -100 + 1;
                if (v45 < 0) {
                    v43 = 256;
                    // The original reads property element+166 here and drops the value.
                    (void)attacker->PROPS_Get(element + 166, false);
                } else {
                    if (v45 >= 1) {
                        v45 = 1;
                    }
                    v43 = v45 * (attacker->PROPS_Get(element + 166, false) + v43);
                    if (v43 <= 0) {
                        v43 = 256;
                    }
                }
            }
            if (s_isCritical) {
                v43 += hiMax;
            }
            sum = v43 - ((51 * target->PROPS_Get(73, false)) >> 8);
            if (sum <= 0) {
                sum = 256;
            }
        }
        if (isDot) {
            out.m_dot = CF_CalcDotDamage(attacker, target, true);  // the original passes 1 here
        } else {
            out.m_value132 = ((sum * attacker->PROPS_Get(132, false)) >> 8) / 100;
            const std::int32_t v54 = attacker->PROPS_Get(133, false);
            out.m_value133 = ((sum * v54) >> 8) / 100;
        }
        out.m_damage = sum;
        return out;
    }
    if (mode == 3) {
        out.m_damage = fixedDamage;
    }
    return out;
}

// 0x3bd918 GetLevelScaledXP(float, Character*, Character*)
// The original reads five float fields of the first DesignSettings record, Arrays::DesignSettingsTable::members
// + 0x8c .. 0x9c in the 32-bit file layout (Hex-Rays offsets 140, 144, 148, 152, 156). The table holds host
// Structs::DesignSettings elements (ReadArrayTable<Structs::DesignSettings>, element_table.hpp), so the same
// fields are read through the typed pointer: m_w35 (+0x8c, slope when the level difference is positive), m_w36
// (+0x90, slope when negative), m_w37 (+0x94, upper bound), m_w38 (+0x98, lower bound) and m_w39 (+0x9c, cap on
// the level difference). The original level order is kept: self minus other.
float GetLevelScaledXP(float xp, Character* other, Character* self) {
    const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
    const std::int32_t selfLevel = self->GetLevel();
    const std::int32_t levelDiff = selfLevel - other->GetLevel();
    const float percent =
        cf_calc::LevelScaledPercent(levelDiff, design->XP_LevelScaleMaxLevelDiff, design->XP_LevelBonusScaleFactorPerLevelPct, design->XP_LevelMalusScaleFactorPerLevelPct, design->XP_LevelScaleFactorMinPct, design->XP_LevelScaleFactorMaxPct);
    // The original calls DebugSwitches::load and GetSwitch("isTracingXPDistribution") and drops the result. The
    // lookup has no other effect; GetInstance loads the switch file on first use (0x330740).
    (void)DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingXPDistribution"));
    return (percent / 100.0f) * xp;
}

// 0x3c0454 CharState* GetNewState<CSLimbus>()
// Asm: LDR from the GOT slot of _ZN9SingletonI8CSLimbusE6s_instE, then returned. Returns &Singleton<CSLimbus>::s_inst.
// The explicit instantiation the link needs is in game-app/src/singleton_CSLimbus.cpp (link-1 wave), and
// CharState::~CharState is defined in game-character/src/g1-game-character-pack9-12cabb-0.cpp, so the earlier note's
// two blockers are both gone.
template <>
CharState* GetNewState<CSLimbus>() {
    return &Singleton<CSLimbus>::s_inst;
}

// 0x3c0470 CharState* GetNewState<CSSpawn>()
// Asm: returns &Singleton<CSSpawn>::s_inst (GOT slot of _ZN9SingletonI7CSSpawnE6s_instE). Instantiation:
// game-app/src/singleton_CSSpawn.cpp.
template <>
CharState* GetNewState<CSSpawn>() {
    return &Singleton<CSSpawn>::s_inst;
}

// 0x3c048c CharState* GetNewState<CSDespawn>()
// Asm: returns &Singleton<CSDespawn>::s_inst (GOT slot of _ZN9SingletonI9CSDespawnE6s_instE). Instantiation:
// game-app/src/singleton_CSDespawn.cpp.
template <>
CharState* GetNewState<CSDespawn>() {
    return &Singleton<CSDespawn>::s_inst;
}

// 0x3c04a8 CharState* GetNewState<CSIdle>()
template <>
CharState* GetNewState<CSIdle>() {
    return &Singleton<CSIdle>::s_inst;
}

// 0x3c04c4 CharState* GetNewState<CSMove>()
template <>
CharState* GetNewState<CSMove>() {
    return &Singleton<CSMove>::s_inst;
}

// 0x3c04e0 CharState* GetNewState<CSAttack>()
template <>
CharState* GetNewState<CSAttack>() {
    return &Singleton<CSAttack>::s_inst;
}

// 0x3c04fc CharState* GetNewState<CSSkill>()
template <>
CharState* GetNewState<CSSkill>() {
    return &Singleton<CSSkill>::s_inst;
}

// 0x3c0518 CharState* GetNewState<CSCast>()
template <>
CharState* GetNewState<CSCast>() {
    return &Singleton<CSCast>::s_inst;
}

// 0x3c0534 CharState* GetNewState<CSScared>()
template <>
CharState* GetNewState<CSScared>() {
    return &Singleton<CSScared>::s_inst;
}
