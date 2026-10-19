// CharProperties bonus lookups, property recalculation, sheet setters, buff bookkeeping and destruction
// (batch g1-game-character-CharProperties-53ed14-2).
//
// Layout facts used here, from the owner header and the 32-bit original:
//   - The sheets m_baseProps (+0x008), m_savedProps (+0x38c), m_gearProps (+0x710) and m_props (+0xa94) are
//     Structs::CharacterProperties. Property id i is the word m_w(i+1) of a sheet.
//   - m_buffs (+0xe18) is an ordered map keyed by class id. Each BuffDecl holds the deque of its live
//     BuffInst instances (m_insts, +0x20 of the BuffDecl). A BuffInst is a sheet with a timer id (+0x388),
//     an owner (+0x38c) and its BuffDecl (+0x390).
//   - Character::m_charPropsId (+0x13c8) is the row written by LoadPropertiesForClassSelect. The inventory
//     (Character +0x37c) and the timer bank (Character +0x3b4) are base subobjects of Character.
//   - Structs::Item word m_w37 (+0x94) is the property base read by PROPS_GetBonusDamage.
//
// Tree iteration in the original is a hand-written STLport red-black tree walk. Here the same visits are
// written as std::map iteration: ascending keys by default, and rbegin..rend where the original walks the
// tree from the largest key down (RecalcProperty, bit 0x01).
#include "dh2/CharProperties.hpp"

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <deque>
#include <map>

#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/VisualFXManager.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// Engine assert level, declared in core-platform/memory.hpp. That header is not included here: it pulls
// core-platform/deps/glitch_core.hpp and the pydata MemoryHintState, which clash with the dh2 headers.
extern int gAssertLevel;

// CustomFree(void*) is the inline stand-in in pydata-accessors/deps/stream_reader.hpp (std::free), which
// structs_records.hpp pulls in through CharProperties.hpp. The engine declaration is core-platform/memory.hpp.

namespace {

// Source location of the original's ASSERT lines (Windows project paths, kept verbatim).
constexpr char kCharPropsCpp[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Properties\\CharProperties.cpp";

constexpr int kPropertyCount = 224;  // property ids 0..223

// Original assert handling. Level 2 writes to address 0, which crashes; the rebuild aborts. Level 1
// prints "ASSERT(%s) FAILED: %s:%d" to stderr and carries on. Any other level stays silent.
[[noreturn]] void CrashOnAssert() { std::abort(); }

void ReportAssert(const char* condition, const char* file, int line) {
    std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", condition, file, line);
}

// 32-bit wrapping addition, as the original's ADD does it, without signed overflow.
int WrapAdd(int a, int b) {
    return static_cast<int>(static_cast<std::uint32_t>(a) + static_cast<std::uint32_t>(b));
}

// value << 8 in 32-bit wrapping arithmetic (the *Int setters and adders scale by 256).
int ShiftLeft8(int value) { return static_cast<int>(static_cast<std::uint32_t>(value) << 8); }

}  // namespace

// 0x3df8ac CharProperties::PROPS_GetBonusDamage(bool) const
// The main hand is equipment slot 1 and the off hand slot 2. The base is the weapon's property (item word
// m_w37 + 83) read from the final sheet. A two-hander adds property 91 to it. Dual wielding adds property 90.
// Returns 0 with no item equipped in the slot, or when the item's property base is -1.
int CharProperties::PROPS_GetBonusDamage(bool offHand) const {
    const unsigned int slot = offHand ? 2u : 1u;
    ItemInstance* equipped = m_character->ItemInventory::GetEquippedItem(slot);
    if (equipped == nullptr) {
        return 0;
    }
    const int weaponProperty = equipped->GetItem()->Param3;  // Structs::Item +0x94
    if (weaponProperty == -1) {
        return 0;
    }
    const int property = _GetProperty(m_props, WrapAdd(weaponProperty, 83));
    int bonus = property;
    if (m_character->ItemInventory::HasTwoHander(true)) {
        bonus = WrapAdd(_GetProperty(m_props, 91), property);
    }
    if (!m_character->ItemInventory::IsDualWielding()) {
        return bonus;
    }
    return WrapAdd(bonus, _GetProperty(m_props, 90));
}

// 0x3df980 CharProperties::PROPS_GetIntWithBonus(int,bool) const
// The value is the sheet word >> 8. Attack rating (50), damage for the main hand (79, 80) and the off hand
// (81, 82) add their bonus, each shifted by 8 as well. The sheet is s_temp when useTemp is set, else m_props.
int CharProperties::PROPS_GetIntWithBonus(int propId, bool useTemp) const {
    const Structs::CharacterProperties& sheet = useTemp ? s_temp : m_props;
    int value = _GetProperty(sheet, propId) >> 8;
    switch (propId) {
        case 50:  // '2'
            return WrapAdd(value, PROPS_GetBonusAttackRating(false) >> 8);
        case 79:  // 'O'
        case 80:  // 'P'
            return WrapAdd(value, PROPS_GetBonusDamage(false) >> 8);
        case 81:  // 'Q'
        case 82:  // 'R'
            value = WrapAdd(value, PROPS_GetBonusDamage(true) >> 8);
            return value;
        default:
            return value;
    }
}

// 0x3dfd18 CharProperties::PROPS_IsBonus(int) const
// True when the property differs from its default in the gear sheet, or in any live buff instance.
// The default is the one _GetDefault gives (partial: see 0x3def10).
bool CharProperties::PROPS_IsBonus(int propId) const {
    const int defaultValue = _GetDefault(propId);
    if (defaultValue != _GetProperty(m_gearProps, propId)) {
        return true;
    }
    for (const auto& entry : m_buffs) {
        for (const BuffInst* inst : entry.second.m_insts) {
            if (defaultValue != _GetProperty(*inst, propId)) {
                return true;
            }
        }
    }
    return false;
}

// 0x3dfe60 CharProperties::RecalcProperty(int)
// Recomputes m_props[propId] from the layers the property's type bits select. The type comes from _GetType
// (partial: see 0x3deed8), so the branch choice depends on that stub until the type table is wired.
//   bit 0x04: the default, then base, saved and gear layers added (_AddProperty), then every set buff value
//             added, buffs in ascending key order.
//   bit 0x02: base wins, then saved, then gear. Else the first buff class (ascending keys) with a set value
//             gives its last set value. Else the default.
//   bit 0x01: buffs are scanned from the largest key down. The first class with a set value gives its last
//             set value. Else gear, then saved, then base (first set), else the default.
//   bit 0x20: base, then saved added. Bit 0x10 alone: base.
//   no bits:  m_props is left as it is.
void CharProperties::RecalcProperty(int propId) {
    const int type = _GetType(propId);
    if ((type & 0x04) != 0) {
        _SetProperty(m_props, propId, _GetDefault(propId));
        if (_IsPropertySet(m_baseProps, propId)) {
            _AddProperty(m_props, propId, _GetProperty(m_baseProps, propId));
        }
        if (_IsPropertySet(m_savedProps, propId)) {
            _AddProperty(m_props, propId, _GetProperty(m_savedProps, propId));
        }
        if (_IsPropertySet(m_gearProps, propId)) {
            _AddProperty(m_props, propId, _GetProperty(m_gearProps, propId));
        }
        for (const auto& entry : m_buffs) {
            for (BuffInst* inst : entry.second.m_insts) {
                if (_IsPropertySet(*inst, propId)) {
                    _AddProperty(m_props, propId, _GetProperty(*inst, propId));
                }
            }
        }
        return;
    }
    if ((type & 0x02) != 0) {
        if (_IsPropertySet(m_baseProps, propId)) {
            _SetProperty(m_props, propId, _GetProperty(m_baseProps, propId));
            return;
        }
        if (!_IsPropertySet(m_savedProps, propId)) {
            if (!_IsPropertySet(m_gearProps, propId)) {
                for (const auto& entry : m_buffs) {
                    bool matched = false;
                    for (BuffInst* inst : entry.second.m_insts) {
                        if (_IsPropertySet(*inst, propId)) {
                            _SetProperty(m_props, propId, _GetProperty(*inst, propId));
                            matched = true;
                        }
                    }
                    if (matched) {
                        return;
                    }
                }
                _SetProperty(m_props, propId, _GetDefault(propId));
                return;
            }
            _SetProperty(m_props, propId, _GetProperty(m_gearProps, propId));
            return;
        }
        _SetProperty(m_props, propId, _GetProperty(m_savedProps, propId));
        return;
    }
    if ((type & 0x01) != 0) {
        for (auto it = m_buffs.rbegin(); it != m_buffs.rend(); ++it) {
            bool matched = false;
            for (BuffInst* inst : it->second.m_insts) {
                if (_IsPropertySet(*inst, propId)) {
                    _SetProperty(m_props, propId, _GetProperty(*inst, propId));
                    matched = true;
                }
            }
            if (matched) {
                return;
            }
        }
        int value = 0;
        if (_IsPropertySet(m_gearProps, propId)) {
            value = _GetProperty(m_gearProps, propId);
        } else if (_IsPropertySet(m_savedProps, propId)) {
            value = _GetProperty(m_savedProps, propId);
        } else if (_IsPropertySet(m_baseProps, propId)) {
            value = _GetProperty(m_baseProps, propId);
        } else {
            value = _GetDefault(propId);
        }
        _SetProperty(m_props, propId, value);
        return;
    }
    if ((type & 0x20) == 0) {
        if ((type & 0x10) == 0) {
            return;
        }
        _SetProperty(m_props, propId, _GetProperty(m_baseProps, propId));
        return;
    }
    _SetProperty(m_props, propId, _GetProperty(m_baseProps, propId));
    _AddProperty(m_props, propId, _GetProperty(m_savedProps, propId));
}

// 0x3e0614 CharProperties::PROPS_SetToSheet(int,int,Structs::CharacterProperties*)
// A sheet of 0 is an assert (level 2 crashes, level 1 prints the line). Type bit 0x04 stores the value in the
// given sheet and recalculates the property. Bit 0x08 stores it in m_props directly. Other types store nothing.
void CharProperties::PROPS_SetToSheet(int propId, int value, Structs::CharacterProperties* sheet) {
    if (sheet != nullptr) {
        const int type = _GetType(propId);
        if ((type & 0x04) != 0) {
            _SetProperty(*sheet, propId, value);
            RecalcProperty(propId);
        } else if ((type & 0x08) != 0) {
            _SetProperty(m_props, propId, value);
        }
        return;
    }
    if (gAssertLevel == 2) {
        CrashOnAssert();  // the original stores through the null sheet here
    } else if (gAssertLevel == 1) {
        ReportAssert("sheet", kCharPropsCpp, 806);
    }
}

// 0x3e0708 CharProperties::PROPS_Add(int,int)
// Type bit 0x20 adds to the saved sheet and recalculates. Bit 0x08 adds to m_props directly. The original
// returns the type (or a helper's result) in r0; the void header drops it.
void CharProperties::PROPS_Add(int propId, int value) {
    const int type = _GetType(propId);
    if ((type & 0x20) != 0) {
        const int saved = _GetProperty(m_savedProps, propId);
        _SetProperty(m_savedProps, propId, WrapAdd(saved, value));
        RecalcProperty(propId);
    } else if ((type & 0x08) != 0) {
        const int current = _GetProperty(m_props, propId);
        _SetProperty(m_props, propId, WrapAdd(current, value));
    }
}

// 0x3e0798 CharProperties::PROPS_AddInt(int,int)
void CharProperties::PROPS_AddInt(int propId, int value) { PROPS_Add(propId, ShiftLeft8(value)); }

// 0x3e07a0 CharProperties::PROPS_Set(int,int)
// Type bit 0x20 stores into the saved sheet and recalculates. Bit 0x08 stores into m_props directly.
void CharProperties::PROPS_Set(int propId, int value) {
    const int type = _GetType(propId);
    if ((type & 0x20) != 0) {
        _SetProperty(m_savedProps, propId, value);
        RecalcProperty(propId);
    } else if ((type & 0x08) != 0) {
        _SetProperty(m_props, propId, value);
    }
}

// 0x3e0808 CharProperties::PROPS_SetInt(int,int)
void CharProperties::PROPS_SetInt(int propId, int value) { PROPS_Set(propId, ShiftLeft8(value)); }

// 0x3e0810 CharProperties::RecalcProperties(bool)
// With reloadClass, the class is loaded into the base sheet first. The class id is word m_w27 of that sheet
// (CharProperties +0x74, read by the original as the class id). Then every property is recalculated.
void CharProperties::RecalcProperties(bool reloadClass) {
    if (reloadClass) {
        _LoadClass(m_baseProps, m_baseProps.ClassID, false);
    }
    for (int propId = 0; propId != kPropertyCount; ++propId) {
        RecalcProperty(propId);
    }
}

// 0x3e0854 CharProperties::LoadPropertiesForClassSelect(int)
void CharProperties::LoadPropertiesForClassSelect(int classId) {
    m_character->m_charPropsId = static_cast<std::int16_t>(classId);  // Character +0x13c8
    LoadBaseProperties(classId);
    RecalcProperties(true);
}

// 0x3e087c CharProperties::UpdateBaseProperties(int)
void CharProperties::UpdateBaseProperties(int charTableId) {
    ResetBaseProperties();
    LoadBaseProperties(charTableId);
    RecalcProperties(true);
}

// 0x3e08a8 CharProperties::UpdateGearsProperties(void)
void CharProperties::UpdateGearsProperties() {
    ResetGearsProperties();
    LoadGearsProperties();
    RecalcProperties(true);
}

// 0x3e0a68 CharProperties::BuffDecl::~BuffDecl()
// The original destroys the m_insts deque (+0x20) first, then frees the string buffer of m_name (+0x08). Those
// members are destroyed in reverse declaration order here, which is the same order. The instances themselves are
// owned by the sheets' owner and are not freed by the declaration.
CharProperties::BuffDecl::~BuffDecl() {}

// 0x3e0af8 CharProperties::PROPS_RemoveAllBuffs(void)
// For every buff class in ascending key order, every live instance is stopped (its timer), destroyed and freed
// (CustomFree), then the class's FX is released (VisualFXManager::DropAnimatedFX on &decl.m_fx, called without a
// null check, as the original does). Then the class map is cleared and the properties recalculated.
void CharProperties::PROPS_RemoveAllBuffs() {
    for (auto& entry : m_buffs) {
        std::deque<BuffInst*>& insts = entry.second.m_insts;
        for (BuffInst* inst : insts) {
            m_character->CharTimers::TMR_Stop(static_cast<unsigned int>(inst->m_timerId));
            inst->Structs::CharacterProperties::~CharacterProperties();
            CustomFree(inst);
        }
        VisualFXManager::s_inst.DropAnimatedFX(entry.second.m_fx);
    }
    m_buffs.clear();
    RecalcProperties(true);
}

// 0x3e0c6c CharProperties::~CharProperties() (virtual slot 0, complete-object destructor)
// 0x3e0e2c CharProperties::~CharProperties() (base-object copy, not in the vtable)
// Both addresses have this body. The vptr is set to CharProperties by the compiler, as the original does first.
// Each buff instance is destroyed and freed, each class's deque is cleared, and its FX is dropped when set. Then
// the map is cleared. The four sheets are then destroyed in reverse declaration order (m_buffs, m_props,
// m_gearProps, m_savedProps, m_baseProps), which is the order the original uses.
CharProperties::~CharProperties() {
    for (auto& entry : m_buffs) {
        std::deque<BuffInst*>& insts = entry.second.m_insts;
        for (BuffInst* inst : insts) {
            if (inst != nullptr) {
                inst->Structs::CharacterProperties::~CharacterProperties();
                CustomFree(inst);
            }
        }
        insts.clear();
        if (entry.second.m_fx != nullptr) {
            VisualFXManager::s_inst.DropAnimatedFX(entry.second.m_fx);
        }
    }
    m_buffs.clear();
}

// 0x3e0e10 CharProperties::~CharProperties() (virtual slot 1, deleting destructor)
// SKIPPED: the deleting destructor is compiler-generated for the C++ delete expression. The original body is
// `~CharProperties(this); CustomFree(this);`. This build frees through the compiler's operator delete instead.

// 0x3e101c CharProperties::PROPS_DelBuff(int,Structs::CharacterProperties*)
// The class classId is looked up. A class with exactly one instance is dropped whole, whatever inst is: that
// instance is stopped and freed, and the class entry is erased. Otherwise inst must be in the class's deque. It
// is stopped, freed and erased from the deque. Either way the properties are recalculated.
// The one-instance path releases the class's FX (VisualFXManager::DropAnimatedFX on decl.m_fx, no null check) before
// the erase, as the original does.
void CharProperties::PROPS_DelBuff(int classId, Structs::CharacterProperties* inst) {
    const auto node = m_buffs.find(classId);
    if (node == m_buffs.end()) {
        return;
    }
    std::deque<BuffInst*>& insts = node->second.m_insts;
    if (insts.size() == 1) {
        BuffInst* only = insts.front();
        m_character->CharTimers::TMR_Stop(static_cast<unsigned int>(only->m_timerId));
        if (only != nullptr) {
            only->Structs::CharacterProperties::~CharacterProperties();
            CustomFree(only);
        }
        VisualFXManager::s_inst.DropAnimatedFX(node->second.m_fx);
        m_buffs.erase(node);
        RecalcProperties(true);
        return;
    }
    if (inst == nullptr) {
        return;
    }
    const auto pos = std::find(insts.begin(), insts.end(), inst);
    if (pos == insts.end()) {
        return;
    }
    BuffInst* found = *pos;
    m_character->CharTimers::TMR_Stop(static_cast<unsigned int>(found->m_timerId));
    found->Structs::CharacterProperties::~CharacterProperties();
    CustomFree(found);
    insts.erase(pos);
    RecalcProperties(true);
}

// 0x3e123c CharProperties::BuffExpired(CharTimers::Timer*)
// The timer's user data is the buff instance. Its timer id must match the timer's id (assert otherwise). The
// instance is then removed through PROPS_DelBuff, with its class id from the instance's BuffDecl.
// PARTIAL: a null timer is an assert at level 1 (abort at level 2). The original then reads the timer's vtable
// through the null pointer and faults. The rebuild returns instead of faulting.
void CharProperties::BuffExpired(CharTimers::Timer* timer) {
    if (timer == nullptr) {
        if (gAssertLevel == 2) {
            CrashOnAssert();
        } else if (gAssertLevel == 1) {
            ReportAssert("timer", kCharPropsCpp, 832);
        }
        return;
    }
    BuffInst* inst = static_cast<BuffInst*>(timer->GetRef());
    if (static_cast<unsigned int>(inst->m_timerId) != timer->GetID()) {
        if (gAssertLevel == 2) {
            CrashOnAssert();
        } else if (gAssertLevel == 1) {
            ReportAssert("buffInst->timerID == timer->GetID()", kCharPropsCpp, 836);
        }
    }
    PROPS_DelBuff(inst->m_decl->m_id, inst);
}
