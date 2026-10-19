// Test for batch g1-game-app-LuaScript-5015a8-1. Covers the script-side integer table (SetInt, GetInt and the insert of an
// absent name, the const member) and the vtable-override restore of _PopVFTable. The LuaScript constructor and destructor
// (defined by another batch) and glitch::core::hashString are stubbed here, so the batch source links alone. The bindings
// that read Lua arguments are partial and are not exercised. Exit status 0 means every check passed.
#include <cstdio>

#include "dh2/LuaScript.hpp"
#include "glitch-core-io/core/strings.hpp"
#include "luascript_link_stubs.hpp"  // sfc, Application, ScriptManager and player symbols the bindings in the source reference

// Stand-in for glitch::core::hashString (0x37c164). Deterministic and collision-free for the names used here; the real
// hash is not reproduced in this test.
namespace glitch::core {
unsigned int hashString(const char* text) {
    unsigned int h = 0;
    for (const char* p = text; *p != '\0'; ++p) {
        h = h * 131u + static_cast<unsigned char>(*p);
    }
    return h;
}
}  // namespace glitch::core

// Stand-ins for the LuaScript constructor (0x37c584) and destructor (0x37bec0). An empty body still constructs and destroys
// the member maps and strings.
LuaScript::LuaScript(bool) {}
LuaScript::~LuaScript() {}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// _PopVFTable does not read its argument list or return value, so references to a dummy byte stand in for them.
char g_dummy;

const sfc::script::lua::Arguments& NoArgs() {
    return *reinterpret_cast<const sfc::script::lua::Arguments*>(&g_dummy);
}

sfc::script::lua::ReturnValues& NoRet() {
    return *reinterpret_cast<sfc::script::lua::ReturnValues*>(&g_dummy);
}

void TestSetAndGet() {
    LuaScript s(true);
    s.SetInt("alpha", 42);
    Check(s.GetInt("alpha") == 42, "SetInt stores the value that GetInt returns");
    s.SetInt("alpha", -7);
    Check(s.GetInt("alpha") == -7, "SetInt overwrites an existing name");
    s.SetInt("beta", 5);
    Check(s.GetInt("alpha") == -7 && s.GetInt("beta") == 5, "names are independent");
}

void TestAbsentNameInsertsZero() {
    LuaScript s(true);
    Check(s.m_ints.empty(), "a fresh table is empty");
    Check(s.GetInt("gamma") == 0, "an absent name reads as 0");
    Check(s.m_ints.size() == 1, "an absent name is inserted");
    Check(s.m_ints.count(glitch::core::hashString("gamma")) == 1, "the inserted key is the hash of the name");
    s.SetInt("gamma", 9);
    Check(s.GetInt("gamma") == 9, "GetInt sees a later SetInt");
}

void TestGetIntIsConst() {
    LuaScript s(true);
    s.SetInt("delta", 3);
    const LuaScript& c = s;
    Check(c.GetInt("delta") == 3, "GetInt is callable on a const LuaScript");
    Check(c.GetInt("epsilon") == 0, "GetInt on a const LuaScript inserts an absent name as 0");
    Check(s.m_ints.size() == 2, "the const insert reaches the object");
}

void TestPopRestoresSavedValues() {
    LuaScript s(true);
    const unsigned int hA = glitch::core::hashString("alphaFn");
    const unsigned int hB = glitch::core::hashString("betaFn");
    const unsigned int hC = glitch::core::hashString("gammaFn");
    // While collecting, alphaFn and betaFn were overridden. Their originals were saved: alphaFn had "orig_a", betaFn had
    // no entry (saved as the empty string). gammaFn was never overridden.
    s.m_vfTable[hA] = "over_a";
    s.m_vfTable[hB] = "over_b";
    s.m_vfTable[hC] = "keep_c";
    s.m_vfTableSaved[hA] = "orig_a";
    s.m_vfTableSaved[hB] = "";
    s.m_vfTableCollecting = true;

    LuaScript::_PopVFTable(NoArgs(), NoRet(), &s);

    Check(s.m_vfTable.count(hA) == 1 && s.m_vfTable[hA] == "orig_a", "a saved non-empty value is restored");
    Check(s.m_vfTable.count(hB) == 0, "a saved empty value removes the override");
    Check(s.m_vfTable.count(hC) == 1 && s.m_vfTable[hC] == "keep_c", "entries outside the saved map are left alone");
    Check(s.m_vfTableSaved.empty(), "the saved map is emptied");
    Check(!s.m_vfTableCollecting, "the collecting flag is cleared");
}

void TestPopInsertsMissingKey() {
    LuaScript s(true);
    const unsigned int h = glitch::core::hashString("epsilonFn");
    s.m_vfTableSaved[h] = "orig_e";
    s.m_vfTableCollecting = true;

    LuaScript::_PopVFTable(NoArgs(), NoRet(), &s);

    Check(s.m_vfTable.count(h) == 1 && s.m_vfTable[h] == "orig_e", "a saved value is put back when the key had no override");
    Check(s.m_vfTableSaved.empty() && !s.m_vfTableCollecting, "the saved map is emptied and collecting is cleared");
}

void TestPopWithNoSavedEntries() {
    LuaScript s(true);
    s.m_vfTable[1u] = "x";
    s.m_vfTableCollecting = true;

    LuaScript::_PopVFTable(NoArgs(), NoRet(), &s);

    Check(s.m_vfTable.size() == 1 && s.m_vfTable[1u] == "x", "an empty saved map leaves the table alone");
    Check(!s.m_vfTableCollecting, "the collecting flag is cleared even with nothing saved");
}

}  // namespace

int main() {
    TestSetAndGet();
    TestAbsentNameInsertsZero();
    TestGetIntIsConst();
    TestPopRestoresSavedValues();
    TestPopInsertsMissingKey();
    TestPopWithNoSavedEntries();
    if (g_failures == 0) {
        std::printf("g1-game-app-LuaScript-5015a8-1: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-LuaScript-5015a8-1: %d check(s) failed\n", g_failures);
    return 1;
}
