// Test for the LuaScript batch g1-game-app-LuaScript-5015a8-0.
// Covers the state and lookup logic that needs no Lua runtime: the constructor's initial state, the
// virtual-function table lookups (IsInVFTable, _GetFuncName) and the destructor. The Lua-facing bodies
// (Call, BindFunction, the callbacks) are partial and are not exercised. Returns non-zero on failure.
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/LuaScript.hpp"
#include "glitch-core-io/core/strings.hpp"

// Link-only definitions. The batch's Load and _GetHostPlayerDifficulty reference these; the test never calls them.
Application& ApplicationGetInstance() { std::abort(); }
Level* Application::GetCurrentLevel() const { std::abort(); }
bool LuaManager::AddFile(LuaScript*, const char*) { std::abort(); }

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                          \
    do {                                                                                      \
        if (!(cond)) {                                                                        \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond);   \
            ++g_failures;                                                                     \
        }                                                                                     \
    } while (0)

// Stores a mapping the way _AddToVFTable does: keyed by the hash of the original name.
void addEntry(LuaScript& script, const char* name, const char* mapped) {
    script.m_vfTable[glitch::core::hashString(name)] = mapped;
}

void testConstructorState() {
    LuaScript script(true);  // skipBindings: BindFunction is not run
    EXPECT(!script.m_vfTableCollecting);
    EXPECT(script.m_vfTable.empty());
    EXPECT(script.m_vfTableSaved.empty());
    EXPECT(script.m_ints.empty());
    EXPECT(script.m_scriptDirectory.empty());
    EXPECT(script.unk_80.empty());
}

void testLookupOnEmptyTable() {
    LuaScript script(true);
    const char* name = "Foo";
    EXPECT(!script.IsInVFTable(name));
    EXPECT(script._GetFuncName(name) == name);  // unmapped: the argument itself
}

void testLookupMapped() {
    LuaScript script(true);
    addEntry(script, "Foo", "FooImpl");
    addEntry(script, "Bar", "BarImpl");
    EXPECT(script.IsInVFTable("Foo"));
    EXPECT(script.IsInVFTable("Bar"));
    EXPECT(!script.IsInVFTable("Baz"));
    EXPECT(std::string(script._GetFuncName("Foo")) == "FooImpl");
    EXPECT(std::string(script._GetFuncName("Bar")) == "BarImpl");
    const char* unmapped = "Baz";
    EXPECT(script._GetFuncName(unmapped) == unmapped);
}

void testLookupAfterCollectionFlag() {
    // _PushVFTable only sets the collection state; the mapped table is not touched by it.
    LuaScript script(true);
    addEntry(script, "Foo", "FooImpl");
    script.m_vfTableCollecting = true;
    EXPECT(script.IsInVFTable("Foo"));
    EXPECT(std::string(script._GetFuncName("Foo")) == "FooImpl");
}

void testDestructorWithEntries() {
    // The destructor must run cleanly on an object that holds mapped names.
    LuaScript* script = new LuaScript(true);
    addEntry(*script, "Foo", "FooImpl");
    delete script;
}

}  // namespace

int main() {
    testConstructorState();
    testLookupOnEmptyTable();
    testLookupMapped();
    testLookupAfterCollectionFlag();
    testDestructorWithEntries();
    if (g_failures != 0) {
        std::fprintf(stderr, "LuaScript test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("LuaScript test passed\n");
    return 0;
}
