// Batch g1-game-character-Character-ee9946-13 (Character, part 14 of 20): twenty Lua bindings of Character.
// Declarations are in dh2/Character.hpp, which this batch does not change. Each binding has the static signature
// (const Arguments& args, ReturnValues& ret, void* userData), and userData is the Character. The Hex-Rays listings name
// the first pointer `this` (it is the argument list: Arguments +4 holds the Value vector), the second `a2` (the
// ReturnValues that the push calls take) and the third `a3` (the Character: the controller is read at +0x378 from it).
//
// Redo pass (r2a-game-character-Character-ee9946-8): _GetProp, _Attack, _SkillCombatRoll, _SetProjectileTarget, _PlayAnim
// and _ApplyPropClass are reconstructed in place, and _SetSkillCooldownTimerId is PARTIAL (its comment says why). The
// Lua argument helpers are in dh2/global/character_lua_bindings.hpp. _SpawnSkillProjectile moved to
// game-character/src/r2a-game-character-Character-ee9946-8.cpp: it needs w7_arrays_00.hpp, which cannot be included with
// w7_arrays_02.hpp (the _PlayAnim table) in one translation unit. The bindings not named here keep the status in their own
// comments.
//
// Lua type tags, Value +4 (vendor-lua LUA_T*): 0 nil, 1 boolean, 2 light userdata, 3 number, 4 string, 7 userdata.
// Argument i sits at byte offset 112 * i of the Arguments vector (32-bit stride; the listing's +116 word is args[1]).
//
// Layout facts used (32-bit offsets, Character-relative; all declared in the owner headers except where noted):
//   +0x160 GameObject m_position              +0x378 v2Controllable m_controller
//   +0x37c ItemInventory (base)               +0x3c8 CharAI (base)
//   +0x408 CharAI m_target (CharAI +0x40)     private in CharAI.hpp (layout request)
//   +0x47c CharAI m_skillScripts (+0xb4)      private in CharAI.hpp (layout request), vector<CharAISkillScript*>
//   +0x488 CharAI m_spellScripts (+0xc0)      private in CharAI.hpp (layout request), vector<CharAISkillScript*>
//   +0x4fc CharStateMachine (base)            +0x560 CharProperties (base)
//   +0xff4 CharProperties m_props (+0xa94)    CharProperties::_GetProperty is private (layout request)
//
// No test: every body depends on the Lua accessors above. The arithmetic that the bindings perform on engine values
// (the flee point, the head-to offset, the projectile placement) is written out in the comments of this file.

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <limits>

#include "core-platform/memory.hpp"  // before Character.hpp, which renames MemoryHintState while it includes net-transport
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/global/Vec3f_K.hpp"
#include "dh2/global/character_lua_bindings.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"   // Structs::SkillList, Structs::FaeryList, Structs::Faery
#include "pydata-accessors/w7_arrays27.hpp"       // Arrays::ClassTable
#include "pydata-accessors/w7_arrays_02.hpp"      // Arrays::AnimDict, Arrays::AnimTable (not together with w7_arrays_00.hpp)
#include "pydata-accessors/w7_structs_5.hpp"      // Structs::AnimTpl, the Arrays::AnimTable element

namespace {

// Lua tags of Value::m_type (vendor-lua LUA_T*).
constexpr int kTagNil = 0;
constexpr int kTagBoolean = 1;
constexpr int kTagLightUserdata = 2;
constexpr int kTagNumber = 3;
constexpr int kTagUserdata = 7;

// Number of values in the argument list (Arguments::m_values holds one Value per argument).
std::size_t ArgCount(const sfc::script::lua::Arguments& args) { return args.m_values->size(); }

// True when argument index exists and its tag is tag.
bool ArgHasTag(const sfc::script::lua::Arguments& args, std::size_t index, int tag) {
    return ArgCount(args) > index && args[static_cast<unsigned int>(index)].m_type == tag;
}

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

// Entry count of the character's faery list: the word at +4 of GetCharFaeryList() (Structs::FaeryList::m_w1).
std::uint32_t CharFaeryListCount(const Character* self) {
    return static_cast<const Structs::FaeryList*>(self->GetCharFaeryList())->ListSize;
}

}  // namespace

// 0x3b8ed8 _ZN9Character7_LookAtERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With at least one argument and args[0] a light userdata (tag 2) or userdata (tag 7):
// v2Controller::Cmd_LookAt(GameObject*) runs on the controller at self +0x378 with getUserData(args[0]). Other cases do
// nothing.
void Character::_LookAt(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                        void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagLightUserdata) && !ArgHasTag(args, 0, kTagUserdata)) {
        return;
    }
    self->v2Controllable::m_controller->Cmd_LookAt(static_cast<GameObject*>(args[0].getUserData()));
}

// 0x3b8f38 _ZN9Character10_SetTargetERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Same argument test as _LookAt. CharAI::AI_SetTarget(getUserData(args[0]), false) runs on the CharAI base
// (self +0x3c8; AI_SetTarget(GameObject*, bool) at 0x3d6890). The force flag is 0.
void Character::_SetTarget(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                           void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagLightUserdata) && !ArgHasTag(args, 0, kTagUserdata)) {
        return;
    }
    self->AI_SetTarget(static_cast<GameObject*>(args[0].getUserData()), false);
}

// 0x3b8f9c _ZN9Character20_GetCurrentSkillInfoERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Needs at least one argument. A non-number args[0] returns without a result when the skill list count is
// <= (unsigned) getNumber(args[0]). Then skill = (int) getNumber(args[0]), GetCharSkill(skill) runs with its result
// discarded (it asserts on an index outside the list), and pushInteger(ret, SG_GetSkillLevel(skill)) runs (0x3bbed0).
// A number args[0] has no range check, as in the listing.
void Character::_GetCurrentSkillInfo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                     void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgCount(args) == 0) {
        return;
    }
    if (!ArgHasTag(args, 0, kTagNumber) && CharSkillListCount(self) <= FloatToUInt32(args[0].getNumber())) {
        return;
    }
    const int skill = FloatToInt32(args[0].getNumber());
    (void)self->GetCharSkill(skill);
    ret.pushInteger(self->SG_GetSkillLevel(static_cast<unsigned int>(skill)));
}

// 0x3b9084 _ZN9Character10_SetMasterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Same argument test as _LookAt. CharAI::AI_SetMaster(getUserData(args[0])) runs on the CharAI base
// (self +0x3c8; AI_SetMaster(Character*) at 0x3d4d80).
void Character::_SetMaster(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                           void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagLightUserdata) && !ArgHasTag(args, 0, kTagUserdata)) {
        return;
    }
    self->AI_SetMaster(static_cast<Character*>(args[0].getUserData()));
}

// 0x3b90e4 _ZN9Character24_SetSpellCooldownTimerIdERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With no argument nothing happens. The timer id comes from args[0]: a number gives getUInteger(args[0]),
// nil gives -1, and any other tag returns without a write. Then the +0x18 word (CharAISkillScript::m_cooldownTimerId) of
// each CharAI::m_spellScripts entry (self +0x488) gets the id, for the entries below the count of GetCharFaeryList().
// Entries that are null are skipped. The listing has no range check on the vector; the port stops at the end of
// m_spellScripts, so it never reads past the vector (the original would, when the faery list is longer).
void Character::_SetSpellCooldownTimerId(const sfc::script::lua::Arguments& args,
                                         [[maybe_unused]] sfc::script::lua::ReturnValues& ret, void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgCount(args) == 0) {
        return;
    }
    int timerId = -1;
    if (ArgHasTag(args, 0, kTagNumber)) {
        timerId = static_cast<int>(args[0].getUInteger());
    } else if (args[0].m_type != kTagNil) {
        return;
    }
    const std::size_t count = std::min<std::size_t>(CharFaeryListCount(self), self->m_spellScripts.size());
    for (std::size_t i = 0; i < count; ++i) {
        if (CharAISkillScript* script = self->m_spellScripts[i]) {
            script->m_cooldownTimerId = timerId;
        }
    }
}

// 0x3b91a0 _ZN9Character5_FleeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed (checked in the assembly, 0x3b91a0). With args[0] a light userdata (tag 2) or userdata (tag 7), the
// getUserData result is not used, so only the tag gates the body. When CharAI m_target (self +0x408) is non-null, the
// point is reflected through the target:
//   d = GetTargetPosition(self) - GetTargetPosition(m_target)   (component-wise)
//   pos = GetTargetPosition(self) + d                           (component-wise)
//   v2Controller::Cmd_MoveTo(const Point3D&) runs on the controller at self +0x378 with pos.
void Character::_Flee(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                      void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagLightUserdata) && !ArgHasTag(args, 0, kTagUserdata)) {
        return;
    }
    GameObject* target = self->CharAI::m_target;
    if (target == nullptr) {
        return;
    }
    const Point3D<float>& selfPos = self->GameObject::GetTargetPosition();
    const Point3D<float>& targetPos = target->GetTargetPosition();
    const float dx = selfPos.X - targetPos.X;
    const float dy = selfPos.Y - targetPos.Y;
    const float dz = selfPos.Z - targetPos.Z;
    const Point3D<float> pos{dx + selfPos.X, dy + selfPos.Y, dz + selfPos.Z};
    self->v2Controllable::m_controller->Cmd_MoveTo(pos);
}

// 0x3b92a4 _ZN9Character16_SpellCombatRollERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed (checked in the assembly, 0x3b92a4). The faery id is SG_GetCurrentFaerieId(-1), read first and always.
// With args[0] a light userdata (tag 2) or userdata (tag 7), and target = getUserData(args[0]) non-null:
//   victim = target->GetHandle() resolved to a Character (ObjectHandle::operator Character*).
//   If victim is non-null: the spell element is the word at +0x08 of the faery row (Structs::Faery::m_w2) from
//     GetCharFaery(faery). F_SpellAttack(result, self, victim, element, 0), F_ApplyResult(result, self, victim, false),
//     and pushInteger(ret, result.m_damage).
//   If victim is null: when target->GetInteractionType(self) (vtable +0x90) is 8, target->Interact(self) (vtable +0x98)
//     runs and pushBoolean(ret, false). Otherwise nothing is pushed.
// The listing leaves the AttackResult uninitialised until the roll writes it; it is value-initialised here.
void Character::_SpellCombatRoll(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                 void* userData) {
    auto* self = static_cast<Character*>(userData);
    const int faeryId = self->SG_GetCurrentFaerieId(-1);
    if (!ArgHasTag(args, 0, kTagLightUserdata) && !ArgHasTag(args, 0, kTagUserdata)) {
        return;
    }
    GameObject* target = static_cast<GameObject*>(args[0].getUserData());
    if (target == nullptr) {
        return;
    }
    ObjectHandle handle = target->GetHandle();
    Character* victim = handle;
    if (victim != nullptr) {
        const auto* faery = static_cast<const Structs::Faery*>(self->GetCharFaery(faeryId));
        AttackResult result{};
        self->F_SpellAttack(result, self, victim, faery->Elemental, 0);
        Character::F_ApplyResult(result, self, victim, false);
        ret.pushInteger(result.m_damage);
        return;
    }
    if (target->GetInteractionType(self) == 8) {
        target->Interact(self);
        ret.pushBoolean(false);
    }
}

// 0x3b93cc _ZN9Character9_EndSkillERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. With args[0] a number: skill = getUInteger(args[0]). When skill is below the count word at +4 of
// GetCharSkillList(), CharAI::AI_EndSkill((unsigned) getNumber(args[0])) runs on the CharAI base (self +0x3c8, 0x3d8474).
// Other cases do nothing.
void Character::_EndSkill(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                          void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    if (args[0].getUInteger() < CharSkillListCount(self)) {
        self->AI_EndSkill(FloatToUInt32(args[0].getNumber()));
    }
}

// 0x3b94ac _ZN9Character10_StopSkillERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Two forms, chosen by the tag of args[0]:
//   number: CharAI::AI_EndSkill((unsigned) getNumber(args[0])) with no range check.
//   other (including nil): idx = (unsigned) getNumber(args[0]). When the skill list count is greater than idx,
//     AI_EndSkill((unsigned) getNumber(args[0])) runs. Otherwise nothing.
// With no argument nothing happens. Compare _EndSkill, which tests the index with getUInteger instead.
void Character::_StopSkill(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                           void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (ArgCount(args) == 0) {
        return;
    }
    if (!ArgHasTag(args, 0, kTagNumber) && CharSkillListCount(self) <= FloatToUInt32(args[0].getNumber())) {
        return;
    }
    self->AI_EndSkill(FloatToUInt32(args[0].getNumber()));
}

// 0x3b9580 _ZN9Character13_SetStunStateERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Needs args[0] a number: duration = (unsigned) getNumber(args[0]). flag = getBool(args[1]) when there
// are at least two arguments and args[1] is a boolean, otherwise true. Then CharStateMachine::SM_SetStunState(duration,
// flag, nullptr, false) runs on the CharStateMachine base (self +0x4fc, 0x3c5ffc). Other cases do nothing.
void Character::_SetStunState(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                              void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    bool flag = true;
    if (ArgHasTag(args, 1, kTagBoolean)) {
        flag = args[1].getBool();
    }
    self->SM_SetStunState(FloatToUInt32(args[0].getNumber()), flag, nullptr, false);
}

// 0x3b96b0 _ZN9Character14_SetScareStateERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Reconstructed. Same shape as _SetStunState: args[0] a number gives the duration, args[1] a boolean gives the flag
// (default true), and CharStateMachine::SM_SetScareState(duration, flag, nullptr, false) runs on the CharStateMachine
// base (self +0x4fc, 0x3c6144).
void Character::_SetScareState(const sfc::script::lua::Arguments& args, [[maybe_unused]] sfc::script::lua::ReturnValues& ret,
                               void* userData) {
    auto* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, kTagNumber)) {
        return;
    }
    bool flag = true;
    if (ArgHasTag(args, 1, kTagBoolean)) {
        flag = args[1].getBool();
    }
    self->SM_SetScareState(FloatToUInt32(args[0].getNumber()), flag, nullptr, false);
}

// 0x3b97e0 _ZN9Character24_SetSkillCooldownTimerIdERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked in the assembly (0x3b97e0). Needs more than one argument. When args[0] is not a number, the skill index
// (getNumber, truncated to unsigned) must be below the count word (+4) of GetCharSkillList(), or the binding returns.
// args[1] must be a number or nil, or it returns. slot = (int) getNumber(args[0]) indexes CharAI::m_skillScripts (self
// +0x47c). When that script is non-null, its cooldown timer id (CharAISkillScript +0x18, m_cooldownTimerId) becomes
// getUInteger(args[1]) for a number, and -1 for nil.
// For a slot outside m_skillScripts the original reads past the end of the vector (undefined); this port writes nothing for such a slot.
void Character::_SetSkillCooldownTimerId(const sfc::script::lua::Arguments& args,
                                         sfc::script::lua::ReturnValues& /*ret*/, void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (LuaArgCount(args) <= 1) {
        return;
    }
    if (!LuaArgHasTag(args, 0, kLuaTagNumber)) {
        const auto* list = static_cast<const Structs::SkillList*>(self->GetCharSkillList());
        if (list->ListSize <= LuaFloatToUInt32(args[0].getNumber())) {
            return;
        }
    }
    if (!LuaArgHasTag(args, 1, kLuaTagNumber) && !LuaArgHasTag(args, 1, kLuaTagNil)) {
        return;
    }
    const std::int32_t slot = LuaFloatToInt32(args[0].getNumber());
    const auto& scripts = self->CharAI::m_skillScripts;
    if (slot < 0 || static_cast<std::size_t>(slot) >= scripts.size()) {
        return;
    }
    CharAISkillScript* script = scripts[static_cast<std::size_t>(slot)];
    if (script == nullptr) {
        return;
    }
    script->m_cooldownTimerId = args[1].m_type != kLuaTagNil ? static_cast<int>(args[1].getUInteger()) : -1;
}


// 0x3b9d8c _ZN9Character8_GetPropERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked in the assembly (0x3b9d8c). Needs args[0] a number, with id = getUInteger(args[0]) at most 0xDF. Then by the tag of
// args[1] (absent counts as none):
//   light userdata (tag 2): sheet = getPointer(args[1]). When it is non-null, pushInteger(PROPS_GetFromSheet(id, sheet)).
//     A null sheet pushes nothing.
//   boolean (tag 1): sheet = CharProperties::s_temp when the boolean is true, else m_props (+0xff4).
//     pushInteger(_GetProperty(sheet, id)).
//   any other case: sheet = m_props; pushInteger(_GetProperty(sheet, id)).
void Character::_GetProp(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (!LuaArgHasTag(args, 0, kLuaTagNumber)) {
        return;
    }
    const unsigned int id = args[0].getUInteger();
    if (id > 0xDFu) {
        return;
    }
    const int propId = static_cast<int>(id);
    if (LuaArgHasTag(args, 1, kLuaTagLightUserData)) {
        void* sheet = args[1].getPointer();
        if (sheet != nullptr) {
            ret.pushInteger(self->CharProperties::PROPS_GetFromSheet(propId, static_cast<Structs::CharacterProperties*>(sheet)));
        }
        return;
    }
    if (LuaArgHasTag(args, 1, kLuaTagBoolean)) {
        const Structs::CharacterProperties& sheet =
            args[1].getBool() ? CharProperties::s_temp : self->CharProperties::m_props;
        ret.pushInteger(self->CharProperties::_GetProperty(sheet, propId));
        return;
    }
    ret.pushInteger(self->CharProperties::_GetProperty(self->CharProperties::m_props, propId));
}

// 0x3b9f44 _ZN9Character7_AttackERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked in the assembly (0x3b9f44). With arguments: when args[0] is a light userdata (tag 2) or userdata (tag 7), the
// controller (v2Controllable::m_controller, +0x378) runs Cmd_Attack(target), target = getUserData(args[0]). Other tags do
// nothing. With no arguments: when the CharAI target (CharAI +0x40, self +0x408) is set, Cmd_Attack(target) runs on the same
// controller.
void Character::_Attack(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (LuaArgCount(args) != 0) {
        if (LuaArgHasTag(args, 0, kLuaTagLightUserData) || LuaArgHasTag(args, 0, kLuaTagUserData)) {
            self->v2Controllable::m_controller->Cmd_Attack(static_cast<GameObject*>(args[0].getUserData()));
        }
        return;
    }
    GameObject* target = self->CharAI::m_target;
    if (target != nullptr) {
        self->v2Controllable::m_controller->Cmd_Attack(target);
    }
}

// 0x3b9fbc _ZN9Character16_SkillCombatRollERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked in the assembly (0x3b9fbc). Needs two arguments: args[0] a number, skill = getUInteger(args[0]), below the count
// word (+4) of GetCharSkillList(); args[1] a light userdata (tag 2) or userdata (tag 7), target = getUserData(args[1]).
// h = target->GetHandle(), c = (Character*) h.
//   c non-null: rec = GetCharSkill(skill), a Structs::Skill (+0x14 m_w5, +0x1c m_w7 = flags). When flags & 0x800000: if
//     HasMainHandWeapon(), r = F_SkillAttack(r, self, c, flags, rec.m_w5), F_ApplyResult(r, self, c, false) and
//     pushInteger(r.m_damage); then, independently, if HasOffHandWeapon(), the same with flags | 0x4000000.
//     Otherwise one F_SkillAttack with flags, then F_ApplyResult (suppress flag 0) and pushInteger.
//   c null: when target->GetInteractionType(self) == 8, target->Interact(self) runs and pushBoolean(false).
void Character::_SkillCombatRoll(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                 void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (LuaArgCount(args) <= 1 || !LuaArgHasTag(args, 0, kLuaTagNumber)) {
        return;
    }
    const unsigned int skill = args[0].getUInteger();
    const auto* list = static_cast<const Structs::SkillList*>(self->GetCharSkillList());
    if (skill >= list->ListSize) {
        return;
    }
    if (!LuaArgHasTag(args, 1, kLuaTagLightUserData) && !LuaArgHasTag(args, 1, kLuaTagUserData)) {
        return;
    }
    GameObject* target = static_cast<GameObject*>(args[1].getUserData());
    if (target == nullptr) {
        return;
    }
    ObjectHandle handle = target->GetHandle();
    Character* hit = handle.operator Character*();
    if (hit != nullptr) {
        const auto* record = static_cast<const Structs::Skill*>(self->GetCharSkill(static_cast<int>(skill)));
        const std::int32_t flags = record->Flags;
        Character::AttackResult result{};
        if ((flags & 0x800000) != 0) {
            if (self->ItemInventory::HasMainHandWeapon()) {
                self->F_SkillAttack(result, self, hit, flags, record->ElementalType);
                Character::F_ApplyResult(result, self, hit, false);
                ret.pushInteger(result.m_damage);
            }
            if (self->ItemInventory::HasOffHandWeapon()) {
                self->F_SkillAttack(result, self, hit, flags | 0x4000000, record->ElementalType);
                Character::F_ApplyResult(result, self, hit, false);
                ret.pushInteger(result.m_damage);
            }
        } else {
            self->F_SkillAttack(result, self, hit, flags, record->ElementalType);
            Character::F_ApplyResult(result, self, hit, false);  // flags & 0x800000 is 0 on this path
            ret.pushInteger(result.m_damage);
        }
    } else if (target->GetInteractionType(self) == 8) {
        target->Interact(self);
        ret.pushBoolean(false);
    }
}

// 0x3ba298 _ZN9Character20_SetProjectileTargetERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked against the listing's argument tests. Does not read the Character. Needs two arguments: args[0] a light userdata
// (tag 2), the projectile, and args[1] a userdata (tag 7), the target. When the projectile pointer is non-null, its m_target
// (Projectile +0x384) becomes getUserData(args[1]).
void Character::_SetProjectileTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                     void* /*userData*/) {
    if (LuaArgCount(args) <= 1 || !LuaArgHasTag(args, 0, kLuaTagLightUserData)) {
        return;
    }
    if (!LuaArgHasTag(args, 1, kLuaTagUserData)) {
        return;
    }
    Projectile* projectile = static_cast<Projectile*>(args[0].getPointer());
    if (projectile != nullptr) {
        projectile->m_target = static_cast<GameObject*>(args[1].getUserData());
    }
}

// 0x3ba388 _ZN9Character9_PlayAnimERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Checked in the assembly (0x3ba388). Needs args[0] a number, anim = getUInteger(args[0]) below Arrays::AnimDict::size
// (anim is not used otherwise). A function-local static counter SLOT takes the old value v, then SLOT = v + 1:
//   v in 0..3: state = rowA = v + 16, rowB = v + 21.
//   v = 4: SLOT is reset to 0, and state = rowA = 15, rowB = 20.
// Each row is a Structs::AnimTpl (Arrays::AnimTable, host stride). Its StepsSize (m_w2) must be 2 for rowA and 1 for rowB,
// else the assertions of Character_LuaCallbacks.cpp lines 1232 and 1233 are reported. The first step of each row (the
// AnimStep at the steps pointer m_w3, its m_w2 word) takes the value: with two or more arguments and args[1] a number,
// rowA takes (int) getNumber(args[0]) and rowB takes (int) getNumber(args[1]); otherwise rowA takes (int) getNumber(args[0])
// and rowB takes -1. CharStateMachine::SM_SetAnimState(state, loop, false) then runs on the CharStateMachine (+0x4fc), with
// loop = getBool(args[2]) when there are three or more arguments and args[2] is a boolean, else false.
void Character::_PlayAnim(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                          void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (LuaArgCount(args) == 0 || !LuaArgHasTag(args, 0, kLuaTagNumber)) {
        return;
    }
    const unsigned int anim = args[0].getUInteger();
    if (anim >= Arrays::AnimDict::size) {
        return;
    }
    static int slot = 0;
    const int previous = slot;
    ++slot;
    int state = 15;
    int rowBIndex = 20;
    if (slot <= 4) {
        state = previous + 16;
        rowBIndex = previous + 21;
    } else {
        slot = 0;
    }
    const int rowAIndex = state;

    Structs::AnimTpl* const table = reinterpret_cast<Structs::AnimTpl*>(Arrays::AnimTable::members);
    Structs::AnimTpl& rowA = table[rowAIndex];
    Structs::AnimTpl& rowB = table[rowBIndex];
    if (rowA.StepsSize != 2u) {
        LuaReportAssert("Arrays::AnimTable::members[idOne].StepsSize == 2 && \"WTF! Someone messed up the format of the "
                            "data in animations.pyarray\"",
                            kLuaCallbacksSourceFile, 1232);
    }
    if (rowB.StepsSize != 1u) {
        LuaReportAssert("Arrays::AnimTable::members[idTwo].StepsSize == 1 && \"WTF! Someone messed up the format of the "
                            "data in animations.pyarray\"",
                            kLuaCallbacksSourceFile, 1233);
    }

    Structs::AnimStep* stepA = static_cast<Structs::AnimStep*>(rowA.Steps);
    Structs::AnimStep* stepB = static_cast<Structs::AnimStep*>(rowB.Steps);
    if (LuaArgCount(args) > 1 && LuaArgHasTag(args, 1, kLuaTagNumber)) {
        stepA->Anim = LuaFloatToInt32(args[0].getNumber());
        stepB->Anim = LuaFloatToInt32(args[1].getNumber());
    } else {
        stepA->Anim = LuaFloatToInt32(args[0].getNumber());
        stepB->Anim = -1;
    }

    bool loop = false;
    if (LuaArgCount(args) > 2 && LuaArgHasTag(args, 2, kLuaTagBoolean)) {
        loop = args[2].getBool();
    }
    self->CharStateMachine::SM_SetAnimState(state, loop, false);
}

// 0x3ba71c _ZN9Character7_HeadToERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// The same argument dispatch as _MoveTo (checked in the listing). One argument, a light userdata (tag 2) or userdata (tag 7): Cmd_MoveTo(target) on the
// controller at self +0x378, target = getUserData(args[0]) (the listing calls the MoveTo overload here, not HeadTo); one argument of any other tag
// does nothing. Two arguments, or none, do nothing. Three or more need a number in args 0, 1 or 2. The point is (getNumber(args[0]), getNumber(args[1]),
// getNumber(args[2])), or, when a fourth argument is a true boolean, the look-frame point LookFrameOffset(self m_position, look, Vec3f_K, t, f, u) with
// look = GameObject::GetLookAtVec(self). Then Cmd_HeadTo(point) runs on the controller.
void Character::_HeadTo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* userData) {
    Character* self = static_cast<Character*>(userData);
    const std::size_t count = LuaArgCount(args);
    if (count == 1) {
        if (!LuaArgHasTag(args, 0, kLuaTagLightUserData) && !LuaArgHasTag(args, 0, kLuaTagUserData)) {
            return;
        }
        GameObject* target = static_cast<GameObject*>(args[0].getUserData());
        self->v2Controllable::m_controller->Cmd_MoveTo(target);
        return;
    }
    if (count <= 2) {
        return;
    }
    if (!LuaArgHasTag(args, 0, kLuaTagNumber) && !LuaArgHasTag(args, 1, kLuaTagNumber) &&
        !LuaArgHasTag(args, 2, kLuaTagNumber)) {
        return;
    }
    Point3D<float> point{0.0f, 0.0f, 0.0f};
    if (count > 3 && LuaArgHasTag(args, 3, kLuaTagBoolean) && args[3].getBool()) {
        Point3D<float> look{0.0f, 0.0f, 0.0f};
        self->GameObject::GetLookAtVec(look);
        point = LookFrameOffset(self->GameObject::m_position, look, Vec3f_K, args[0].getNumber(), args[1].getNumber(),
                                args[2].getNumber());
    } else {
        point = Point3D<float>{args[0].getNumber(), args[1].getNumber(), args[2].getNumber()};
    }
    self->v2Controllable::m_controller->Cmd_HeadTo(point);
}

// 0x3babdc _ZN9Character15_ApplyPropClassERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Needs args[0] a number, classId = getUInteger(args[0]). Returns when classId is above Arrays::ClassTable::size (the
// listing's test is '>', so an id equal to the size passes). Then, by the tag of args[1]:
//   light userdata (tag 2): sheet = getPointer(args[1]). When it is non-null, PROPS_ApplyClassToSheet(classId, sheet) and
//     then RecalcProperties(true).
//   boolean (tag 1): PROPS_ApplyClass(classId, getBool(args[1])).
//   any other case (with or without a second argument): PROPS_ApplyClass((unsigned) getNumber(args[0]), false).
void Character::_ApplyPropClass(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (LuaArgCount(args) == 0 || !LuaArgHasTag(args, 0, kLuaTagNumber)) {
        return;
    }
    const unsigned int classId = args[0].getUInteger();
    if (classId > Arrays::ClassTable::size) {
        return;
    }
    if (LuaArgCount(args) > 1 && LuaArgHasTag(args, 1, kLuaTagLightUserData)) {
        void* sheet = args[1].getPointer();
        if (sheet != nullptr) {
            self->CharProperties::PROPS_ApplyClassToSheet(static_cast<int>(classId),
                                                          static_cast<Structs::CharacterProperties*>(sheet));
            self->CharProperties::RecalcProperties(true);
        }
        return;
    }
    if (LuaArgCount(args) > 1 && LuaArgHasTag(args, 1, kLuaTagBoolean)) {
        self->CharProperties::PROPS_ApplyClass(static_cast<int>(classId), args[1].getBool());
        return;
    }
    self->CharProperties::PROPS_ApplyClass(static_cast<int>(LuaFloatToUInt32(args[0].getNumber())), false);
}
