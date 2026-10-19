// Test for the r2a-game-app-LuaScript-5015a8-0 batch (REDO of the LuaScript bindings, constructor and Call overloads).
// Links with the LuaScript sources (part 1, part 2 and part 3) and stands in for everything else they call: the
// sfc::script::lua wrapper (Instance, Binder, Arguments, Value, ReturnValues), Random::GetRandom, the PlayerManager
// global and its PlayerInfo, the Application singleton, and glitch::core::hashString. The stand-ins record what the
// batch asked for, so the checks cover the binding table, the Call overloads and the arithmetic of the callbacks.
// Exit status 0 means every check passed.
#include <cstdint>
#include <csignal>
#include <cstdio>
#include <cstdlib>
#include <initializer_list>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/LuaScript.hpp"
#include "pydata-accessors/member_names.hpp"  // Arrays::GetMemberIDByString, used by the sound bindings of part 2
#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "glitch-core-io/core/strings.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                          \
    do {                                                                                      \
        if (!(cond)) {                                                                        \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond);   \
            ++g_failures;                                                                     \
        }                                                                                     \
    } while (0)

// ---- records written by the stand-ins ----
std::vector<std::string> g_instanceLog;  // Instance::include* calls, in order
struct Bound {
    std::string name;
    void (*callback)(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*);
    void* user;
};
std::vector<Bound> g_bound;  // Binder::bindFunction calls, in order
struct PCall {
    std::string name;
    const void* args;  // null for the overloads without an argument list
    const void* ret;
};
std::vector<PCall> g_pcalls;
struct Pushed {
    char kind;  // 'i' integer, 'b' boolean, 'n' number, 'u' user data
    long long integer;
    float number;
    const void* pointer;
};
std::vector<Pushed> g_pushed;  // ReturnValues::push* calls, in order
struct RandCall {
    int range;
    bool synced;
};
std::vector<RandCall> g_randCalls;
unsigned int g_nextDraw = 0;  // value the next Random::GetRandom call returns (reduced modulo the range)
std::vector<std::pair<int, bool>> g_localCalls;  // PlayerManager::GetLocalPlayer(localId, flag)

// ---- fake objects. The batch only reads a few fields of these, so zeroed storage of the right size stands in for them.
alignas(16) unsigned char g_appStore[sizeof(Application)];
alignas(16) unsigned char g_playerManagerStore[sizeof(PlayerManager)];
alignas(16) unsigned char g_playerInfoStore[sizeof(PlayerInfo)];
alignas(16) unsigned char g_localPlayerStore[sizeof(PlayerInfo)];
char g_charA;
char g_charB;
Level* g_currentLevel = nullptr;
PlayerInfo* g_hostPlayer = nullptr;
PlayerInfo* g_localPlayer = nullptr;
int g_characterLevel = 0;  // what NetStructMemberType<int32_t>::GetValue returns

Character* FakeCharacterA() { return reinterpret_cast<Character*>(&g_charA); }
Character* FakeCharacterB() { return reinterpret_cast<Character*>(&g_charB); }

}  // namespace

// ---- link-only definitions ----
namespace glitch::core {
unsigned int hashString(const char* text) {
    unsigned int h = 0;
    for (const char* p = text; *p != '\0'; ++p) {
        h = h * 131u + static_cast<unsigned char>(*p);
    }
    return h;
}
}  // namespace glitch::core

namespace sfc { namespace script { namespace lua {

Instance::Instance() {}
Instance::~Instance() {}
int Instance::includeBase() { g_instanceLog.push_back("includeBase"); return 0; }
int Instance::includeMath() { g_instanceLog.push_back("includeMath"); return 0; }
int Instance::includeTable() { g_instanceLog.push_back("includeTable"); return 0; }
int Instance::includeString() { g_instanceLog.push_back("includeString"); return 0; }
void Instance::pCall(const char* funcName, ReturnValues& ret) {
    g_pcalls.push_back({funcName, nullptr, &ret});
}
void Instance::pCall(const char* funcName, const Arguments& args, ReturnValues& ret) {
    g_pcalls.push_back({funcName, &args, &ret});
}

Binder::~Binder() {}
void Binder::bindFunction(const char* funcName,
                          void (*callback)(const Arguments& args, ReturnValues& ret, void* user), void* user) {
    g_bound.push_back({funcName, callback, user});
}

Arguments::Arguments() : m_values(new std::vector<Value>()) {}
Arguments::~Arguments() { delete m_values; }
const Value& Arguments::operator[](unsigned int index) const { return m_values->at(index); }

Value::Value()
    : m_type(0), m_number(0.0f), m_stringEnd(nullptr), m_string(nullptr), m_wstringEnd(nullptr), m_wstring(nullptr),
      m_pointer(nullptr) {}
Value::Value(const Value& other)
    : m_type(other.m_type), m_number(other.m_number), m_stringEnd(nullptr), m_string(other.m_string),
      m_wstringEnd(nullptr), m_wstring(nullptr), m_pointer(other.m_pointer) {}
Value::~Value() {}
Value& Value::operator=(const Value& other) {
    m_type = other.m_type;
    m_number = other.m_number;
    m_string = other.m_string;
    m_pointer = other.m_pointer;
    return *this;
}
float Value::getNumber() const { return m_number; }
bool Value::getBool() const { return m_number != 0.0f; }
const char* Value::getString() const { return m_string; }
void* Value::getPointer() const { return m_pointer; }

ReturnValues::ReturnValues() : m_valueList(new std::vector<Value>()) {}
ReturnValues::~ReturnValues() { delete m_valueList; }
void ReturnValues::pushInteger(int value) { g_pushed.push_back({'i', value, 0.0f, nullptr}); }
void ReturnValues::pushBoolean(bool value) { g_pushed.push_back({'b', value ? 1 : 0, 0.0f, nullptr}); }
void ReturnValues::pushNumber(float value) { g_pushed.push_back({'n', 0, value, nullptr}); }
void ReturnValues::pushUserData(UserData* userData) { g_pushed.push_back({'u', 0, 0.0f, userData}); }

}}}  // namespace sfc::script::lua

unsigned int Random::GetRandom(int range, bool synced) {
    g_randCalls.push_back({range, synced});
    return range > 0 ? g_nextDraw % static_cast<unsigned int>(range) : 0u;
}

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

PlayerInfo* PlayerManager::GetHostingPlayer() { return g_hostPlayer; }
PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    g_localCalls.emplace_back(localId, flag);
    return g_localPlayer;
}

template <> const std::int32_t& NetStructMemberType<std::int32_t>::GetValue() const { return g_characterLevel; }

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStore); }
Level* Application::GetCurrentLevel() const { return g_currentLevel; }
bool LuaManager::AddFile(LuaScript*, const char*) { std::abort(); }

// Part 2's sound bindings look up Arrays::Sounds by name; the table is not in this link.
namespace Arrays {
template <>
int GetMemberIDByString<Sounds>(const char* name) {
    return name == std::string("music_test") ? 7 : -1;
}
}  // namespace Arrays

// Part 3 (g1-game-app-LuaScript-5015a8-2.cpp) is not linked here. BindFunction takes the addresses of these callbacks,
// so each one needs a definition; their bodies are not under test.
void LuaScript::_Include(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_FromFixed(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_CallPyScript(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_GetCurrentLevelRange(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_GetGameObjectsByType(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_GetPyCst(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_GetPyStruct(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_GetPyOID(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_BitXOr(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_BitNot(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void LuaScript::_SetGameType(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}

// ---- helpers ----
namespace {

// Puts one number value per entry into the argument list (type tag 3, as the Value header defines it).
void FillNumbers(sfc::script::lua::Arguments& args, std::initializer_list<float> numbers) {
    for (float n : numbers) {
        sfc::script::lua::Value v;
        v.m_type = 3;
        v.m_number = n;
        args.m_values->push_back(v);
    }
}

void ResetRecords() {
    g_instanceLog.clear();
    g_bound.clear();
    g_pcalls.clear();
    g_pushed.clear();
    g_randCalls.clear();
    g_localCalls.clear();
}

// The one value pushed by the last binding, checked as an integer.
bool OnlyIntegerPushed(long long expected) {
    return g_pushed.size() == 1 && g_pushed[0].kind == 'i' && g_pushed[0].integer == expected;
}

// ---- checks ----

void TestBindingTable() {
    ResetRecords();
    LuaScript script(false);  // skipBindings false: the constructor runs BindFunction
    EXPECT((g_instanceLog == std::vector<std::string>{"includeBase", "includeMath", "includeTable", "includeString"}));

    struct Expected {
        const char* name;
        void (*callback)(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*);
    };
    const Expected expected[] = {
        {"Include", &LuaScript::_Include},
        {"Trace", &LuaScript::_Trace},
        {"SetInt", &LuaScript::_SetInt},
        {"GetInt", &LuaScript::_GetInt},
        {"AddToVFTable", &LuaScript::_AddToVFTable},
        {"PushVFTable", &LuaScript::_PushVFTable},
        {"PopVFTable", &LuaScript::_PopVFTable},
        {"ToFixed", &LuaScript::_ToFixed},
        {"FromFixed", &LuaScript::_FromFixed},
        {"MulFixed", &LuaScript::_MulFixed},
        {"DivFixed", &LuaScript::_DivFixed},
        {"Rand", &LuaScript::_Rand},
        {"RandF", &LuaScript::_RandF},
        {"BitNot", &LuaScript::_BitNot},
        {"BitAnd", &LuaScript::_BitAnd},
        {"BitOr", &LuaScript::_BitOr},
        {"BitXOr", &LuaScript::_BitXOr},
        {"GetPyCst", &LuaScript::_GetPyCst},
        {"GetPyStruct", &LuaScript::_GetPyStruct},
        {"GetPyOID", &LuaScript::_GetPyOID},
        {"CallPyScript", &LuaScript::_CallPyScript},
        {"GetNumPlayers", &LuaScript::_GetNumPlayers},
        {"GetHostPlayer", &LuaScript::_GetHostPlayer},
        {"GetHostPlayerLevel", &LuaScript::_GetHostPlayerLevel},
        {"GetHostPlayerDifficulty", &LuaScript::_GetHostPlayerDifficulty},
        {"GetCurrentLevelRange", &LuaScript::_GetCurrentLevelRange},
        {"GetGameObjectsByType", &LuaScript::_GetGameObjectsByType},
        {"SetGameType", &LuaScript::_SetGameType},
        {"GetGameScript", &LuaScript::_GetGameScript},
        {"OnTargetDied", &LuaScript::_IsPlayerCharacter},
        {"PlayMusic", &LuaScript::_PlayMusic},
        {"PlaySound", &LuaScript::_PlaySound},
        {"StopSound", &LuaScript::_StopSound},
    };
    const std::size_t count = sizeof(expected) / sizeof(expected[0]);
    EXPECT(g_bound.size() == count);
    for (std::size_t i = 0; i < count && i < g_bound.size(); ++i) {
        EXPECT(g_bound[i].name == expected[i].name);
        EXPECT(g_bound[i].callback == expected[i].callback);
        EXPECT(g_bound[i].user == &script);
    }
    EXPECT(script.m_binder.m_instance == &script.m_instance);
    EXPECT(script.m_binder.m_state == nullptr);
}

void TestSkipBindings() {
    ResetRecords();
    LuaScript script(true);
    EXPECT(g_bound.empty());
    EXPECT(g_instanceLog.empty());
    EXPECT(!script.m_vfTableCollecting);
}

void TestCallWithReturnValuesClearsAndMaps() {
    ResetRecords();
    LuaScript script(true);
    script.m_vfTable[glitch::core::hashString("Foo")] = "FooImpl";
    sfc::script::lua::ReturnValues ret;
    ret.m_valueList->push_back(sfc::script::lua::Value());
    ret.m_valueList->push_back(sfc::script::lua::Value());
    const int before = LuaScript::s_numCalls;

    script.Call("Foo", ret);
    EXPECT(ret.m_valueList->empty());  // the old results are cleared first
    EXPECT(g_pcalls.size() == 1);
    EXPECT(g_pcalls.size() == 1 && g_pcalls[0].name == "FooImpl");  // the mapped name is called
    EXPECT(g_pcalls.size() == 1 && g_pcalls[0].args == nullptr && g_pcalls[0].ret == &ret);
    EXPECT(LuaScript::s_numCalls == before + 1);

    script.Call("Bar", ret);  // unmapped: the name is passed as given
    EXPECT(g_pcalls.size() == 2 && g_pcalls[1].name == "Bar");
}

void TestCallWithArgumentsAndReturnValues() {
    ResetRecords();
    LuaScript script(true);
    script.m_vfTable[glitch::core::hashString("Foo")] = "FooImpl";
    sfc::script::lua::Arguments args;
    FillNumbers(args, {1.0f});
    sfc::script::lua::ReturnValues ret;
    ret.m_valueList->push_back(sfc::script::lua::Value());

    const int result = script.Call("Foo", args, ret);
    (void)result;  // the returned value is not recovered (see the batch notes)
    EXPECT(ret.m_valueList->empty());
    EXPECT(g_pcalls.size() == 1 && g_pcalls[0].name == "FooImpl");
    EXPECT(g_pcalls.size() == 1 && g_pcalls[0].args == &args && g_pcalls[0].ret == &ret);
}

void TestCallOverloadsBuildReturnValues() {
    ResetRecords();
    LuaScript script(true);
    sfc::script::lua::Arguments args;
    FillNumbers(args, {2.0f});

    script.Call("Foo", args);  // builds a ReturnValues and passes it on
    EXPECT(g_pcalls.size() == 1 && g_pcalls[0].name == "Foo");
    EXPECT(g_pcalls.size() == 1 && g_pcalls[0].args == &args && g_pcalls[0].ret != nullptr);

    script.Call("Baz");  // no arguments
    EXPECT(g_pcalls.size() == 2 && g_pcalls[1].name == "Baz");
    EXPECT(g_pcalls.size() == 2 && g_pcalls[1].args == nullptr && g_pcalls[1].ret != nullptr);
}

void TestMulFixed() {
    ResetRecords();
    LuaScript script(true);
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {300.0f, 1024.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_MulFixed(args, ret, &script);
        EXPECT(OnlyIntegerPushed(1200));  // (300 * 1024) >> 8
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {-300.0f, 1024.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_MulFixed(args, ret, &script);
        EXPECT(OnlyIntegerPushed(-1200));  // arithmetic shift of a negative product
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {1048576.0f, 1048576.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_MulFixed(args, ret, &script);
        EXPECT(OnlyIntegerPushed(0));  // 2^40 wraps to 0 in the 32-bit product
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {5.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_MulFixed(args, ret, &script);
        EXPECT(g_pushed.empty());  // fewer than two arguments: nothing happens
    }
}

int g_sigfpeCount = 0;
void CountSigfpe(int) { ++g_sigfpeCount; }

void TestDivFixed() {
    ResetRecords();
    LuaScript script(true);
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {1000.0f, 512.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_DivFixed(args, ret, &script);
        EXPECT(OnlyIntegerPushed(500));  // 1000 / (512 >> 8)
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {-1000.0f, 512.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_DivFixed(args, ret, &script);
        EXPECT(OnlyIntegerPushed(-500));  // truncating division
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments args;
        FillNumbers(args, {1000.0f, 256.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_DivFixed(args, ret, &script);
        EXPECT(OnlyIntegerPushed(1000));  // divisor 256 >> 8 = 1
    }
    ResetRecords();
    {
        // Divisor 100 >> 8 is zero: __aeabi_idiv0 raises SIGFPE and the quotient is the raise() result, 0.
        g_sigfpeCount = 0;
        void (*previous)(int) = std::signal(SIGFPE, CountSigfpe);
        sfc::script::lua::Arguments args;
        FillNumbers(args, {1000.0f, 100.0f});
        sfc::script::lua::ReturnValues ret;
        LuaScript::_DivFixed(args, ret, &script);
        std::signal(SIGFPE, previous);
        EXPECT(g_sigfpeCount == 1);
        EXPECT(OnlyIntegerPushed(0));
    }
}

void TestRand() {
    ResetRecords();
    LuaScript script(true);
    g_nextDraw = 5;
    sfc::script::lua::Arguments args;
    FillNumbers(args, {2.0f, 10.0f});
    sfc::script::lua::ReturnValues ret;
    LuaScript::_Rand(args, ret, &script);
    EXPECT(g_randCalls.size() == 1 && g_randCalls[0].range == 8 && !g_randCalls[0].synced);  // max - min, ordinary stream
    EXPECT(OnlyIntegerPushed(7));  // 5 % 8 + 2

    ResetRecords();
    g_nextDraw = 7;
    sfc::script::lua::Arguments negative;
    FillNumbers(negative, {-5.0f, -1.0f});
    sfc::script::lua::ReturnValues ret2;
    LuaScript::_Rand(negative, ret2, &script);
    EXPECT(OnlyIntegerPushed(-2));  // 7 % 4 + (-5)

    ResetRecords();
    sfc::script::lua::Arguments single;
    FillNumbers(single, {3.0f});
    sfc::script::lua::ReturnValues ret3;
    LuaScript::_Rand(single, ret3, &script);
    EXPECT(g_randCalls.empty() && g_pushed.empty());
}

void TestRandF() {
    ResetRecords();
    LuaScript script(true);
    g_nextDraw = 2;
    sfc::script::lua::Arguments args;
    FillNumbers(args, {1.5f, 4.5f});
    sfc::script::lua::ReturnValues ret;
    LuaScript::_RandF(args, ret, &script);
    EXPECT(g_randCalls.size() == 1 && g_randCalls[0].range == 3 && !g_randCalls[0].synced);  // (int)(4.5 - 1.5)
    EXPECT(g_pushed.size() == 1 && g_pushed[0].kind == 'n' && g_pushed[0].number == 3.5f);   // 1.5 + 2
}

void TestSetInt() {
    ResetRecords();
    LuaScript script(true);
    static char name[] = "alpha";
    sfc::script::lua::Arguments args;
    sfc::script::lua::Value nameValue;
    nameValue.m_type = 4;
    nameValue.m_string = name;
    args.m_values->push_back(nameValue);
    FillNumbers(args, {7.9f});
    sfc::script::lua::ReturnValues ret;
    LuaScript::_SetInt(args, ret, &script);
    EXPECT(script.GetInt("alpha") == 7);  // (int) of 7.9 truncates

    sfc::script::lua::Arguments short_args;
    short_args.m_values->push_back(nameValue);
    sfc::script::lua::ReturnValues ret2;
    LuaScript::_SetInt(short_args, ret2, &script);  // one argument: nothing is stored
    EXPECT(script.GetInt("alpha") == 7);
}

void TestIsPlayerCharacter() {
    ResetRecords();
    LuaScript script(true);
    g_localPlayer = reinterpret_cast<PlayerInfo*>(g_localPlayerStore);
    g_localPlayer->unk_660 = FakeCharacterA();
    {
        sfc::script::lua::Arguments args;
        sfc::script::lua::Value v;
        v.m_pointer = FakeCharacterA();
        args.m_values->push_back(v);
        sfc::script::lua::ReturnValues ret;
        LuaScript::_IsPlayerCharacter(args, ret, &script);
        EXPECT(g_pushed.size() == 1 && g_pushed[0].kind == 'b' && g_pushed[0].integer == 1);
        EXPECT(g_localCalls.size() == 1 && g_localCalls[0] == std::make_pair(0, true));
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments args;
        sfc::script::lua::Value v;
        v.m_pointer = FakeCharacterB();
        args.m_values->push_back(v);
        sfc::script::lua::ReturnValues ret;
        LuaScript::_IsPlayerCharacter(args, ret, &script);
        EXPECT(g_pushed.size() == 1 && g_pushed[0].kind == 'b' && g_pushed[0].integer == 0);
    }
    ResetRecords();
    {
        sfc::script::lua::Arguments empty;
        sfc::script::lua::ReturnValues ret;
        bool threw = false;
        try {
            LuaScript::_IsPlayerCharacter(empty, ret, &script);
        } catch (const std::out_of_range&) {
            threw = true;
        }
        EXPECT(threw);  // args[0] is read after the local player, as the original does
    }
}

void TestPlayerManagerQueries() {
    ResetRecords();
    LuaScript script(true);
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStore);
    dword_99F76C->m_numCharacters = 3;

    sfc::script::lua::Arguments args;
    sfc::script::lua::ReturnValues ret;
    LuaScript::_GetNumPlayers(args, ret, &script);
    EXPECT(OnlyIntegerPushed(3));

    ResetRecords();
    g_hostPlayer = reinterpret_cast<PlayerInfo*>(g_playerInfoStore);
    g_hostPlayer->unk_660 = FakeCharacterA();
    g_characterLevel = 4;
    LuaScript::_GetHostPlayerLevel(args, ret, &script);
    EXPECT(OnlyIntegerPushed(4));

    ResetRecords();
    LuaScript::_GetHostPlayer(args, ret, &script);
    EXPECT(g_pushed.size() == 1 && g_pushed[0].kind == 'u' && g_pushed[0].pointer == FakeCharacterA());
}

void TestDifficultyWithoutLevel() {
    ResetRecords();
    LuaScript script(true);
    g_currentLevel = nullptr;
    sfc::script::lua::Arguments args;
    sfc::script::lua::ReturnValues ret;
    LuaScript::_GetHostPlayerDifficulty(args, ret, &script);
    EXPECT(OnlyIntegerPushed(0));
}

}  // namespace

int main() {
    TestBindingTable();
    TestSkipBindings();
    TestCallWithReturnValuesClearsAndMaps();
    TestCallWithArgumentsAndReturnValues();
    TestCallOverloadsBuildReturnValues();
    TestMulFixed();
    TestDivFixed();
    TestRand();
    TestRandF();
    TestSetInt();
    TestIsPlayerCharacter();
    TestPlayerManagerQueries();
    TestDifficultyWithoutLevel();
    if (g_failures == 0) {
        std::printf("r2a-game-app-LuaScript-5015a8-0: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-app-LuaScript-5015a8-0: %d check(s) failed\n", g_failures);
    return 1;
}
