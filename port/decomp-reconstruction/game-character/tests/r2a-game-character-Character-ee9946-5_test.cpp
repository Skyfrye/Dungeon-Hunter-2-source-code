// Test for the REDO pass of batch r2a-game-character-Character-ee9946-5: the Lua bindings of Character at 0x3b6f3c ..
// 0x3b7144 in game-character/src/g1-game-character-Character-ee9946-11.cpp (HasMaster, HasTarget, CanAttackInMelee,
// HasBow, HasShield, IsMasterHostPlayer, TargetInMeleeRange, HasAggro, StopTimer, RegisterAnim, EnableSpotTargeting).
//
// It links that source and defines the calls it makes into other classes and layers: the Lua Value and Arguments
// accessors, ReturnValues::pushBoolean, CharTimers::TMR_Stop, CharAnimator::ANIM_AddAnimDictToSet, the ItemInventory
// and CharAI queries, PlayerManager::GetHostingPlayer and the PlayerManager global. Character, GameObject and PlayerInfo
// storage is zero-filled and never constructed, and only qualified (non-virtual) calls are made, so no vtable is read.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <stdexcept>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

// ---- definitions this test provides (owned by other classes and layers that are not linked) ----

namespace {
std::vector<bool> g_pushedBooleans;          // ReturnValues::pushBoolean, in order
std::vector<unsigned int> g_stoppedTimers;   // CharTimers::TMR_Stop ids, in order
std::vector<int> g_animDicts;                // CharAnimator::ANIM_AddAnimDictToSet ids, in order
bool g_canMelee = false;                     // ItemInventory::CanMeleeAttack result
bool g_hasBow = false;                       // ItemInventory::HasBow result
bool g_hasShield = false;                    // ItemInventory::HasShield result
bool g_hasAggro = false;                     // CharAI::AI_HasAggro result
bool g_meleeInRange = false;                 // CharAI::AI_IsInMeleeRange result
const GameObject* g_meleeArg = nullptr;      // the target that AI_IsInMeleeRange was given
int g_hostingCalls = 0;                      // PlayerManager::GetHostingPlayer calls
PlayerInfo* g_hosting = nullptr;             // what GetHostingPlayer returns
}  // namespace

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::uint32_t Arrays::AnimatedEffectTable::size = 10;

sfc::script::lua::Value::Value() : m_type(0), m_number(0.0f), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(bool value) : m_type(1), m_number(value ? 1.0f : 0.0f), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(int value) : m_type(3), m_number(static_cast<float>(value)), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(float value) : m_type(3), m_number(value), m_pointer(nullptr) {}
sfc::script::lua::Value::Value(sfc::script::lua::UserData* userData)
    : m_type(7), m_number(0.0f), m_pointer(userData) {}
sfc::script::lua::Value::Value(const Value& other)
    : m_type(other.m_type), m_number(other.m_number), m_pointer(other.m_pointer) {}
sfc::script::lua::Value::~Value() {}
bool sfc::script::lua::Value::getBool() const { return m_number != 0.0f; }
float sfc::script::lua::Value::getNumber() const { return m_number; }
unsigned int sfc::script::lua::Value::getUInteger() const { return static_cast<unsigned int>(m_number); }
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

void CharTimers::TMR_Stop(unsigned int id) { g_stoppedTimers.push_back(id); }
void CharAnimator::ANIM_AddAnimDictToSet(int animDict) { g_animDicts.push_back(animDict); }
bool ItemInventory::CanMeleeAttack() const { return g_canMelee; }
bool ItemInventory::HasBow() const { return g_hasBow; }
bool ItemInventory::HasShield() const { return g_hasShield; }
bool CharAI::AI_HasAggro() const { return g_hasAggro; }
bool CharAI::AI_IsInMeleeRange(const GameObject* obj) const {
    g_meleeArg = obj;
    return g_meleeInRange;
}
PlayerInfo* PlayerManager::GetHostingPlayer() {
    ++g_hostingCalls;
    return g_hosting;
}

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

// Zero-filled storage for the owners. Nothing is constructed here.
alignas(16) unsigned char g_charBuf[sizeof(Character)];
alignas(16) unsigned char g_objBuf[sizeof(GameObject)];
alignas(16) unsigned char g_piBuf[sizeof(PlayerInfo)];
alignas(16) unsigned char g_pmBuf[sizeof(PlayerManager)];

Character* Self() { return reinterpret_cast<Character*>(g_charBuf); }
GameObject* Target() { return reinterpret_cast<GameObject*>(g_objBuf); }

void ClearLogs() {
    g_pushedBooleans.clear();
    g_stoppedTimers.clear();
    g_animDicts.clear();
    g_hostingCalls = 0;
    g_meleeArg = nullptr;
}

void SetPosition(GameObject* object, float x, float y, float z) {
    object->m_position.X = x;
    object->m_position.Y = y;
    object->m_position.Z = z;
}

void SetPoint(Point3D<float>& point, float x, float y, float z) {
    point.X = x;
    point.Y = y;
    point.Z = z;
}

bool SamePosition(const Point3D<float>& a, float x, float y, float z) {
    return a.X == x && a.Y == y && a.Z == z;
}

void TestEnableSpotTargeting() {
    Character* self = Self();
    SetPosition(self, 4.0f, 5.0f, 6.0f);
    sfc::script::lua::ReturnValues ret;

    // No argument: nothing is written.
    self->m_spotTargetPending = 7;
    self->m_spotTargetFXId = 99;
    {
        sfc::script::lua::Arguments args;
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 7);
    EXPECT(self->m_spotTargetFXId == 99);

    // First argument is a number, not a boolean: nothing is written.
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(3));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 7);
    EXPECT(self->m_spotTargetFXId == 99);

    // false: pending cleared and the FX id set to -1, whatever the second argument is.
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(false));
        args.m_values->push_back(sfc::script::lua::Value(5));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 0);
    EXPECT(self->m_spotTargetFXId == -1);

    // true with an FX index below the table size: the Character's own position is the target.
    SetPoint(self->m_spotTargetPos, 0.0f, 0.0f, 0.0f);
    SetPoint(self->m_spotTargetValidPos, 0.0f, 0.0f, 0.0f);
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        args.m_values->push_back(sfc::script::lua::Value(5));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 1);
    EXPECT(self->m_spotTargetFXId == 5);
    EXPECT(SamePosition(self->m_spotTargetPos, 4.0f, 5.0f, 6.0f));
    EXPECT(SamePosition(self->m_spotTargetValidPos, 4.0f, 5.0f, 6.0f));

    // true with an FX index at or past the table size: nothing is written.
    self->m_spotTargetPending = 3;
    self->m_spotTargetFXId = 77;
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        args.m_values->push_back(sfc::script::lua::Value(12));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 3);
    EXPECT(self->m_spotTargetFXId == 77);

    // true with only one argument: the FX index test fails, nothing is written.
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 3);
    EXPECT(self->m_spotTargetFXId == 77);

    // true with a userdata third argument: its GameObject position is the target.
    SetPosition(Target(), 1.0f, 2.0f, 3.0f);
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        args.m_values->push_back(sfc::script::lua::Value(3));
        args.m_values->push_back(sfc::script::lua::Value(static_cast<sfc::script::lua::UserData*>(Target())));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 1);
    EXPECT(self->m_spotTargetFXId == 3);
    EXPECT(SamePosition(self->m_spotTargetPos, 1.0f, 2.0f, 3.0f));
    EXPECT(SamePosition(self->m_spotTargetValidPos, 1.0f, 2.0f, 3.0f));

    // true with a number third argument (not userdata): the Character's own position is used again.
    SetPosition(self, 9.0f, 9.0f, 9.0f);
    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        args.m_values->push_back(sfc::script::lua::Value(2));
        args.m_values->push_back(sfc::script::lua::Value(4.0f));
        Character::_EnableSpotTargeting(args, ret, self);
    }
    EXPECT(self->m_spotTargetPending == 1);
    EXPECT(self->m_spotTargetFXId == 2);
    EXPECT(SamePosition(self->m_spotTargetPos, 9.0f, 9.0f, 9.0f));
    EXPECT(SamePosition(self->m_spotTargetValidPos, 9.0f, 9.0f, 9.0f));
}

void TestStopAndRegisterTimers() {
    Character* self = Self();
    sfc::script::lua::ReturnValues ret;
    ClearLogs();

    {
        sfc::script::lua::Arguments args;
        Character::_StopTimer(args, ret, self);
    }
    EXPECT(g_stoppedTimers.empty());

    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        Character::_StopTimer(args, ret, self);
    }
    EXPECT(g_stoppedTimers.empty());

    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(7));
        Character::_StopTimer(args, ret, self);
    }
    EXPECT(g_stoppedTimers.size() == 1 && g_stoppedTimers[0] == 7u);

    {
        sfc::script::lua::Arguments args;
        Character::_RegisterAnim(args, ret, self);
    }
    EXPECT(g_animDicts.empty());

    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(true));
        Character::_RegisterAnim(args, ret, self);
    }
    EXPECT(g_animDicts.empty());

    {
        sfc::script::lua::Arguments args;
        args.m_values->push_back(sfc::script::lua::Value(4.7f));
        Character::_RegisterAnim(args, ret, self);
    }
    EXPECT(g_animDicts.size() == 1 && g_animDicts[0] == 4);
}

void TestBooleanQueries() {
    Character* self = Self();
    sfc::script::lua::ReturnValues ret;
    sfc::script::lua::Arguments args;

    // CharAI master and target: a pushed boolean is "pointer is not null".
    ClearLogs();
    self->CharAI::m_master = nullptr;
    Character::_HasMaster(args, ret, self);
    self->CharAI::m_master = Self();
    Character::_HasMaster(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 2 && g_pushedBooleans[0] == false && g_pushedBooleans[1] == true);

    ClearLogs();
    self->CharAI::m_target = nullptr;
    Character::_HasTarget(args, ret, self);
    self->CharAI::m_target = Target();
    Character::_HasTarget(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 2 && g_pushedBooleans[0] == false && g_pushedBooleans[1] == true);

    // Item and AI queries are pushed as the query returns them.
    ClearLogs();
    g_canMelee = true;
    g_hasBow = false;
    g_hasShield = true;
    g_hasAggro = false;
    Character::_CanAttackInMelee(args, ret, self);
    Character::_HasBow(args, ret, self);
    Character::_HasShield(args, ret, self);
    Character::_HasAggro(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 4 && g_pushedBooleans[0] == true && g_pushedBooleans[1] == false &&
           g_pushedBooleans[2] == true && g_pushedBooleans[3] == false);

    // Target in melee range: the query is given the CharAI target.
    ClearLogs();
    self->CharAI::m_target = Target();
    g_meleeInRange = true;
    Character::_TargetInMeleeRange(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == true);
    EXPECT(g_meleeArg == Target());
    g_meleeInRange = false;
    Character::_TargetInMeleeRange(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 2 && g_pushedBooleans[1] == false);
}

void TestIsMasterHostPlayer() {
    Character* self = Self();
    sfc::script::lua::ReturnValues ret;
    sfc::script::lua::Arguments args;
    PlayerInfo* hosting = reinterpret_cast<PlayerInfo*>(g_piBuf);
    g_hosting = hosting;
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_pmBuf);

    // No master: false, and the player manager is not read.
    ClearLogs();
    self->CharAI::m_master = nullptr;
    Character::_IsMasterHostPlayer(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == false);
    EXPECT(g_hostingCalls == 0);

    // The hosting player's character is the master: true.
    ClearLogs();
    self->CharAI::m_master = Self();
    hosting->unk_660 = Self();
    Character::_IsMasterHostPlayer(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == true);
    EXPECT(g_hostingCalls == 1);

    // The hosting player's character is someone else: false.
    ClearLogs();
    hosting->unk_660 = nullptr;
    Character::_IsMasterHostPlayer(args, ret, self);
    EXPECT(g_pushedBooleans.size() == 1 && g_pushedBooleans[0] == false);
    EXPECT(g_hostingCalls == 1);
}

}  // namespace

int main() {
    TestEnableSpotTargeting();
    TestStopAndRegisterTimers();
    TestBooleanQueries();
    TestIsMasterHostPlayer();
    if (g_failures == 0) {
        std::printf("r2a-game-character-Character-ee9946-5 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-character-Character-ee9946-5 test: %d failure(s)\n", g_failures);
    return 1;
}
