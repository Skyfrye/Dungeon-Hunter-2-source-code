// Test for the REDO pass of batch r2a-game-character-Character-ee9946-7: the Lua bindings of Character at 0x3b8098 ..
// 0x3b96b0 (AddAggro, ClearProps, RemoveBuff, GetSkillIDFromOID, ClearAggro, CreateBuff, DoSkill, BeginSkill,
// WarpBehind in game-character/src/g1-game-character-Character-ee9946-12.cpp; LookAt, SetTarget, GetCurrentSkillInfo,
// SetMaster, SetSpellCooldownTimerId, Flee, SpellCombatRoll, EndSkill, StopSkill, SetStunState, SetScareState in
// game-character/src/g1-game-character-Character-ee9946-13.cpp).
//
// The Character object is zero-filled and never constructed, and the sheets, skill and faery rows are zero-filled
// records with only the counted words set. Only non-virtual members are called on the Character and the GameObject
// targets, so no vtable is read. The victim path of _SpellCombatRoll is covered; its null-victim path calls the virtual
// GameObject::GetInteractionType and is not run here.
//
// The test defines the engine calls the bindings make: the Lua Value, Arguments and ReturnValues members, the CharAI,
// CharStateMachine, CharProperties and v2Controller calls, the Character queries, DebugSwitches, Point3D normalize, the
// ObjectHandle conversion and the Arrays table sizes. Each one records its arguments for the checks below.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

// ---- recorded calls ----
namespace {

struct Call {
    std::string what;
    double a = 0.0;
    double b = 0.0;
    double c = 0.0;
    const void* p = nullptr;
};
std::vector<Call> g_calls;
std::vector<int> g_pushedInts;
std::vector<bool> g_pushedBools;
std::vector<const void*> g_pushedPointers;

void Record(const char* what, double a = 0.0, double b = 0.0, double c = 0.0, const void* p = nullptr) {
    g_calls.push_back(Call{what, a, b, c, p});
}

int CountCalls(const char* what) {
    int n = 0;
    for (const Call& call : g_calls) {
        if (call.what == what) {
            ++n;
        }
    }
    return n;
}

const Call* FindCall(const char* what) {
    for (const Call& call : g_calls) {
        if (call.what == what) {
            return &call;
        }
    }
    return nullptr;
}

const Call* LastCall(const char* what) {
    for (auto it = g_calls.rbegin(); it != g_calls.rend(); ++it) {
        if (it->what == what) {
            return &*it;
        }
    }
    return nullptr;
}

void ResetRecords() {
    g_calls.clear();
    g_pushedInts.clear();
    g_pushedBools.clear();
    g_pushedPointers.clear();
}

// Rows the Character queries return: a skill list with three entries, a faery list with two entries.
alignas(16) unsigned char g_skillRowMem[sizeof(Structs::SkillList)];
alignas(16) unsigned char g_faeryListRowMem[sizeof(Structs::FaeryList)];
alignas(16) unsigned char g_faeryRowMem[2][sizeof(Structs::Faery)];
int g_currentFaery = 0;
int g_aggroReturn = 0;     // CharAI::AI_AddAggro result (float, 0 unless a test sets it)
bool g_buffResultSet = false;
void* g_buffResult = nullptr;
sfc::script::lua::Value* g_unused = nullptr;

Character* g_victim = nullptr;   // ObjectHandle::operator Character* result
// CharAISkillScript is built by the test, so its constructor and destructor are defined here.
}  // namespace

CharAISkillScript::CharAISkillScript(Character* character, const char* scriptName, unsigned int skillIndex)
    : m_character(character), m_scriptName(scriptName), m_skillIndex(skillIndex), m_cooldownTimerId(-1) {}
CharAISkillScript::~CharAISkillScript() {}

namespace {

// GameObject positions and look vectors, keyed by object address.
std::map<const GameObject*, Point3D<float>> g_positions;
std::map<const GameObject*, Point3D<float>> g_looks;

alignas(16) unsigned char g_charMem[sizeof(Character)];
alignas(16) unsigned char g_targetMem[sizeof(GameObject)];
alignas(16) unsigned char g_fakeController[16];

Character* Self() { return reinterpret_cast<Character*>(g_charMem); }
GameObject* Target() { return reinterpret_cast<GameObject*>(g_targetMem); }

// Fixed-size arithmetic check for the float results below.
bool Near(float a, float b) { return std::fabs(a - b) < 1e-3f; }

int g_failures = 0;
void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

}  // namespace

// ---- Lua layer (sfc::script::lua) ----

sfc::script::lua::Arguments::Arguments() : m_values(new std::vector<sfc::script::lua::Value>()) {}
sfc::script::lua::Arguments::~Arguments() { delete m_values; }
const sfc::script::lua::Value& sfc::script::lua::Arguments::operator[](unsigned int index) const {
    return m_values->at(index);
}

sfc::script::lua::Value::Value()
    : m_type(0), m_number(0.0f), m_stringEnd(nullptr), m_string(nullptr), m_wstringEnd(nullptr), m_wstring(nullptr),
      m_pointer(nullptr) {}
sfc::script::lua::Value::Value(const Value& other)
    : m_type(other.m_type), m_number(other.m_number), m_stringEnd(other.m_stringEnd), m_string(other.m_string),
      m_wstringEnd(other.m_wstringEnd), m_wstring(other.m_wstring), m_pointer(other.m_pointer) {}
sfc::script::lua::Value::~Value() {}
float sfc::script::lua::Value::getNumber() const { return m_number; }
bool sfc::script::lua::Value::getBool() const { return m_number != 0.0f; }
unsigned int sfc::script::lua::Value::getUInteger() const {
    if (!(m_number > 0.0f)) {
        return 0u;
    }
    return static_cast<unsigned int>(m_number);
}
void* sfc::script::lua::Value::getPointer() const { return m_pointer; }
sfc::script::lua::UserData* sfc::script::lua::Value::getUserData() const {
    return static_cast<sfc::script::lua::UserData*>(m_pointer);
}
const char* sfc::script::lua::Value::getString() const { return m_string; }

sfc::script::lua::ReturnValues::ReturnValues() {}
sfc::script::lua::ReturnValues::~ReturnValues() {}
void sfc::script::lua::ReturnValues::pushInteger(int value) { g_pushedInts.push_back(value); }
void sfc::script::lua::ReturnValues::pushBoolean(bool value) { g_pushedBools.push_back(value); }
void sfc::script::lua::ReturnValues::pushPointer(void* pointer) { g_pushedPointers.push_back(pointer); }

// ---- Arrays table sizes ----
std::uint32_t Arrays::ClassTable::size = 10;
std::uint32_t Arrays::AnimatedEffectTable::size = 10;
std::uint32_t Arrays::SkillTable::size = 32;

// ---- Character queries and calls ----

bool Character::HasMana(int cost) const {
    Record("HasMana", cost);
    return false;
}
const void* Character::GetCharSkillList() const { return g_skillRowMem; }
const void* Character::GetCharFaeryList() const { return g_faeryListRowMem; }
int Character::GetSkillIDFromOID(int oid) const {
    Record("GetSkillIDFromOID", oid);
    return oid * 10;
}
const void* Character::GetCharFaery(int faeryId) const {
    Record("GetCharFaery", faeryId);
    return g_faeryRowMem[faeryId];
}
const void* Character::GetCharSkill(int skill) const {
    Record("GetCharSkill", skill);
    return nullptr;
}
int Character::SG_GetSkillLevel(unsigned int skill) const {
    Record("SG_GetSkillLevel", skill);
    return static_cast<int>(skill) * 10 + 1;
}
int Character::SG_GetCurrentFaerieId(int faery) const {
    Record("SG_GetCurrentFaerieId", faery);
    return g_currentFaery;
}
void Character::F_SpellAttack(AttackResult& result, Character* attacker, Character* target, int a, int b) {
    Record("F_SpellAttack", a, b, 0.0, target);
    (void)attacker;
    result.m_damage = 42;
}
void Character::F_ApplyResult(const AttackResult& result, Character* attacker, Character* target, bool suppress) {
    Record("F_ApplyResult", result.m_damage, suppress ? 1.0 : 0.0, 0.0, target);
    (void)attacker;
}

// ---- CharAI (base at +0x3c8) ----
float CharAI::AI_AddAggro(Character* c, float aggro) {
    Record("AI_AddAggro", aggro, 0.0, 0.0, c);
    return static_cast<float>(g_aggroReturn);
}
void CharAI::AI_ClearAggro(Character* c) { Record("AI_ClearAggro", 0.0, 0.0, 0.0, c); }
bool CharAI::AI_UseSkill(unsigned int skill) {
    Record("AI_UseSkill", skill);
    return true;
}
bool CharAI::AI_BeginSkill(unsigned int skill) {
    Record("AI_BeginSkill", skill);
    return true;
}
void CharAI::AI_EndSkill(unsigned int skill) { Record("AI_EndSkill", skill); }
void CharAI::AI_SetTarget(GameObject* target, bool force) { Record("AI_SetTarget", force ? 1.0 : 0.0, 0.0, 0.0, target); }
void CharAI::AI_SetMaster(Character* master) { Record("AI_SetMaster", 0.0, 0.0, 0.0, master); }

// ---- CharStateMachine (base at +0x4fc) ----
int CharStateMachine::SM_SetStunState(unsigned int durationMs, bool flag, void* data, bool immediate) {
    Record("SM_SetStunState", durationMs, flag ? 1.0 : 0.0, immediate ? 1.0 : 0.0, data);
    return 0;
}
int CharStateMachine::SM_SetScareState(unsigned int durationMs, bool flag, void* data, bool immediate) {
    Record("SM_SetScareState", durationMs, flag ? 1.0 : 0.0, immediate ? 1.0 : 0.0, data);
    return 0;
}

// ---- CharProperties (base at +0x560) ----
void CharProperties::PROPS_ResetSheet(Structs::CharacterProperties* sheet) {
    Record("PROPS_ResetSheet", 0.0, 0.0, 0.0, sheet);
}
void CharProperties::RecalcProperties(bool reloadClass) { Record("RecalcProperties", reloadClass ? 1.0 : 0.0); }
void CharProperties::PROPS_DelBuff(int classId, Structs::CharacterProperties* inst) {
    Record("PROPS_DelBuff", classId, 0.0, 0.0, inst);
}
Structs::CharacterProperties* CharProperties::PROPS_AddBuff(int classId, unsigned int durationMs, int maxStacks,
                                                            unsigned int level, int fxId, const char* name) {
    Record("PROPS_AddBuff", classId, durationMs, maxStacks, name);
    Record("PROPS_AddBuff.level", level, fxId, 0.0);
    return static_cast<Structs::CharacterProperties*>(g_buffResult);
}
int CharProperties::PROPS_GetBonusDamage(bool offHand) const {
    Record("PROPS_GetBonusDamage", offHand ? 1.0 : 0.0);
    return 0;
}
int CharProperties::PROPS_GetBonusCritRating(bool offHand) const {
    Record("PROPS_GetBonusCritRating", offHand ? 1.0 : 0.0);
    return 0;
}
int CharProperties::PROPS_GetBonusAttackRating(bool offHand) const {
    Record("PROPS_GetBonusAttackRating", offHand ? 1.0 : 0.0);
    return 0;
}
void CharProperties::PROPS_RemoveDot(int element) { Record("PROPS_RemoveDot", element); }
void CharProperties::DBG_PROPS_DumpToFile(const char* path, bool flag) const {
    Record("DBG_PROPS_DumpToFile", flag ? 1.0 : 0.0, 0.0, 0.0, path);
}
void CharProperties::PROPS_Set(int propId, int value) { Record("PROPS_Set", propId, value); }
void CharProperties::PROPS_SetToSheet(int propId, int value, Structs::CharacterProperties* sheet) {
    Record("PROPS_SetToSheet", propId, value, 0.0, sheet);
}

// ---- v2Controller (controller at +0x378) ----
void v2Controller::Cmd_Kill(GameObject* killer, bool silent) { Record("Cmd_Kill", silent ? 1.0 : 0.0, 0.0, 0.0, killer); }
void v2Controller::Cmd_LookAt(GameObject* target) { Record("Cmd_LookAt", 0.0, 0.0, 0.0, target); }
void v2Controller::Cmd_WarpTo(const Point3D<float>& pos) {
    Record("Cmd_WarpTo", pos.X, pos.Y, pos.Z);
}
void v2Controller::Cmd_MoveTo(const Point3D<float>& pos) {
    Record("Cmd_MoveTo", pos.X, pos.Y, pos.Z);
}

// ---- GameObject, ObjectBase, ObjectHandle ----
const Point3D<float>& GameObject::GetTargetPosition() const { return g_positions[this]; }
void GameObject::GetLookAtVec(Point3D<float>& out) const { out = g_looks[this]; }
ObjectHandle ObjectBase::GetHandle() { return ObjectHandle(); }
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectHandle::operator Character*() { return g_victim; }

// Point3D<float>::normalize divides by the length, as the game-world definition does.
template <>
Point3D<float>& Point3D<float>::normalize() {
    const float length = std::sqrt(X * X + Y * Y + Z * Z);
    X /= length;
    Y /= length;
    Z /= length;
    return *this;
}

// ---- DebugSwitches ----
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() { Record("DebugSwitches.load"); }
bool DebugSwitches::GetSwitch(const std::string& name) {
    Record("DebugSwitches.GetSwitch", 0.0, 0.0, 0.0, name.c_str());
    return false;
}

// ---- other bindings of the two sources (not under test here) reference these; they only need to link ----
int gAssertLevel = 0;
std::uint32_t Arrays::AnimDict::size = 0;
// Arrays::AnimTable is declared in w7_arrays_02.hpp, which cannot share this translation unit with w7_arrays_00.hpp (both
// declare Arrays::AnimDict). Its one member the bindings read is defined here under its Itanium name.
extern std::uint8_t* g_animTableMembers __asm__("_ZN6Arrays9AnimTable7membersE");
std::uint8_t* g_animTableMembers = nullptr;
Structs::CharacterProperties::~CharacterProperties() {}
void Structs::CharacterProperties::finalize() {}
void Structs::CharacterProperties::read(IStreamBase*) {}
Structs::CharacterProperties CharProperties::s_temp;
int CharProperties::PROPS_GetFromSheet(int, Structs::CharacterProperties*) const { return 0; }
void CharProperties::PROPS_ApplyClassToSheet(int classId, Structs::CharacterProperties*) {
    Record("PROPS_ApplyClassToSheet", classId);
}
void CharProperties::PROPS_ApplyClass(int classId, bool useTemp) {
    Record("PROPS_ApplyClass", classId, useTemp ? 1.0 : 0.0);
}
int CharProperties::_GetProperty(const Structs::CharacterProperties&, int) const { return 0; }
int CharStateMachine::SM_SetAnimState(int anim, bool loop, bool flag) {
    Record("SM_SetAnimState", anim, loop ? 1.0 : 0.0, flag ? 1.0 : 0.0);
    return 0;
}
void Character::F_SkillAttack(AttackResult&, Character*, Character*, int, int) {}
bool ItemInventory::HasMainHandWeapon() const { return false; }
bool ItemInventory::HasOffHandWeapon() const { return false; }
void v2Controller::Cmd_Attack(GameObject* target) { Record("Cmd_Attack", 0.0, 0.0, 0.0, target); }

// ---- helpers that build Lua argument lists ----
namespace {

sfc::script::lua::Value Num(float v) {
    sfc::script::lua::Value x;
    x.m_type = 3;
    x.m_number = v;
    return x;
}
sfc::script::lua::Value Bool(bool b) {
    sfc::script::lua::Value x;
    x.m_type = 1;
    x.m_number = b ? 1.0f : 0.0f;
    return x;
}
sfc::script::lua::Value Nil() {
    sfc::script::lua::Value x;
    x.m_type = 0;
    return x;
}
sfc::script::lua::Value Light(void* p) {
    sfc::script::lua::Value x;
    x.m_type = 2;
    x.m_pointer = p;
    return x;
}
sfc::script::lua::Value User(void* p) {
    sfc::script::lua::Value x;
    x.m_type = 7;
    x.m_pointer = p;
    return x;
}
sfc::script::lua::Value Str(const char* s) {
    sfc::script::lua::Value x;
    x.m_type = 4;
    x.m_string = const_cast<char*>(s);
    return x;
}

// Builds an argument list in order.
struct Args {
    sfc::script::lua::Arguments args;
    Args& add(const sfc::script::lua::Value& v) {
        args.m_values->push_back(v);
        return *this;
    }
};

}  // namespace

// The bindings under test (defined in the two reconstructed sources).
namespace {
void Reset() {
    ResetRecords();
    std::memset(g_charMem, 0, sizeof(g_charMem));
    std::memset(g_targetMem, 0, sizeof(g_targetMem));
    std::memset(g_skillRowMem, 0, sizeof(g_skillRowMem));
    std::memset(g_faeryListRowMem, 0, sizeof(g_faeryListRowMem));
    std::memset(g_faeryRowMem, 0, sizeof(g_faeryRowMem));
    reinterpret_cast<Structs::SkillList*>(g_skillRowMem)->ListSize = 3;
    reinterpret_cast<Structs::FaeryList*>(g_faeryListRowMem)->ListSize = 2;
    reinterpret_cast<Structs::Faery*>(g_faeryRowMem[0])->Elemental = 0;
    reinterpret_cast<Structs::Faery*>(g_faeryRowMem[1])->Elemental = 0;
    g_currentFaery = 0;
    g_aggroReturn = 0;
    g_buffResult = nullptr;
    g_victim = nullptr;
    g_positions.clear();
    g_looks.clear();
    Self()->v2Controllable::m_controller = reinterpret_cast<v2Controller*>(g_fakeController);
    Self()->CharAI::m_target = nullptr;
    std::vector<CharAISkillScript*>().swap(Self()->m_spellScripts);
}

sfc::script::lua::ReturnValues g_ret;   // the ReturnValues the bindings push into

}  // namespace

int main() {
    // ---- _DoSkill, _BeginSkill, _EndSkill: index below the skill list count (3) ----
    Reset();
    {
        Args a;
        a.add(Num(2));
        Character::_DoSkill(a.args, g_ret, Self());
        Check(CountCalls("AI_UseSkill") == 1 && FindCall("AI_UseSkill")->a == 2, "DoSkill calls AI_UseSkill(2)");
    }
    Reset();
    {
        Args a;
        a.add(Num(3));
        Character::_DoSkill(a.args, g_ret, Self());
        Args s;
        s.add(Str("x"));
        Character::_DoSkill(s.args, g_ret, Self());
        Check(CountCalls("AI_UseSkill") == 0, "DoSkill ignores an index at the list count and a non-number");
    }
    Reset();
    {
        Args a;
        a.add(Num(1));
        Character::_BeginSkill(a.args, g_ret, Self());
        Character::_EndSkill(a.args, g_ret, Self());
        Check(CountCalls("AI_BeginSkill") == 1 && FindCall("AI_BeginSkill")->a == 1, "BeginSkill calls AI_BeginSkill(1)");
        Check(CountCalls("AI_EndSkill") == 1 && FindCall("AI_EndSkill")->a == 1, "EndSkill calls AI_EndSkill(1)");
    }

    // ---- _StopSkill: a number is not range checked; another tag is checked against the list count ----
    Reset();
    {
        Args a;
        a.add(Num(7));
        Character::_StopSkill(a.args, g_ret, Self());
        Args s;
        s.add(Nil());
        s.args.m_values->back().m_number = 5.0f;   // nil with a numeric payload: 3 <= 5, so nothing
        Character::_StopSkill(s.args, g_ret, Self());
        Args t;
        t.add(Str("x"));
        Character::_StopSkill(t.args, g_ret, Self());   // payload 0: 3 > 0, so AI_EndSkill(0)
        Check(CountCalls("AI_EndSkill") == 2, "StopSkill: number 7 and string payload 0 end a skill");
        Check(FindCall("AI_EndSkill")->a == 7, "StopSkill passes the number");
    }

    // ---- _GetCurrentSkillInfo: GetCharSkill runs, the level is pushed ----
    Reset();
    {
        Args a;
        a.add(Num(1));
        Character::_GetCurrentSkillInfo(a.args, g_ret, Self());
        Check(CountCalls("GetCharSkill") == 1, "GetCurrentSkillInfo calls GetCharSkill(1)");
        Check(g_pushedInts.size() == 1 && g_pushedInts[0] == 11, "GetCurrentSkillInfo pushes SG_GetSkillLevel(1) = 11");
    }

    // ---- _SetStunState and _SetScareState: duration, flag from a boolean second argument, default true ----
    Reset();
    {
        Args a;
        a.add(Num(5)).add(Bool(false));
        Character::_SetStunState(a.args, g_ret, Self());
        Args b;
        b.add(Num(5)).add(Num(0));
        Character::_SetStunState(b.args, g_ret, Self());
        Args c;
        c.add(Num(9)).add(Bool(false));
        Character::_SetScareState(c.args, g_ret, Self());
        Check(CountCalls("SM_SetStunState") == 2, "SetStunState is called twice");
        const Call* first = FindCall("SM_SetStunState");
        Check(first != nullptr && first->a == 5 && first->b == 0.0, "SetStunState(5, false)");
        Check(g_calls.size() >= 2 && g_calls[1].b == 1.0, "SetStunState with a number second argument uses flag true");
        Check(CountCalls("SM_SetScareState") == 1 && FindCall("SM_SetScareState")->b == 0.0, "SetScareState(9, false)");
    }

    // ---- _ClearProps: light userdata with a sheet recalculates; null does nothing; boolean true resets ----
    Reset();
    {
        int sheetStorage = 0;
        Args a;
        a.add(Light(&sheetStorage));
        Character::_ClearProps(a.args, g_ret, Self());
        Check(CountCalls("PROPS_ResetSheet") == 1 && FindCall("PROPS_ResetSheet")->p == &sheetStorage,
              "ClearProps resets the light sheet");
        Check(CountCalls("RecalcProperties") == 1 && FindCall("RecalcProperties")->a == 1.0, "ClearProps recalculates");
        Args n;
        n.add(Light(nullptr));
        Character::_ClearProps(n.args, g_ret, Self());
        Args t;
        t.add(Bool(true));
        Character::_ClearProps(t.args, g_ret, Self());
        Args f;
        f.add(Bool(false));
        Character::_ClearProps(f.args, g_ret, Self());
        Check(CountCalls("PROPS_ResetSheet") == 2 && LastCall("PROPS_ResetSheet")->p == nullptr,
              "ClearProps(true) resets with a null sheet; null light and false do nothing");
        Check(CountCalls("RecalcProperties") == 1, "ClearProps(true) does not recalculate");
    }

    // ---- _RemoveBuff: one argument removes with a null sheet; a light userdata second argument gives the sheet ----
    Reset();
    {
        int sheetStorage = 0;
        Args a;
        a.add(Num(2));
        Character::_RemoveBuff(a.args, g_ret, Self());
        Args b;
        b.add(Num(2)).add(Light(&sheetStorage));
        Character::_RemoveBuff(b.args, g_ret, Self());
        Args c;
        c.add(Num(10));   // at the ClassTable size: nothing
        Character::_RemoveBuff(c.args, g_ret, Self());
        Check(CountCalls("PROPS_DelBuff") == 2, "RemoveBuff removes twice and skips the out of range id");
        Check(FindCall("PROPS_DelBuff")->a == 2 && FindCall("PROPS_DelBuff")->p == nullptr, "RemoveBuff(2, nil)");
        Check(g_calls.back().p == &sheetStorage, "RemoveBuff(2, sheet) passes the sheet");
    }

    // ---- _GetSkillIDFromOID: the SkillTable size (32) is checked for a non-number ----
    Reset();
    {
        Args a;
        a.add(Num(5));
        Character::_GetSkillIDFromOID(a.args, g_ret, Self());
        Args b;
        b.add(Nil());
        b.args.m_values->back().m_number = 40.0f;   // 32 <= 40: no result
        Character::_GetSkillIDFromOID(b.args, g_ret, Self());
        Args c;
        c.add(Str("x"));
        c.args.m_values->back().m_number = 3.0f;    // 3 < 32: GetSkillIDFromOID(3)
        Character::_GetSkillIDFromOID(c.args, g_ret, Self());
        Check(g_pushedInts.size() == 2 && g_pushedInts[0] == 50 && g_pushedInts[1] == 30,
              "GetSkillIDFromOID pushes 50 and 30, and skips the out of range oid");
    }

    // ---- _AddAggro: the debug switch is read only when the aggro gain is positive ----
    Reset();
    {
        Args a;
        a.add(User(Target())).add(Num(5));
        g_aggroReturn = 0;
        Character::_AddAggro(a.args, g_ret, Self());
        Check(CountCalls("AI_AddAggro") == 1 && FindCall("AI_AddAggro")->a == 5.0 && FindCall("AI_AddAggro")->p == Target(),
              "AddAggro passes the target and the amount");
        Check(CountCalls("DebugSwitches.load") == 0, "AddAggro does not read the switch when the gain is zero");
        g_aggroReturn = 1;
        Character::_AddAggro(a.args, g_ret, Self());
        Check(CountCalls("DebugSwitches.load") == 1 && CountCalls("DebugSwitches.GetSwitch") == 1,
              "AddAggro reads the switch when the gain is positive");
        Args one;
        one.add(User(Target()));
        Character::_AddAggro(one.args, g_ret, Self());
        Check(CountCalls("AI_AddAggro") == 2, "AddAggro needs two arguments");
    }

    // ---- _ClearAggro, _LookAt, _SetTarget, _SetMaster: forwarding with a userdata or light userdata ----
    Reset();
    {
        Args a;
        a.add(User(Target()));
        Character::_ClearAggro(a.args, g_ret, Self());
        Character::_LookAt(a.args, g_ret, Self());
        Character::_SetTarget(a.args, g_ret, Self());
        Character::_SetMaster(a.args, g_ret, Self());
        Args n;
        n.add(Num(1));
        Character::_ClearAggro(n.args, g_ret, Self());
        Character::_SetMaster(n.args, g_ret, Self());
        Check(CountCalls("AI_ClearAggro") == 1 && FindCall("AI_ClearAggro")->p == Target(), "ClearAggro forwards the target");
        Check(CountCalls("Cmd_LookAt") == 1 && FindCall("Cmd_LookAt")->p == Target(), "LookAt forwards the target");
        Check(CountCalls("AI_SetTarget") == 1 && FindCall("AI_SetTarget")->a == 0.0, "SetTarget with force false");
        Check(CountCalls("AI_SetMaster") == 1 && FindCall("AI_SetMaster")->p == Target(), "SetMaster forwards the target");
    }

    // ---- _SetSpellCooldownTimerId: writes the spell scripts below the faery count (2) ----
    Reset();
    {
        CharAISkillScript s0(Self(), "s0", 0);
        CharAISkillScript s2(Self(), "s2", 2);
        Self()->m_spellScripts.push_back(&s0);
        Self()->m_spellScripts.push_back(nullptr);
        Self()->m_spellScripts.push_back(&s2);
        Args a;
        a.add(Num(7));
        Character::_SetSpellCooldownTimerId(a.args, g_ret, Self());
        Check(s0.m_cooldownTimerId == 7, "SetSpellCooldownTimerId writes entry 0");
        Check(s2.m_cooldownTimerId == -1, "SetSpellCooldownTimerId stops at the faery count");
        Args n;
        n.add(Nil());
        Character::_SetSpellCooldownTimerId(n.args, g_ret, Self());
        Check(s0.m_cooldownTimerId == -1, "SetSpellCooldownTimerId(nil) writes -1");
        Args s;
        s.add(Str("x"));
        s0.m_cooldownTimerId = 5;
        Character::_SetSpellCooldownTimerId(s.args, g_ret, Self());
        Check(s0.m_cooldownTimerId == 5, "SetSpellCooldownTimerId ignores a string");
    }

    // ---- _Flee: the reflection of the position through the target, sent to Cmd_MoveTo ----
    Reset();
    {
        g_positions[Self()] = Point3D<float>{5.0f, 6.0f, 7.0f};
        g_positions[Target()] = Point3D<float>{1.0f, 2.0f, 3.0f};
        Self()->CharAI::m_target = Target();
        Args a;
        a.add(User(Target()));
        Character::_Flee(a.args, g_ret, Self());
        const Call* move = FindCall("Cmd_MoveTo");
        Check(move != nullptr && Near(move->a, 9.0f) && Near(move->b, 10.0f) && Near(move->c, 11.0f),
              "Flee moves to self + (self - target) = (9, 10, 11)");
        Reset();
        g_positions[Self()] = Point3D<float>{5.0f, 6.0f, 7.0f};
        Args b;
        b.add(User(Target()));
        Character::_Flee(b.args, g_ret, Self());
        Check(CountCalls("Cmd_MoveTo") == 0, "Flee does nothing without a target");
    }

    // ---- _WarpBehind: the target's look vector negated, normalised and scaled by 100, added to its position ----
    Reset();
    {
        g_looks[Target()] = Point3D<float>{0.0f, 0.0f, 2.0f};
        g_positions[Target()] = Point3D<float>{10.0f, 20.0f, 30.0f};
        Args a;
        a.add(Light(Target()));
        Character::_WarpBehind(a.args, g_ret, Self());
        const Call* warp = FindCall("Cmd_WarpTo");
        Check(warp != nullptr && Near(warp->a, 10.0f) && Near(warp->b, 20.0f) && Near(warp->c, -70.0f),
              "WarpBehind goes to (10, 20, -70)");
    }

    // ---- _CreateBuff: argument decoding and the pushed pointer ----
    Reset();
    {
        Args a;
        a.add(Num(4));
        Character::_CreateBuff(a.args, g_ret, Self());
        const Call* add = FindCall("PROPS_AddBuff");
        Check(add != nullptr && add->a == 4 && add->b == 0 && add->c == 1, "CreateBuff(4) defaults: duration 0, maxStacks 1");
        Check(FindCall("PROPS_AddBuff.level") != nullptr && FindCall("PROPS_AddBuff.level")->a == 0 &&
                  FindCall("PROPS_AddBuff.level")->b == -1,
              "CreateBuff(4) defaults: level 0, fxId -1");
        Check(g_pushedPointers.empty(), "CreateBuff pushes nothing without a buff");
    }
    Reset();
    {
        int buffStorage = 0;
        g_buffResult = &buffStorage;
        Args a;
        a.add(Num(4)).add(Nil()).add(Num(3)).add(Num(1)).add(Num(12)).add(Str("x"));
        Character::_CreateBuff(a.args, g_ret, Self());
        const Call* add = FindCall("PROPS_AddBuff");
        Check(add != nullptr && add->b == 0 && add->c == 3 && std::strcmp(static_cast<const char*>(add->p), "x") == 0,
              "CreateBuff passes maxStacks 3 and the name");
        Check(FindCall("PROPS_AddBuff.level") != nullptr && FindCall("PROPS_AddBuff.level")->a == 1 &&
                  FindCall("PROPS_AddBuff.level")->b == 12,
              "CreateBuff passes level 1 and fxId 12");
        Check(g_pushedPointers.size() == 1 && g_pushedPointers[0] == &buffStorage, "CreateBuff pushes the buff pointer");
    }
    Reset();
    {
        Args a;
        a.add(Num(10));   // class id at the ClassTable size: nothing
        Character::_CreateBuff(a.args, g_ret, Self());
        Check(CountCalls("PROPS_AddBuff") == 0, "CreateBuff rejects a class id at the table size");
    }

    if (g_failures == 0) {
        std::printf("r2a-game-character-Character-ee9946-7 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
