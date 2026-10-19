// Test for batch r2a-game-app-LuaScript-5015a8-1 (redo). It drives the reconstructed bindings of
// g1-game-app-LuaScript-5015a8-1.cpp and -2.cpp through an argument list built in this file, with the sfc, Application,
// ScriptManager and pydata symbols stubbed in luascript_link_stubs.hpp (their recorded calls are checked here). It also
// checks the value rules of luascript_g1 that the batch's bodies use. Build and run from the worktree root with
// bash tools/trackb/check_tu.sh --test <this file> <g1-game-app-LuaScript-5015a8-1.cpp> <g1-game-app-LuaScript-5015a8-2.cpp>
// Exit status 0 means every check passed.
#include <cstddef>
#include <cstdio>
#include <optional>
#include <stdexcept>
#include <utility>
#include <vector>

#include "glitch-core-io/core/strings.hpp"
#include "luascript_link_stubs.hpp"
#include "vox-audio/vox/sound_manager.hpp"  // VoxSoundManager: a real instance for the _PlaySound/_PlayMusic reaches

// Value rules of luascript_g1 (declared as in g1-game-app-LuaScript-5015a8-2.cpp).
namespace luascript_g1 {
int FloatToInt32(float value);
unsigned FloatToUInt32(float value);
struct FixedParts {
    int integer;
    float scaled;
};
FixedParts SplitFixed(float value);
int BitXOr(float first, float second);
int BitNot(float first);
int LevelRangeSelector(bool firstIsNumber, float firstValue);
std::optional<std::pair<int, int>> LevelRangeFor(int selector, int w12, int w13, int w14, int w15, int w16, int w17);
std::vector<std::size_t> SelectTypeMatches(const std::vector<bool>& matches, unsigned skip);
bool IsValidGameType(unsigned value);
}  // namespace luascript_g1

// Stand-in for glitch::core::hashString (0x37c164). Deterministic; the real hash is not reproduced here.
namespace glitch::core {
unsigned int hashString(const char* text) {
    unsigned int h = 0;
    for (const char* p = text; *p != '\0'; ++p) {
        h = h * 131u + static_cast<unsigned char>(*p);
    }
    return h;
}
}  // namespace glitch::core

// Stand-ins for the LuaScript constructor (0x37c584) and destructor (0x37bec0). The script state and binder members are
// stubbed in luascript_link_stubs.hpp, so these bodies only need to exist.
LuaScript::LuaScript(bool) {}
LuaScript::~LuaScript() {}

// The three VoxSoundManager calls the sound bindings reach. They are seams: the bindings' own bodies are what this test
// checks (the argument rules and the early return), and the calls themselves are decoded and checked by the vox-audio
// tests. The real bodies would need the manager's arrays and the VoxEngine, which a single-file test has no way to build
// (VoxSoundManager::Play reads sounds_[SoundRecord(sound).m_w1] through Arrays::Sounds::members). Making them no-ops
// keeps the "the call is reached" checks of TestSoundArgumentChecks meaningful.
int VoxSoundManager::Play(int, bool, int, int, bool) { return 0; }
void VoxSoundManager::PlayMusic(int, bool, bool, int) {}
void VoxSoundManager::Stop(int, int) {}

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// An argument list: the vector of Values and the Arguments object that reads it (Arguments::m_values points at it).
struct Args {
    std::vector<sfc::script::lua::Value> values;
    sfc::script::lua::Arguments args;

    Args() { args.m_values = &values; }

    Args& number(float value) {
        values.emplace_back();
        values.back().m_type = 3;
        values.back().m_number = value;
        return *this;
    }
    Args& string(const char* value) {
        values.emplace_back();
        values.back().m_type = 4;
        values.back().m_string = const_cast<char*>(value);
        return *this;
    }
    Args& boolean(bool value) {
        values.emplace_back();
        values.back().m_type = 1;
        values.back().m_number = value ? 1.0f : 0.0f;
        return *this;
    }
};

void ResetRecords() {
    g_pushedIntegers.clear();
    g_pushedNumbers.clear();
    g_loadedFiles.clear();
    g_startCalls.clear();
}

// ---- value rules ----

void TestValueRules() {
    const luascript_g1::FixedParts a = luascript_g1::SplitFixed(512.0f);
    CHECK(a.integer == 2 && a.scaled == 2.0f);
    const luascript_g1::FixedParts b = luascript_g1::SplitFixed(-256.0f);
    CHECK(b.integer == -1 && b.scaled == -1.0f);
    CHECK(luascript_g1::FloatToInt32(3.0e9f) == 2147483647);
    CHECK(luascript_g1::FloatToInt32(-3.0e9f) == -2147483647 - 1);
    CHECK(luascript_g1::FloatToInt32(1.0f / 0.0f * 0.0f) == 0);
    CHECK(luascript_g1::BitXOr(6.0f, 3.0f) == 5);
    CHECK(luascript_g1::BitNot(0.0f) == -1);
    CHECK(luascript_g1::BitNot(1.5f) == ~1);
    CHECK(luascript_g1::IsValidGameType(3) && !luascript_g1::IsValidGameType(4));
    const std::vector<std::size_t> picked = luascript_g1::SelectTypeMatches({true, false, true, true}, 1);
    CHECK(picked.size() == 2 && picked[0] == 2 && picked[1] == 3);
}

// ---- bindings over an argument list ----

void TestBitOrAnd() {
    sfc::script::lua::ReturnValues ret;
    ResetRecords();
    {
        Args a;
        a.number(6.0f).number(3.0f);
        LuaScript::_BitOr(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(1.0f).number(2.0f).number(4.0f);
        LuaScript::_BitOr(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == 7 && g_pushedIntegers[1] == 7);

    ResetRecords();
    {
        Args a;
        a.number(6.0f);
        LuaScript::_BitOr(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(6.0f).string("x");
        LuaScript::_BitOr(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.empty());

    ResetRecords();
    {
        Args a;
        a.number(6.0f).number(3.0f);
        LuaScript::_BitAnd(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(7.0f).number(5.0f).number(3.0f);
        LuaScript::_BitAnd(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(6.0f).boolean(true);
        LuaScript::_BitAnd(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == 2 && g_pushedIntegers[1] == 1);
}

void TestToFixedAndBitXOr() {
    sfc::script::lua::ReturnValues ret;
    ResetRecords();
    {
        Args a;
        a.number(1.5f);
        LuaScript::_ToFixed(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(-1.0f);
        LuaScript::_ToFixed(a.args, ret, nullptr);
    }
    {
        Args a;
        LuaScript::_ToFixed(a.args, ret, nullptr);
    }
    // (int)1.5f is 1, and 1 << 8 is 256; (int)-1.0f << 8 is -256.
    CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == 256 && g_pushedIntegers[1] == -256);

    ResetRecords();
    {
        Args a;
        a.number(6.0f).number(3.0f);
        LuaScript::_BitXOr(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(6.0f);
        LuaScript::_BitXOr(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(6.0f).number(3.0f).number(1.0f);
        LuaScript::_BitXOr(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(0.0f);
        LuaScript::_BitNot(a.args, ret, nullptr);
    }
    {
        Args a;
        a.number(1.0f).number(2.0f);
        LuaScript::_BitNot(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == 5 && g_pushedIntegers[1] == -1);
}

void TestFromFixed() {
    sfc::script::lua::ReturnValues ret;
    ResetRecords();
    Args a;
    a.number(512.0f);
    LuaScript::_FromFixed(a.args, ret, nullptr);
    CHECK(g_pushedIntegers.size() == 1 && g_pushedIntegers[0] == 2);
    CHECK(g_pushedNumbers.size() == 1 && g_pushedNumbers[0] == 2.0f);
}

void TestGetIntAndVFTable() {
    LuaScript s(true);
    sfc::script::lua::ReturnValues ret;
    s.SetInt("alpha", 42);

    ResetRecords();
    {
        Args a;
        a.string("alpha");
        LuaScript::_GetInt(a.args, ret, &s);
    }
    {
        Args a;
        a.string("beta");
        LuaScript::_GetInt(a.args, ret, &s);
    }
    CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == 42 && g_pushedIntegers[1] == 0);
    CHECK(s.m_ints.count(glitch::core::hashString("beta")) == 1);

    // Collecting: the first override saves the original, a second one keeps the saved value.
    const unsigned int fn = glitch::core::hashString("fnA");
    s.m_vfTable[fn] = "orig";
    s.m_vfTableCollecting = true;
    {
        Args a;
        a.string("fnA").string("over");
        LuaScript::_AddToVFTable(a.args, ret, &s);
    }
    CHECK(s.m_vfTableSaved.count(fn) == 1 && s.m_vfTableSaved[fn] == "orig");
    CHECK(s.m_vfTable[fn] == "over");
    {
        Args a;
        a.string("fnA").string("over2");
        LuaScript::_AddToVFTable(a.args, ret, &s);
    }
    CHECK(s.m_vfTableSaved[fn] == "orig" && s.m_vfTable[fn] == "over2");
    {
        Args a;
        a.string("fnA").string("over2");
        LuaScript::_PopVFTable(a.args, ret, &s);
    }
    CHECK(s.m_vfTable[fn] == "orig" && s.m_vfTableSaved.empty() && !s.m_vfTableCollecting);

    // Not collecting: the override is written and nothing is saved.
    const unsigned int fnB = glitch::core::hashString("fnB");
    {
        Args a;
        a.string("fnB").string("x");
        LuaScript::_AddToVFTable(a.args, ret, &s);
    }
    CHECK(s.m_vfTable[fnB] == "x" && s.m_vfTableSaved.empty());

    // A non-string second argument leaves the table alone.
    {
        Args a;
        a.string("fnC").number(1.0f);
        LuaScript::_AddToVFTable(a.args, ret, &s);
    }
    CHECK(s.m_vfTable.count(glitch::core::hashString("fnC")) == 0);
}

void TestIncludeAndCallPyScript() {
    sfc::script::lua::ReturnValues ret;
    LuaScript s(true);
    ResetRecords();
    {
        Args a;
        a.string("data/scripts/lib");
        LuaScript::_Include(a.args, ret, &s);
    }
    {
        Args a;
        a.number(1.0f);
        LuaScript::_Include(a.args, ret, &s);
    }
    CHECK(g_loadedFiles.size() == 1 && g_loadedFiles[0] == "data/scripts/lib");

    g_scriptIdForName = 4;
    g_scriptRunning = false;
    {
        Args a;
        a.string("lib");
        LuaScript::_CallPyScript(a.args, ret, &s);
    }
    CHECK(g_lastScriptName == "lib");
    CHECK(g_startCalls.size() == 1 && g_startCalls[0].id == 4 && g_startCalls[0].module == -1 &&
          !g_startCalls[0].fromRemote);

    ResetRecords();
    g_scriptRunning = true;
    {
        Args a;
        a.string("lib");
        LuaScript::_CallPyScript(a.args, ret, &s);
    }
    CHECK(g_startCalls.empty());

    g_scriptRunning = false;
    g_scriptIdForName = -1;
    {
        Args a;
        a.string("missing");
        LuaScript::_CallPyScript(a.args, ret, &s);
    }
    CHECK(g_startCalls.empty());
    g_scriptIdForName = -1;
}

void TestPyLookups() {
    sfc::script::lua::ReturnValues ret;
    alignas(PyDataConstants) static unsigned char constStorage[sizeof(PyDataConstants)] = {};
    alignas(PyDataArrays) static unsigned char arraysStorage[sizeof(PyDataArrays)] = {};
    g_application->m_pyDataConstants = reinterpret_cast<PyDataConstants*>(constStorage);
    g_application->m_pyDataArrays = reinterpret_cast<PyDataArrays*>(arraysStorage);

    ResetRecords();
    g_constantValue = 99;
    g_oidValue = 5;
    {
        Args a;
        a.string("ClassA").string("ConstB");
        LuaScript::_GetPyCst(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 1 && g_pushedIntegers[0] == 99);
    CHECK(g_lastConstantClass == "ClassA" && g_lastConstantName == "ConstB");

    {
        Args a;
        a.string("ClassOID").string("arg");
        LuaScript::_GetPyOID(a.args, ret, nullptr);
    }
    {
        Args a;
        a.string("ClassStruct").string("arg2");
        LuaScript::_GetPyStruct(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 3 && g_pushedIntegers[1] == 5 && g_pushedIntegers[2] == 5);
    CHECK(g_lastOidClass == "ClassStruct" && g_lastOidArg == "arg2");

    // One argument, or a non-string second argument, pushes nothing.
    {
        Args a;
        a.string("ClassA");
        LuaScript::_GetPyCst(a.args, ret, nullptr);
    }
    {
        Args a;
        a.string("ClassA").number(1.0f);
        LuaScript::_GetPyOID(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 3);
}

void TestCurrentLevelRange() {
    sfc::script::lua::ReturnValues ret;
    alignas(Level) static unsigned char levelStorage[sizeof(Level)] = {};
    alignas(Structs::LevelDeclaration) static unsigned char rowStorage[2 * sizeof(Structs::LevelDeclaration)] = {};
    Level* level = reinterpret_cast<Level*>(levelStorage);
    g_currentLevel = level;
    level->m_levelListIndex = 1;

    // Row 1 holds m_w12..m_w17 = 10..15 (the file fields at +0x30..+0x44).
    Structs::LevelDeclaration* rows = reinterpret_cast<Structs::LevelDeclaration*>(rowStorage);
    rows[1].MonsterLvlMax = 10;
    rows[1].MonsterLvlMaxHard = 11;
    rows[1].MonsterLvlMaxNightmare = 12;
    rows[1].MonsterLvlMin = 13;
    rows[1].MonsterLvlMinHard = 14;
    rows[1].MonsterLvlMinNightmare = 15;
    Arrays::LevelList::members = rowStorage;

    struct Case {
        int selector;  // -1 for no argument, -2 for a string argument
        int first;
        int second;
        bool pushes;
    };
    const Case cases[] = {
        {-1, 13, 10, true},  // no argument: selector 0 gives (m_w15, m_w12)
        {-2, 13, 10, true},  // a string is not a number: selector 0
        {0, 13, 10, true},
        {1, 14, 11, true},   // (m_w16, m_w13)
        {2, 15, 12, true},   // (m_w17, m_w14)
        {3, 0, 0, false},    // other selectors push nothing
    };
    for (const Case& c : cases) {
        ResetRecords();
        Args a;
        if (c.selector == -1) {
            // no argument
        } else if (c.selector == -2) {
            a.string("x");
        } else {
            a.number(static_cast<float>(c.selector));
        }
        LuaScript::_GetCurrentLevelRange(a.args, ret, nullptr);
        if (c.pushes) {
            CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == c.first && g_pushedIntegers[1] == c.second);
        } else {
            CHECK(g_pushedIntegers.empty());
        }
    }

    level->m_levelListIndex = -1;
    ResetRecords();
    {
        Args a;
        LuaScript::_GetCurrentLevelRange(a.args, ret, nullptr);
    }
    CHECK(g_pushedIntegers.size() == 2 && g_pushedIntegers[0] == -1 && g_pushedIntegers[1] == -1);
    g_currentLevel = nullptr;
}

void TestSoundArgumentChecks() {
    sfc::script::lua::ReturnValues ret;
    // VoxSoundManager::s_instance. The library's own definition leaves it null (vox-audio/src/link1_VoxSoundManager_statics.cpp)
    // and only CreateInstance (0x36ca88, a skipped row) ever sets it, while _PlaySound/_PlayMusic/_StopSound dereference
    // it unconditionally, exactly as the listing does. This test passed nullptr as the binding's self and let s_instance
    // stay null, so the "sound call is reached (not written) without a throw" check below faulted on a null this. As
    // with the GSFlashMenu batch, the test now owns a real instance for the length of the check.
    VoxSoundManager sounds;
    VoxSoundManager* const savedInstance = VoxSoundManager::s_instance;
    VoxSoundManager::s_instance = &sounds;
    // _PlaySound reads args[3] first: fewer than four arguments throw out_of_range, as the original does.
    bool threw = false;
    try {
        Args a;
        a.string("music_test").boolean(true).number(1.0f);
        LuaScript::_PlaySound(a.args, ret, nullptr);
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(threw);

    // With four arguments and a known name, the sound call is reached (not written) without a throw.
    threw = false;
    try {
        Args a;
        a.string("music_test").boolean(true).number(1.0f).boolean(false);
        LuaScript::_PlaySound(a.args, ret, nullptr);
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(!threw);

    // _StopSound and _PlayMusic need a second argument once the name is known; an unknown name returns early.
    threw = false;
    try {
        Args a;
        a.string("music_test");
        LuaScript::_StopSound(a.args, ret, nullptr);
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(threw);

    threw = false;
    try {
        Args a;
        a.string("unknown_name");
        LuaScript::_PlayMusic(a.args, ret, nullptr);
        LuaScript::_StopSound(a.args, ret, nullptr);
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(!threw);

    threw = false;
    try {
        Args a;
        a.string("music_test");
        LuaScript::_PlayMusic(a.args, ret, nullptr);
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(threw);

    VoxSoundManager::s_instance = savedInstance;
}

}  // namespace

int main() {
    TestValueRules();
    TestBitOrAnd();
    TestToFixedAndBitXOr();
    TestFromFixed();
    TestGetIntAndVFTable();
    TestIncludeAndCallPyScript();
    TestPyLookups();
    TestCurrentLevelRange();
    TestSoundArgumentChecks();
    if (g_failures == 0) {
        std::printf("r2a-game-app-LuaScript-5015a8-1: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-app-LuaScript-5015a8-1: %d check(s) failed\n", g_failures);
    return 1;
}
