// Batch g1-game-character-Character-ee9946-12 (Character, part 13 of 20): twenty Lua bindings of Character.
// Declarations are in dh2/Character.hpp. Each binding is a static member with the signature
// (const Arguments& args, ReturnValues& ret, void* userData), and userData is the Character.
//
// Argument order. The Hex-Rays listing names the first parameter `this` and types the third as a Character, but the
// code uses them as: the first is the argument list (asm 0x3b8d98: LDR R3, [R0,#4] reads the Value storage), the second
// is the ReturnValues that receives the result (pushBoolean, pushInteger or pushPointer), and the third is the Character
// (userData). _HasMana calls Character::HasMana on it and _GetPropBonus* read CharProperties at +0x560.
//
// Lua type tags used by the Hex-Rays tests on Value's type word at +4 (values from vendor-lua lua.h, LUA_T*):
// 0 nil, 1 boolean, 2 light userdata, 3 number, 4 string, 7 userdata.
//
// Redo pass (r2a-game-character-Character-ee9946-6): the Lua layer is declared (dh2/sfc/script/lua/), so the bodies of
// _HasMana, _AllowSkillBreak, _AllowRotation, _SetIsTargetable, _GetPropBonusDamage, _GetPropBonusCritRating,
// _GetPropBonusAttackRating, _RemoveDots, _DBG_DumpProps, _Kill and _SetProp are written below. The other bindings in
// this file keep the PARTIAL status and the note above each one.
//
// Layout facts used by the comments (all declared in the owner headers, no layout request):
//   self +0x378  v2Controllable::m_controller (v2Controllable at +0x374, member at +0x04)
//   self +0x415  CharAI unk_4d (CharAI at +0x3c8, member +0x4d, ctor 1)
//   self +0x520  CharStateMachine m_stateFlags (CharStateMachine at +0x4fc, member +0x24)
//   self +0x1390 CharProperties unk_e30 (CharProperties at +0x560, member +0xe30, ctor 0)

#include <cstddef>
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>

#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"   // Structs::SkillList
#include "pydata-accessors/w7_arrays27.hpp"      // Arrays::ClassTable, Arrays::AnimatedEffectTable
#include "pydata-accessors/w7_arrays_00.hpp"     // Arrays::SkillTable
#include "dh2/GameObject.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

namespace {

// Number of arguments of a Lua call. The argument list holds one Value per argument (Arguments::m_values).
std::size_t ArgCount(const sfc::script::lua::Arguments& args) { return args.m_values->size(); }

// True when argument index exists and its tag (Value::m_type: 1 boolean, 3 number, 4 string, 7 userdata) is tag.
bool ArgHasTag(const sfc::script::lua::Arguments& args, std::size_t index, int tag) {
    return ArgCount(args) > index && args[static_cast<unsigned int>(index)].m_type == tag;
}


// Lua tags of Value::m_type (vendor-lua LUA_T*).
constexpr int kTagNil = 0;
constexpr int kTagBoolean = 1;
constexpr int kTagLightUserdata = 2;
constexpr int kTagNumber = 3;
constexpr int kTagString = 4;
constexpr int kTagUserdata = 7;

// (unsigned int) of a Lua number as the ARM target converts a float: negatives and NaN give 0, values past the range
// give the maximum.
unsigned int FloatToUInt32(float value) {
    if (!(value > 0.0f)) {
        return 0u;
    }
    if (value >= 4294967296.0f) {
        return 0xFFFFFFFFu;
    }
    return static_cast<unsigned int>(value);
}

// (int) of a Lua number, saturating like the ARM conversion: NaN gives 0.
int FloatToInt32(float value) {
    if (std::isnan(value)) {
        return 0;
    }
    if (value >= 2147483648.0f) {
        return std::numeric_limits<int>::max();
    }
    if (value <= -2147483648.0f) {
        return std::numeric_limits<int>::min();
    }
    return static_cast<int>(value);
}

// Entry count of the character's skill list: the word at +4 of GetCharSkillList() (Structs::SkillList::m_w1).
std::uint32_t CharSkillListCount(const Character* self) {
    return static_cast<const Structs::SkillList*>(self->GetCharSkillList())->ListSize;
}
}  // namespace

// 0x3b78ec _ZN9Character8_HasManaERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_HasMana(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). Pushes Character::HasMana((int)getNumber(args[0])) (const,
// 0x3bd40c) with ret.pushBoolean. Nothing is pushed when the gate fails.
void Character::_HasMana(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData) {
    const Character* self = static_cast<const Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        ret.pushBoolean(self->HasMana(static_cast<int>(args[0].getNumber())));
    }
}

// 0x3b7974 _ZN9Character16_AllowSkillBreakERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_AllowSkillBreak(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a boolean (tag 1); allow = getBool(args[0]). The word m_stateFlags of the
// CharStateMachine base (Character +0x520) loses bit 0x10000 when allow is true and gains it when allow is false. That
// bit has no name in dh2/CharStateMachine.hpp (its named bits are 10 and 11). The listing's int return (allow) is
// dropped by the void binding.
void Character::_AllowSkillBreak(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                 void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 1)) {
        if (args[0].getBool()) {
            self->CharStateMachine::m_stateFlags &= ~0x10000u;
        } else {
            self->CharStateMachine::m_stateFlags |= 0x10000u;
        }
    }
}

// 0x3b79ec _ZN9Character14_AllowRotationERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_AllowRotation(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Same shape as _AllowSkillBreak: with a boolean args[0], the word m_stateFlags (Character +0x520) loses bit 0x4000 when
// allow is true and gains it when allow is false. Bit 0x4000 has no name in dh2/CharStateMachine.hpp.
void Character::_AllowRotation(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                               void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 1)) {
        if (args[0].getBool()) {
            self->CharStateMachine::m_stateFlags &= ~0x4000u;
        } else {
            self->CharStateMachine::m_stateFlags |= 0x4000u;
        }
    }
}

// 0x3b7a64 _ZN9Character16_SetIsTargetableERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_SetIsTargetable(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a boolean (tag 1). The byte at Character +0x415 is CharAI unk_4d (CharAI +0x4d,
// bool, ctor 1) and receives getBool(args[0]). The binding name suggests targetability; no other reader confirms it,
// so the field keeps its unk_ name.
void Character::_SetIsTargetable(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                 void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 1)) {
        self->CharAI::unk_4d = args[0].getBool();
    }
}

// 0x3b7acc _ZN9Character19_GetPropBonusDamageERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_GetPropBonusDamage(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0; args[0] is read without a type check. Pushes CharProperties::PROPS_GetBonusDamage(
// getBool(args[0])) (const, 0x3df8ac) on the CharProperties base (+0x560) with ret.pushInteger.
void Character::_GetPropBonusDamage(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                    void* userData) {
    const Character* self = static_cast<const Character*>(userData);
    if (ArgCount(args) != 0) {
        ret.pushInteger(self->CharProperties::PROPS_GetBonusDamage(args[0].getBool()));
    }
}

// 0x3b7b28 _ZN9Character23_GetPropBonusCritRatingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_GetPropBonusCritRating(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Same shape as _GetPropBonusDamage: pushInteger(PROPS_GetBonusCritRating(getBool(args[0]))) (const, 0x3df7c4).
void Character::_GetPropBonusCritRating(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                        void* userData) {
    const Character* self = static_cast<const Character*>(userData);
    if (ArgCount(args) != 0) {
        ret.pushInteger(self->CharProperties::PROPS_GetBonusCritRating(args[0].getBool()));
    }
}

// 0x3b7b84 _ZN9Character25_GetPropBonusAttackRatingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_GetPropBonusAttackRating(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Same shape as _GetPropBonusDamage: pushInteger(PROPS_GetBonusAttackRating(getBool(args[0]))) (const, 0x3df81c).
void Character::_GetPropBonusAttackRating(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                          void* userData) {
    const Character* self = static_cast<const Character*>(userData);
    if (ArgCount(args) != 0) {
        ret.pushInteger(self->CharProperties::PROPS_GetBonusAttackRating(args[0].getBool()));
    }
}

// 0x3b7be0 _ZN9Character11_RemoveDotsERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_RemoveDots(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Checked against the assembly (0x3b7be0). Two values are read:
//   n: the word at Character +0x1390 (CharProperties unk_e30, its meaning is not recovered). It is replaced by
//      (int)getNumber(args[0]) when the argument count is not 0, args[0] is a number (tag 3) and that int is not negative.
//   element: (int)getNumber(args[1]) when the argument count is above 1 and args[1] is a number (tag 3) other than -2;
//      otherwise -1.
// Then CharProperties::PROPS_RemoveDot(element) runs while the count of calls is below n and the word at +0x1390 is not
// zero. The loop runs only when n > 0 and the word is not zero at the start. PROPS_RemoveDot is empty in the shipped
// build (0x3de83c), so the word is never reduced there, and the loop runs n times.
void Character::_RemoveDots(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                            void* userData) {
    Character* self = static_cast<Character*>(userData);
    int n = static_cast<int>(self->CharProperties::unk_e30);
    if (ArgHasTag(args, 0, 3)) {
        const int value = static_cast<int>(args[0].getNumber());
        if (value >= 0) {
            n = value;
        }
    }
    int element = -1;
    if (ArgCount(args) > 1 && ArgHasTag(args, 1, 3)) {
        const int value = static_cast<int>(args[1].getNumber());
        if (value != -2) {
            element = value;
        }
    }
    if (n > 0 && self->CharProperties::unk_e30 != 0) {
        int calls = 0;
        do {
            ++calls;
            self->CharProperties::PROPS_RemoveDot(element);
        } while (calls != n && self->CharProperties::unk_e30 != 0);
    }
}

// 0x3b7dbc _ZN9Character14_DBG_DumpPropsERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_DBG_DumpProps(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The path is getString(args[0]) when args[0] is a string (tag 4), and "Lua Dump" otherwise. Then
// CharProperties::DBG_PROPS_DumpToFile(path, true) on the CharProperties base (0x3de840). That method is empty in the
// shipped build.
void Character::_DBG_DumpProps(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                               void* userData) {
    const Character* self = static_cast<const Character*>(userData);
    const char* path = "Lua Dump";
    if (ArgHasTag(args, 0, 4)) {
        path = args[0].getString();
    }
    self->CharProperties::DBG_PROPS_DumpToFile(path, true);
}

// 0x3b7e40 _ZN9Character5_KillERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_Kill(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The killer is null when there is no argument or args[0] is not userdata (tag 7); otherwise it is getUserData(args[0]),
// which is a GameObject (ObjectBase derives from sfc::script::lua::UserData). Then v2Controller::Cmd_Kill(killer, false)
// runs on the controller at v2Controllable::m_controller (+0x378, 0x40570c). The listing's int result is dropped.
void Character::_Kill(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* userData) {
    Character* self = static_cast<Character*>(userData);
    GameObject* killer = nullptr;
    if (ArgHasTag(args, 0, 7)) {
        killer = static_cast<GameObject*>(args[0].getUserData());
    }
    self->v2Controllable::m_controller->Cmd_Kill(killer, false);
}

// 0x3b7eac _ZN9Character8_SetPropERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_SetProp(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs an argument count above 1 and args[0] a number. id = getUInteger(args[0]), and nothing happens when id > 0xDF
// (223). args[1] must be a number, and value = (int)getNumber(args[1]). When the argument count is above 2 and args[2] is
// a light userdata (tag 2), sheet = getPointer(args[2]): PROPS_SetToSheet(id, value, sheet) runs when the sheet is not
// null (0x3e0614), and nothing runs when it is null. Otherwise PROPS_Set(id, value) runs (0x3e07a0). The listing's
// discarded first getUInteger(args[0]) is a read of a number and is not repeated here.
void Character::_SetProp(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                         void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgCount(args) <= 1 || !ArgHasTag(args, 0, 3)) {
        return;
    }
    const unsigned int id = args[0].getUInteger();
    if (id > 0xDF) {
        return;
    }
    if (!ArgHasTag(args, 1, 3)) {
        return;
    }
    const int value = static_cast<int>(args[1].getNumber());
    if (ArgCount(args) > 2 && ArgHasTag(args, 2, 2)) {
        void* sheet = args[2].getPointer();
        if (sheet != nullptr) {
            self->CharProperties::PROPS_SetToSheet(static_cast<int>(id), value,
                                                   static_cast<Structs::CharacterProperties*>(sheet));
        }
        return;
    }
    self->CharProperties::PROPS_Set(static_cast<int>(id), value);
}

// 0x3b8098 _ZN9Character9_AddAggroERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With more than one argument, args[0] a light userdata (tag 2) or userdata (tag 7), and args[1] a number:
// CharAI::AI_AddAggro(&self CharAI at +0x3c8, getUserData(args[0]), getNumber(args[1])) runs (0x3d7c68). When that result
// is greater than 0.0, the original loads DebugSwitches and reads 'isTracingThreatChange'; the read's result is dropped.
// Other cases do nothing.
void Character::_AddAggro(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                          void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgCount(args) < 2 || !(ArgHasTag(args, 0, kTagLightUserdata) || ArgHasTag(args, 0, kTagUserdata)) ||
        !ArgHasTag(args, 1, kTagNumber)) {
        return;
    }
    auto* target = static_cast<Character*>(args[0].getUserData());
    if (self->AI_AddAggro(target, args[1].getNumber()) > 0.0f) {
        DebugSwitches::s_inst.load();
        (void)DebugSwitches::s_inst.GetSwitch("isTracingThreatChange");
    }
}

// 0x3b82e4 _ZN9Character11_ClearPropsERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With at least one argument: a light userdata (tag 2) with a non-null pointer resets the sheet to that
// pointer (PROPS_ResetSheet, 0x3def84) and then recalculates (RecalcProperties(true), 0x3e0810). A null light userdata
// does nothing. A boolean argument that is true calls PROPS_ResetSheet(nullptr) without the recalculation.
void Character::_ClearProps(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                            void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgCount(args) == 0) {
        return;
    }
    if (ArgHasTag(args, 0, kTagLightUserdata)) {
        auto* sheet = static_cast<Structs::CharacterProperties*>(args[0].getPointer());
        if (sheet != nullptr) {
            self->PROPS_ResetSheet(sheet);
            self->RecalcProperties(true);
        }
        return;
    }
    if (ArgHasTag(args, 0, kTagBoolean) && args[0].getBool()) {
        self->PROPS_ResetSheet(nullptr);
    }
}

// 0x3b842c _ZN9Character11_RemoveBuffERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. args[0] a number with id = getUInteger(args[0]) below Arrays::ClassTable::size. With one argument,
// PROPS_DelBuff(id, nullptr) runs (0x3e101c). With two or more arguments and args[1] a light userdata (tag 2),
// PROPS_DelBuff(id, getPointer(args[1])) runs. Other cases do nothing.
void Character::_RemoveBuff(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                            void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    const unsigned int id = args[0].getUInteger();
    if (id >= Arrays::ClassTable::size) {
        return;
    }
    const int classId = static_cast<int>(id);
    if (ArgCount(args) == 1) {
        self->PROPS_DelBuff(classId, nullptr);
    } else if (ArgHasTag(args, 1, kTagLightUserdata)) {
        self->PROPS_DelBuff(classId, static_cast<Structs::CharacterProperties*>(args[1].getPointer()));
    }
}

// 0x3b856c _ZN9Character18_GetSkillIDFromOIDERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Needs one argument. For a non-number args[0] the binding returns without a result when
// Arrays::SkillTable::size <= (unsigned) getNumber(args[0]). Otherwise oid = (unsigned) getNumber(args[0]) and
// pushInteger(ret, GetSkillIDFromOID((int) oid)) runs (0x3bc62c). A number args[0] has no range check, as in the listing.
void Character::_GetSkillIDFromOID(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                   void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgCount(args) == 0) {
        return;
    }
    if (!ArgHasTag(args, 0, kTagNumber) && Arrays::SkillTable::size <= FloatToUInt32(args[0].getNumber())) {
        return;
    }
    const unsigned int oid = FloatToUInt32(args[0].getNumber());
    ret.pushInteger(self->GetSkillIDFromOID(static_cast<int>(oid)));
}

// 0x3b8648 _ZN9Character11_ClearAggroERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With at least one argument and args[0] a light userdata (tag 2) or userdata (tag 7):
// CharAI::AI_ClearAggro(&self CharAI at +0x3c8, getUserData(args[0])) runs (0x3d6d68). Otherwise nothing.
void Character::_ClearAggro(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                            void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, kTagLightUserdata) || ArgHasTag(args, 0, kTagUserdata)) {
        self->AI_ClearAggro(static_cast<Character*>(args[0].getUserData()));
    }
}

// 0x3b86a8 _ZN9Character11_CreateBuffERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed from the Hex-Rays listing (the optional-argument chain is decoded from it, not re-checked in the
// assembly). args[0] must be a number with getUInteger(args[0]) below Arrays::ClassTable::size; classId = (int)
// getNumber(args[0]). Then:
//   durationMs (args[1]): a number gives getUInteger; any other tag or no argument gives 0.
//   maxStacks (args[2]): missing or nil gives 1; a boolean gives !getBool; another tag gives (int) getNumber.
//   level (args[3]): a number gives getUInteger; otherwise 0.
//   fxId (args[4]): missing or nil gives -1; a number, or a value whose getUInteger is below
//     Arrays::AnimatedEffectTable::size, gives (int) getNumber; otherwise -1.
//   name (args[5]): a string gives getString; otherwise ''. Only read when there are more than five arguments.
// PROPS_AddBuff(classId, durationMs, maxStacks, level, fxId, name) runs (0x3e232c) on the CharProperties base (+0x560),
// and pushPointer(ret, buff) runs when the result is non-null.
void Character::_CreateBuff(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData) {
    auto* self = static_cast<Character*>(userData);
    const std::size_t count = ArgCount(args);
    if (count == 0 || !ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    if (args[0].getUInteger() >= Arrays::ClassTable::size) {
        return;
    }
    const int classId = FloatToInt32(args[0].getNumber());

    unsigned int durationMs = 0;
    if (ArgHasTag(args, 1, kTagNumber)) {
        durationMs = args[1].getUInteger();
    }

    int maxStacks = 1;
    if (count > 2 && args[2].m_type == kTagBoolean) {
        maxStacks = args[2].getBool() ? 0 : 1;
    } else if (count > 2 && args[2].m_type != kTagNil) {
        maxStacks = FloatToInt32(args[2].getNumber());
    }

    unsigned int level = 0;
    if (ArgHasTag(args, 3, kTagNumber)) {
        level = args[3].getUInteger();
    }

    int fxId = -1;
    if (count > 4 && args[4].m_type != kTagNil &&
        (args[4].m_type == kTagNumber || args[4].getUInteger() < Arrays::AnimatedEffectTable::size)) {
        fxId = FloatToInt32(args[4].getNumber());
    }

    const char* name = "";
    if (count > 5 && args[5].m_type == kTagString) {
        name = args[5].getString();
    }

    if (auto* buff = self->PROPS_AddBuff(classId, durationMs, maxStacks, level, fxId, name)) {
        ret.pushPointer(buff);
    }
}

// 0x3b8bd8 _ZN9Character8_DoSkillERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With args[0] a number: skill = getUInteger(args[0]), and when skill is below the count of the skill list
// (GetCharSkillList(), the word at +4 of the Structs::SkillList row), CharAI::AI_UseSkill(&self CharAI at +0x3c8,
// (unsigned) getNumber(args[0])) runs (0x3d8868). Otherwise nothing.
void Character::_DoSkill(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                         void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    if (args[0].getUInteger() < CharSkillListCount(self)) {
        self->AI_UseSkill(FloatToUInt32(args[0].getNumber()));
    }
}

// 0x3b8cb8 _ZN9Character11_BeginSkillERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. The same argument test as _DoSkill: with args[0] a number below the skill list count, then
// CharAI::AI_BeginSkill(&self CharAI at +0x3c8, (unsigned) getNumber(args[0])) runs (0x3d86bc). The listing types the
// value as a Character pointer, but AI_BeginSkill takes the skill index as unsigned int.
void Character::_BeginSkill(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                            void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    if (args[0].getUInteger() < CharSkillListCount(self)) {
        self->AI_BeginSkill(FloatToUInt32(args[0].getNumber()));
    }
}

// 0x3b8d98 _ZN9Character11_WarpBehindERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed (checked in the assembly, 0x3b8d98). With args[0] a light userdata (tag 2) or userdata (tag 7),
// target = getUserData(args[0]). When target is non-null:
//   look = GameObject::GetLookAtVec(target), then dir = -look, normalized in place (Point3D::normalize).
//   offset = dir * 100.0f on each component.
//   pos = GameObject::GetTargetPosition(target) + offset (three float additions).
//   v2Controller::Cmd_WarpTo(pos) runs on the controller at self +0x378 (v2Controllable::m_controller).
void Character::_WarpBehind(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                            void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagLightUserdata) && !ArgHasTag(args, 0, kTagUserdata)) {
        return;
    }
    auto* target = static_cast<GameObject*>(args[0].getUserData());
    if (target == nullptr) {
        return;
    }
    Point3D<float> look{};
    target->GetLookAtVec(look);
    Point3D<float> dir{-look.X, -look.Y, -look.Z};
    dir.normalize();
    const Point3D<float> offset{dir.X * 100.0f, dir.Y * 100.0f, dir.Z * 100.0f};
    const Point3D<float>& base = target->GetTargetPosition();
    const Point3D<float> pos{base.X + offset.X, base.Y + offset.Y, base.Z + offset.Z};
    self->v2Controllable::m_controller->Cmd_WarpTo(pos);
}
