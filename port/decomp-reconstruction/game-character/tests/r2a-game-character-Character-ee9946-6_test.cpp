// Test for the REDO pass of batch r2a-game-character-Character-ee9946-6: the Lua bindings of Character at 0x3b73a4 ..
// 0x3b7eac. It links both sources that hold them:
//   game-character/src/g1-game-character-Character-ee9946-11.cpp  (SetLevel, ResumeTimer, PauseTimer, StartTimer,
//       SetKnockBackState, RotateBy, RegenMP, RegenHP, UseMana)
//   game-character/src/g1-game-character-Character-ee9946-12.cpp  (HasMana, AllowSkillBreak, AllowRotation,
//       SetIsTargetable, GetPropBonusDamage, GetPropBonusCritRating, GetPropBonusAttackRating, RemoveDots,
//       DBG_DumpProps, Kill, SetProp)
//
// It defines the calls those bodies make into other classes and layers: the Lua Value, Arguments and ReturnValues
// members, CharTimers, CharStateMachine, CharAnimator, CharAI and ItemInventory calls, v2Controller, the Character
// RegenHP/RegenMP/UseMana/HasMana methods, the CharProperties methods, PyDataConstants and the PlayerManager global.
// Objects are zero-filled and never constructed, and only non-virtual members are called, so no vtable is read.
//
// PROPS_RemoveDot is modelled with a dot that is used up: each call lowers the word at CharProperties +0xe30
// (unk_e30) by one, so the loop's stop condition on that word is exercised. The shipped PROPS_RemoveDot is empty.

#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// ---- recorded calls and results of the definitions below ----

namespace {
std::vector<bool> g_pushedBooleans;          // ReturnValues::pushBoolean, in order
std::vector<int> g_pushedIntegers;           // ReturnValues::pushInteger, in order
std::vector<unsigned int> g_resumed;         // CharTimers::TMR_Resume ids
std::vector<unsigned int> g_paused;          // CharTimers::TMR_Pause ids
std::vector<unsigned int> g_stopped;         // CharTimers::TMR_Stop ids
struct StartCall {
    unsigned int durationMs;
    int repeat;
    int eventId;
    const void* userData;
};
std::vector<StartCall> g_starts;             // CharTimers::TMR_Start calls
int g_startResult = 9;                       // what TMR_Start returns
std::vector<int> g_animDicts;                // CharAnimator::ANIM_AddAnimDictToSet ids
std::vector<bool> g_knockBacks;              // CharStateMachine::SM_SetKnockBackState strong flags
std::vector<const void*> g_knockBackData;    // ... data argument
std::vector<bool> g_knockBackImmediate;      // ... immediate argument
std::vector<float> g_rotations;              // v2Controller::Cmd_RotateBy angles
const void* g_rotationController = nullptr;  // controller of the last Cmd_RotateBy
std::vector<int> g_regenMP;                  // Character::RegenMP amounts
std::vector<int> g_regenHP;                  // Character::RegenHP amounts
std::vector<bool> g_recalcs;                 // CharProperties::RecalcProperties flags
std::vector<int> g_useManaCosts;             // Character::UseMana costs
bool g_useManaResult = true;                 // what UseMana returns
std::vector<int> g_hasManaCosts;             // Character::HasMana costs
bool g_hasManaResult = false;                // what HasMana returns
std::vector<int> g_bonusKinds;               // 0 damage, 1 crit rating, 2 attack rating (call order)
std::vector<bool> g_bonusFlags;              // offHand argument of the bonus calls
std::vector<int> g_removeDots;               // CharProperties::PROPS_RemoveDot elements
std::vector<std::string> g_dumpPaths;        // CharProperties::DBG_PROPS_DumpToFile paths
std::vector<bool> g_dumpFlags;               // ... flags
std::vector<const void*> g_killKillers;      // v2Controller::Cmd_Kill killers
std::vector<bool> g_killSilent;              // ... silent flags
std::vector<const void*> g_killControllers;  // ... controllers
struct SetCall {
    int propId;
    int value;
};
std::vector<SetCall> g_setCalls;             // CharProperties::PROPS_Set
struct SheetCall {
    int propId;
    int value;
    const void* sheet;
};
std::vector<SheetCall> g_sheetCalls;         // CharProperties::PROPS_SetToSheet
int g_maxLevelDVeryHard = 30;                // CharacterDesign.MaxLevelDVeryHard

void ResetLogs() {
    g_pushedBooleans.clear();
    g_pushedIntegers.clear();
    g_resumed.clear();
    g_paused.clear();
    g_stopped.clear();
    g_starts.clear();
    g_animDicts.clear();
    g_knockBacks.clear();
    g_knockBackData.clear();
    g_knockBackImmediate.clear();
    g_rotations.clear();
    g_rotationController = nullptr;
    g_regenMP.clear();
    g_regenHP.clear();
    g_recalcs.clear();
    g_useManaCosts.clear();
    g_hasManaCosts.clear();
    g_bonusKinds.clear();
    g_bonusFlags.clear();
    g_removeDots.clear();
    g_dumpPaths.clear();
    g_dumpFlags.clear();
    g_killKillers.clear();
    g_killSilent.clear();
    g_killControllers.clear();
    g_setCalls.clear();
    g_sheetCalls.clear();
}
}  // namespace

alignas(16) unsigned char g_pyBuf[sizeof(PyDataConstants)];

// ---- definitions this test provides (owned by other classes and layers that are not linked) ----

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::uint32_t Arrays::AnimatedEffectTable::size = 10;

sfc::script::lua::Value::Value() : m_type(0), m_number(0.0f), m_string(nullptr), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(void* pointer) : m_type(2), m_number(0.0f), m_string(nullptr), m_pointer(pointer) {}
sfc::script::lua::Value::Value(bool value)
    : m_type(1), m_number(value ? 1.0f : 0.0f), m_string(nullptr), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(const char* value)
    : m_type(4), m_number(0.0f), m_string(const_cast<char*>(value)), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(sfc::script::lua::UserData* userData)
    : m_type(7), m_number(0.0f), m_string(nullptr), m_pointer(userData) {}
sfc::script::lua::Value::Value(int value)
    : m_type(3), m_number(static_cast<float>(value)), m_string(nullptr), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(float value)
    : m_type(3), m_number(value), m_string(nullptr), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(const Value& other)
    : m_type(other.m_type), m_number(other.m_number), m_string(other.m_string), m_pointer(other.m_pointer) {}
sfc::script::lua::Value::~Value() {}
bool sfc::script::lua::Value::getBool() const { return m_number != 0.0f; }
float sfc::script::lua::Value::getNumber() const { return m_number; }
unsigned int sfc::script::lua::Value::getUInteger() const { return static_cast<unsigned int>(m_number); }
const char* sfc::script::lua::Value::getString() const { return m_string; }
void* sfc::script::lua::Value::getPointer() const { return m_pointer; }
sfc::script::lua::UserData* sfc::script::lua::Value::getUserData() const {
    return static_cast<sfc::script::lua::UserData*>(m_pointer);
}

sfc::script::lua::Arguments::Arguments() : m_values(new std::vector<sfc::script::lua::Value>()) {}
sfc::script::lua::Arguments::~Arguments() { delete m_values; }
const sfc::script::lua::Value& sfc::script::lua::Arguments::operator[](unsigned int index) const {
    return m_values->at(index);
}

sfc::script::lua::ReturnValues::ReturnValues() {}
sfc::script::lua::ReturnValues::~ReturnValues() {}
void sfc::script::lua::ReturnValues::pushBoolean(bool value) { g_pushedBooleans.push_back(value); }
void sfc::script::lua::ReturnValues::pushInteger(int value) { g_pushedIntegers.push_back(value); }

void CharTimers::TMR_Resume(unsigned int id) { g_resumed.push_back(id); }
void CharTimers::TMR_Pause(unsigned int id) { g_paused.push_back(id); }
void CharTimers::TMR_Stop(unsigned int id) { g_stopped.push_back(id); }
int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    g_starts.push_back(StartCall{durationMs, repeat, eventId, userData});
    return g_startResult;
}
void CharAnimator::ANIM_AddAnimDictToSet(int animDict) { g_animDicts.push_back(animDict); }
int CharStateMachine::SM_SetKnockBackState(bool strong, void* data, bool immediate) {
    g_knockBacks.push_back(strong);
    g_knockBackData.push_back(data);
    g_knockBackImmediate.push_back(immediate);
    return 0;
}
bool ItemInventory::CanMeleeAttack() const { return false; }
bool ItemInventory::HasBow() const { return false; }
bool ItemInventory::HasShield() const { return false; }
bool CharAI::AI_HasAggro() const { return false; }
bool CharAI::AI_IsInMeleeRange(const GameObject* /*obj*/) const { return false; }
PlayerInfo* PlayerManager::GetHostingPlayer() { return nullptr; }

void v2Controller::Cmd_RotateBy(float angle) {
    g_rotations.push_back(angle);
    g_rotationController = this;
}
void v2Controller::Cmd_Kill(GameObject* killer, bool silent) {
    g_killKillers.push_back(killer);
    g_killSilent.push_back(silent);
    g_killControllers.push_back(this);
}

void Character::RegenMP(int amount) { g_regenMP.push_back(amount); }
void Character::RegenHP(int amount) { g_regenHP.push_back(amount); }
bool Character::UseMana(int cost) {
    g_useManaCosts.push_back(cost);
    return g_useManaResult;
}
bool Character::HasMana(int cost) const {
    g_hasManaCosts.push_back(cost);
    return g_hasManaResult;
}

void CharProperties::RecalcProperties(bool reloadClass) { g_recalcs.push_back(reloadClass); }
int CharProperties::PROPS_GetBonusDamage(bool offHand) const {
    g_bonusKinds.push_back(0);
    g_bonusFlags.push_back(offHand);
    return 42;
}
int CharProperties::PROPS_GetBonusCritRating(bool offHand) const {
    g_bonusKinds.push_back(1);
    g_bonusFlags.push_back(offHand);
    return 7;
}
int CharProperties::PROPS_GetBonusAttackRating(bool offHand) const {
    g_bonusKinds.push_back(2);
    g_bonusFlags.push_back(offHand);
    return 5;
}
void CharProperties::PROPS_RemoveDot(int element) {
    g_removeDots.push_back(element);
    if (unk_e30 > 0) {
        --unk_e30;
    }
}
void CharProperties::DBG_PROPS_DumpToFile(const char* path, bool flag) const {
    g_dumpPaths.push_back(path);
    g_dumpFlags.push_back(flag);
}
void CharProperties::PROPS_SetToSheet(int propId, int value, Structs::CharacterProperties* sheet) {
    g_sheetCalls.push_back(SheetCall{propId, value, sheet});
}
void CharProperties::PROPS_Set(int propId, int value) { g_setCalls.push_back(SetCall{propId, value}); }

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "CharacterDesign") == 0 && std::strcmp(constantName, "MaxLevelDVeryHard") == 0) {
        return g_maxLevelDVeryHard;
    }
    return -1;
}

// Stands in for the Singleton<Application> PyDataConstants pointer (declared in dh2/global/charai_ai.hpp).
PyDataConstants* ApplicationGetPyDataConstants() { return reinterpret_cast<PyDataConstants*>(g_pyBuf); }

// ---- test ----

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Zero-filled storage for the owners and the callees. Nothing is constructed here.
alignas(16) unsigned char g_charBuf[sizeof(Character)];
alignas(16) unsigned char g_ctrlBuf[sizeof(v2Controller)];
alignas(16) unsigned char g_objBuf[sizeof(GameObject)];

Character* Self() { return reinterpret_cast<Character*>(g_charBuf); }
GameObject* Target() { return reinterpret_cast<GameObject*>(g_objBuf); }
v2Controller* Controller() { return reinterpret_cast<v2Controller*>(g_ctrlBuf); }

// A fresh Character: all bytes zero, its controller set, and the logs cleared.
Character* FreshSelf() {
    std::memset(g_charBuf, 0, sizeof g_charBuf);
    Character* self = Self();
    self->v2Controllable::m_controller = Controller();
    ResetLogs();
    return self;
}

void Push(sfc::script::lua::Arguments& args, const sfc::script::lua::Value& value) {
    args.m_values->push_back(value);
}

void TestSetLevel() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    self->CharProperties::m_baseProps.Level = 77;

    // No argument: nothing is stored and nothing is recalculated or regenerated.
    {
        sfc::script::lua::Arguments args;
        Character::_SetLevel(args, ret, self);
    }
    EXPECT(self->CharProperties::m_baseProps.Level == 77);
    EXPECT(g_recalcs.empty() && g_regenHP.empty() && g_regenMP.empty());

    // A boolean first argument: nothing.
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_SetLevel(args, ret, self);
    }
    EXPECT(self->CharProperties::m_baseProps.Level == 77);
    EXPECT(g_recalcs.empty() && g_regenHP.empty() && g_regenMP.empty());

    // A number below the cap (30 << 8): stored as it is, then recalculation and both regenerations.
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(12));
        Character::_SetLevel(args, ret, self);
    }
    EXPECT(self->CharProperties::m_baseProps.Level == 12);
    EXPECT(g_recalcs.size() == 1 && g_recalcs[0] == true);
    EXPECT(g_regenHP.size() == 1 && g_regenHP[0] == -1);
    EXPECT(g_regenMP.size() == 1 && g_regenMP[0] == -1);

    // A number above the cap: the stored value is the cap, 30 << 8 = 7680.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(40000));
        Character::_SetLevel(args, ret, self);
    }
    EXPECT(self->CharProperties::m_baseProps.Level == (30 << 8));
    EXPECT(g_recalcs.size() == 1 && g_regenHP.size() == 1 && g_regenMP.size() == 1);

    // A fractional number is truncated; 100.9 stays under the cap.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(100.9f));
        Character::_SetLevel(args, ret, self);
    }
    EXPECT(self->CharProperties::m_baseProps.Level == 100);
}

void TestTimers() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;

    // Resume and pause take a number; a boolean or no argument does nothing.
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Character::_ResumeTimer(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(6));
        Character::_PauseTimer(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_ResumeTimer(args, ret, self);
        Character::_PauseTimer(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Character::_ResumeTimer(args, ret, self);
        Character::_PauseTimer(args, ret, self);
    }
    EXPECT(g_resumed.size() == 1 && g_resumed[0] == 5u);
    EXPECT(g_paused.size() == 1 && g_paused[0] == 6u);

    // StartTimer: repeat 0 unless the second argument is true-valued; the id is pushed unless it is -1.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Character::_StartTimer(args, ret, self);
    }
    EXPECT(g_starts.size() == 1 && g_starts[0].durationMs == 3u && g_starts[0].repeat == 0);
    EXPECT(g_starts.size() == 1 && g_starts[0].eventId == 53 && g_starts[0].userData == nullptr);
    EXPECT(g_pushedIntegers.size() == 1 && g_pushedIntegers[0] == 9);

    ResetLogs();
    g_startResult = -1;
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Character::_StartTimer(args, ret, self);
    }
    g_startResult = 9;
    EXPECT(g_starts.size() == 1 && g_pushedIntegers.empty());

    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Push(args, sfc::script::lua::Value(true));
        Character::_StartTimer(args, ret, self);
    }
    EXPECT(g_starts.size() == 1 && g_starts[0].repeat == -1);
    EXPECT(g_pushedIntegers.size() == 1 && g_pushedIntegers[0] == 9);

    // The second argument is read as a boolean without a type test: a non-zero number repeats too.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Push(args, sfc::script::lua::Value(2.5f));
        Character::_StartTimer(args, ret, self);
    }
    EXPECT(g_starts.size() == 1 && g_starts[0].repeat == -1);

    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Push(args, sfc::script::lua::Value(0));
        Character::_StartTimer(args, ret, self);
    }
    EXPECT(g_starts.size() == 1 && g_starts[0].repeat == 0);

    // A boolean or no first argument starts nothing.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_StartTimer(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Character::_StartTimer(args, ret, self);
    }
    EXPECT(g_starts.empty() && g_pushedIntegers.empty());
}

void TestKnockBackAndRotate() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;

    // No argument: true. A boolean: its value. A number is not a boolean: true.
    {
        sfc::script::lua::Arguments args;
        Character::_SetKnockBackState(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(false));
        Character::_SetKnockBackState(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(0));
        Character::_SetKnockBackState(args, ret, self);
    }
    EXPECT(g_knockBacks.size() == 3);
    EXPECT(g_knockBacks.size() == 3 && g_knockBacks[0] == true && g_knockBacks[1] == false && g_knockBacks[2] == true);
    EXPECT(g_knockBackData.size() == 3 && g_knockBackData[0] == nullptr && g_knockBackData[2] == nullptr);
    EXPECT(g_knockBackImmediate.size() == 3 && g_knockBackImmediate[0] == false && g_knockBackImmediate[2] == false);

    // RotateBy: the angle is degrees times pi/180 (kCharAIRadPerDegree), sent to the controller at +0x378.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(90.0f));
        Character::_RotateBy(args, ret, self);
    }
    EXPECT(g_rotations.size() == 1);
    EXPECT(g_rotations.size() == 1 && std::fabs(g_rotations[0] - 1.5707963f) < 1e-5f);
    EXPECT(g_rotationController == Controller());

    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_RotateBy(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Character::_RotateBy(args, ret, self);
    }
    EXPECT(g_rotations.empty());
}

void TestRegenAndMana() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;

    // RegenMP and RegenHP take the number truncated toward zero; nothing without a number.
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(7.9f));
        Character::_RegenMP(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(-3.5f));
        Character::_RegenHP(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(false));
        Character::_RegenMP(args, ret, self);
        Character::_RegenHP(args, ret, self);
    }
    EXPECT(g_regenMP.size() == 1 && g_regenMP[0] == 7);
    EXPECT(g_regenHP.size() == 1 && g_regenHP[0] == -3);

    // UseMana pushes the boolean that UseMana returns; HasMana pushes what HasMana returns.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(4));
        Character::_UseMana(args, ret, self);
    }
    EXPECT(g_useManaCosts.size() == 1 && g_useManaCosts[0] == 4);
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == true);

    ResetLogs();
    g_useManaResult = false;
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(4));
        Character::_UseMana(args, ret, self);
    }
    g_useManaResult = true;
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == false);

    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_UseMana(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Character::_UseMana(args, ret, self);
    }
    EXPECT(g_useManaCosts.empty() && g_pushedBooleans.empty());

    ResetLogs();
    g_hasManaResult = true;
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(6));
        Character::_HasMana(args, ret, self);
    }
    g_hasManaResult = false;
    EXPECT(g_hasManaCosts.size() == 1 && g_hasManaCosts[0] == 6);
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == true);

    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Character::_HasMana(args, ret, self);
    }
    EXPECT(g_hasManaCosts.empty() && g_pushedBooleans.empty());
}

void TestStateFlags() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    const std::uint32_t kSkillBreakBit = 0x10000u;
    const std::uint32_t kRotationBit = 0x4000u;

    self->CharStateMachine::m_stateFlags = kSkillBreakBit | kRotationBit | 0x400u | 0x1u;
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_AllowSkillBreak(args, ret, self);
    }
    EXPECT(self->CharStateMachine::m_stateFlags == (kRotationBit | 0x400u | 0x1u));

    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(false));
        Character::_AllowSkillBreak(args, ret, self);
    }
    EXPECT(self->CharStateMachine::m_stateFlags == (kSkillBreakBit | kRotationBit | 0x400u | 0x1u));

    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_AllowRotation(args, ret, self);
    }
    EXPECT(self->CharStateMachine::m_stateFlags == (kSkillBreakBit | 0x400u | 0x1u));

    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(false));
        Character::_AllowRotation(args, ret, self);
    }
    EXPECT(self->CharStateMachine::m_stateFlags == (kSkillBreakBit | kRotationBit | 0x400u | 0x1u));

    // A number and no argument leave the flags alone.
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(0));
        Character::_AllowSkillBreak(args, ret, self);
        Character::_AllowRotation(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Character::_AllowSkillBreak(args, ret, self);
        Character::_AllowRotation(args, ret, self);
    }
    EXPECT(self->CharStateMachine::m_stateFlags == (kSkillBreakBit | kRotationBit | 0x400u | 0x1u));
}

void TestSetIsTargetable() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    self->CharAI::unk_4d = false;
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_SetIsTargetable(args, ret, self);
    }
    EXPECT(self->CharAI::unk_4d == true);
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Character::_SetIsTargetable(args, ret, self);
    }
    EXPECT(self->CharAI::unk_4d == true);
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(false));
        Character::_SetIsTargetable(args, ret, self);
    }
    EXPECT(self->CharAI::unk_4d == false);
}

void TestPropBonuses() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Character::_GetPropBonusDamage(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(0));
        Character::_GetPropBonusCritRating(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(2.0f));
        Character::_GetPropBonusAttackRating(args, ret, self);
    }
    EXPECT(g_pushedIntegers.size() == 3 && g_pushedIntegers[0] == 42 && g_pushedIntegers[1] == 7 &&
           g_pushedIntegers[2] == 5);
    EXPECT(g_bonusKinds.size() == 3 && g_bonusKinds[0] == 0 && g_bonusKinds[1] == 1 && g_bonusKinds[2] == 2);
    EXPECT(g_bonusFlags.size() == 3 && g_bonusFlags[0] == true && g_bonusFlags[1] == false &&
           g_bonusFlags[2] == true);

    // No argument: nothing is read or pushed.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Character::_GetPropBonusDamage(args, ret, self);
        Character::_GetPropBonusCritRating(args, ret, self);
        Character::_GetPropBonusAttackRating(args, ret, self);
    }
    EXPECT(g_pushedIntegers.empty() && g_bonusKinds.empty());
}

// Runs RemoveDots with the word at CharProperties +0xe30 set to word and the given arguments. Returns the word after.
unsigned int RunRemoveDots(Character* self, unsigned int word, const std::vector<sfc::script::lua::Value>& values) {
    sfc::script::lua::ReturnValues ret;
    self->CharProperties::unk_e30 = word;
    g_removeDots.clear();
    sfc::script::lua::Arguments args;
    for (const sfc::script::lua::Value& v : values) {
        Push(args, v);
    }
    Character::_RemoveDots(args, ret, self);
    return self->CharProperties::unk_e30;
}

void TestRemoveDots() {
    Character* self = FreshSelf();
    using V = sfc::script::lua::Value;

    // The count comes from the argument, element -1.
    unsigned int word = RunRemoveDots(self, 5, {V(2)});
    EXPECT(g_removeDots.size() == 2 && g_removeDots[0] == -1 && g_removeDots[1] == -1);
    EXPECT(word == 3);

    // Element from the second argument.
    word = RunRemoveDots(self, 5, {V(3), V(4)});
    EXPECT(g_removeDots.size() == 3 && g_removeDots[0] == 4 && g_removeDots[2] == 4);
    EXPECT(word == 2);

    // A negative count takes the word at +0xe30 (5 dots, used up one per call).
    word = RunRemoveDots(self, 5, {V(-1)});
    EXPECT(g_removeDots.size() == 5 && word == 0);

    // The loop also stops when the word reaches zero before the count is reached.
    word = RunRemoveDots(self, 2, {V(10)});
    EXPECT(g_removeDots.size() == 2 && word == 0);

    // Nothing happens when the word is zero, or when the count is zero.
    word = RunRemoveDots(self, 0, {V(10)});
    EXPECT(g_removeDots.empty() && word == 0);
    word = RunRemoveDots(self, 4, {V(0)});
    EXPECT(g_removeDots.empty() && word == 4);

    // Element -2 means any element; a boolean second argument is not a number.
    word = RunRemoveDots(self, 4, {V(2), V(-2)});
    EXPECT(g_removeDots.size() == 2 && g_removeDots[0] == -1 && g_removeDots[1] == -1);
    word = RunRemoveDots(self, 4, {V(2), V(true)});
    EXPECT(g_removeDots.size() == 2 && g_removeDots[0] == -1 && g_removeDots[1] == -1);

    // Fractional count is truncated; the element is read from the second argument.
    word = RunRemoveDots(self, 6, {V(2.9f), V(9)});
    EXPECT(g_removeDots.size() == 2 && g_removeDots[0] == 9 && g_removeDots[1] == 9);
    EXPECT(word == 4);

    // A boolean first argument keeps the word as the count; the element is still read from the second argument.
    word = RunRemoveDots(self, 3, {V(true), V(9)});
    EXPECT(g_removeDots.size() == 3 && g_removeDots[0] == 9 && g_removeDots[2] == 9);
    EXPECT(word == 0);
}

void TestDumpProps() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    {
        sfc::script::lua::Arguments args;
        Character::_DBG_DumpProps(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value("dump.txt"));
        Character::_DBG_DumpProps(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Character::_DBG_DumpProps(args, ret, self);
    }
    EXPECT(g_dumpPaths.size() == 3);
    EXPECT(g_dumpPaths.size() == 3 && g_dumpPaths[0] == "Lua Dump" && g_dumpPaths[1] == "dump.txt" &&
           g_dumpPaths[2] == "Lua Dump");
    EXPECT(g_dumpFlags.size() == 3 && g_dumpFlags[0] && g_dumpFlags[1] && g_dumpFlags[2]);
}

void TestKill() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    {
        sfc::script::lua::Arguments args;
        Character::_Kill(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(static_cast<sfc::script::lua::UserData*>(Target())));
        Character::_Kill(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(3));
        Character::_Kill(args, ret, self);
    }
    EXPECT(g_killKillers.size() == 3);
    EXPECT(g_killKillers.size() == 3 && g_killKillers[0] == nullptr && g_killKillers[1] == Target() &&
           g_killKillers[2] == nullptr);
    EXPECT(g_killSilent.size() == 3 && !g_killSilent[0] && !g_killSilent[1] && !g_killSilent[2]);
    EXPECT(g_killControllers.size() == 3 && g_killControllers[0] == Controller() &&
           g_killControllers[2] == Controller());
}

void TestSetProp() {
    Character* self = FreshSelf();
    sfc::script::lua::ReturnValues ret;
    int lightObject = 0;

    // PROPS_Set for a valid id and a number value.
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Push(args, sfc::script::lua::Value(7));
        Character::_SetProp(args, ret, self);
    }
    EXPECT(g_setCalls.size() == 1 && g_setCalls[0].propId == 5 && g_setCalls[0].value == 7);

    // The id limit is 0xDF: 223 passes, 224 does nothing.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(223));
        Push(args, sfc::script::lua::Value(7));
        Character::_SetProp(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(224));
        Push(args, sfc::script::lua::Value(7));
        Character::_SetProp(args, ret, self);
    }
    EXPECT(g_setCalls.size() == 1 && g_setCalls[0].propId == 223 && g_setCalls[0].value == 7);

    // One argument, a boolean id, or a boolean value: nothing.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Character::_SetProp(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(true));
        Push(args, sfc::script::lua::Value(7));
        Character::_SetProp(args, ret, self);
    }
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Push(args, sfc::script::lua::Value(true));
        Character::_SetProp(args, ret, self);
    }
    EXPECT(g_setCalls.empty() && g_sheetCalls.empty());

    // A light userdata third argument selects the sheet: PROPS_SetToSheet, unless the pointer is null.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Push(args, sfc::script::lua::Value(7));
        Push(args, sfc::script::lua::Value(static_cast<void*>(&lightObject)));
        Character::_SetProp(args, ret, self);
    }
    EXPECT(g_sheetCalls.size() == 1 && g_sheetCalls[0].propId == 5 && g_sheetCalls[0].value == 7 &&
           g_sheetCalls[0].sheet == static_cast<const void*>(&lightObject));
    EXPECT(g_setCalls.empty());

    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Push(args, sfc::script::lua::Value(7));
        Push(args, sfc::script::lua::Value(static_cast<void*>(nullptr)));
        Character::_SetProp(args, ret, self);
    }
    EXPECT(g_sheetCalls.empty() && g_setCalls.empty());

    // A number third argument is not a light userdata: PROPS_Set.
    ResetLogs();
    {
        sfc::script::lua::Arguments args;
        Push(args, sfc::script::lua::Value(5));
        Push(args, sfc::script::lua::Value(7));
        Push(args, sfc::script::lua::Value(3));
        Character::_SetProp(args, ret, self);
    }
    EXPECT(g_setCalls.size() == 1 && g_setCalls[0].propId == 5 && g_setCalls[0].value == 7);
    EXPECT(g_sheetCalls.empty());
}

}  // namespace

int main() {
    TestSetLevel();
    TestTimers();
    TestKnockBackAndRotate();
    TestRegenAndMana();
    TestStateFlags();
    TestSetIsTargetable();
    TestPropBonuses();
    TestRemoveDots();
    TestDumpProps();
    TestKill();
    TestSetProp();
    if (g_failures == 0) {
        std::printf("r2a-game-character-Character-ee9946-6 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-character-Character-ee9946-6 test: %d failure(s)\n", g_failures);
    return 1;
}
