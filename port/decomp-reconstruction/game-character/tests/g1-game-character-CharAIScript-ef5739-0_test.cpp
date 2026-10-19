// Test for batch g1-game-character-CharAIScript-ef5739-0.
//
// Runs without the engine. CharAIScript is abstract, so no object is constructed: its storage is zero-filled, the
// state table m_states is constructed in place, and every function is called qualified (non-virtual), so the zero
// vptr is never used. Covered: the four CallState* dispatchers, the _State copy and default constructors, the Lua
// bindings CharAIScriptBindFunction and BindFunction (against a recording Binder), and the Lua callbacks
// _RegisterState and _ChangeState. Their Arguments are zero-filled storage whose m_values points at a test vector of
// Values. LuaScript::Call records the names it is given.
//
// The stubs below define what the rebuilt CharAIScript code links against: gAssertLevel, the LuaScript members, the
// default constructors and destructors of the Instance and Binder members that LuaScript embeds, Binder::bindFunction,
// and Value's default constructor, destructor and getString.

#include <cstddef>
#include <cstdio>
#include <cstring>
#include <map>
#include <new>
#include <string>
#include <vector>

#include "dh2/CharAIScript.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

// Global assert level, read by CharAIScript::SetCharacter (not called here).
int gAssertLevel = 0;

namespace luaif = sfc::script::lua;

namespace {

using StateMap = std::map<std::string, CharAIScript::_State>;

std::vector<std::string> g_calls;                                  // LuaScript::Call names, in order
std::vector<std::string> g_bindNames;                              // Binder::bindFunction names, in order
std::vector<void (*)(const luaif::Arguments&, luaif::ReturnValues&, void*)> g_bindCallbacks;
std::vector<void*> g_bindUsers;
int g_luaBindCalls = 0;                                            // LuaScript::BindFunction calls
int g_failures = 0;

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Zero-filled storage for the CharAIScript that is never constructed. Only m_currentState (+0xb4) and the state
// table (constructed in place by MakeAI) are used.
alignas(CharAIScript) unsigned char g_storage[sizeof(CharAIScript)];

CharAIScript* MakeAI() {
    std::memset(g_storage, 0, sizeof(g_storage));
    CharAIScript* ai = reinterpret_cast<CharAIScript*>(g_storage);
    new (&ai->m_states) StateMap();
    return ai;
}

// Zero-filled Arguments and ReturnValues. Only the m_values pointer of the Arguments is set; no member is called.
alignas(luaif::Arguments) unsigned char g_argsStorage[sizeof(luaif::Arguments)];
alignas(luaif::ReturnValues) unsigned char g_retStorage[sizeof(luaif::ReturnValues)];

const luaif::Arguments& MakeArgs(std::vector<luaif::Value>& values) {
    std::memset(g_argsStorage, 0, sizeof(g_argsStorage));
    luaif::Arguments* args = reinterpret_cast<luaif::Arguments*>(g_argsStorage);
    args->m_values = &values;
    return *args;
}

luaif::ReturnValues& MakeReturn() {
    std::memset(g_retStorage, 0, sizeof(g_retStorage));
    return *reinterpret_cast<luaif::ReturnValues*>(g_retStorage);
}

// A Lua string value (type tag 4).
void SetString(luaif::Value& v, const char* s) {
    v.m_type = 4;
    v.m_string = const_cast<char*>(s);
}

}  // namespace

// ---- LuaScript stubs ----
// The constructor and destructor run the default constructors and destructors of m_instance and m_binder.

LuaScript::LuaScript(bool) {}
LuaScript::~LuaScript() {}
void LuaScript::BindFunction() { ++g_luaBindCalls; }
void LuaScript::Call(const char* funcName) { g_calls.emplace_back(funcName); }

// ---- sfc::script::lua stubs (the Instance and Binder members, the Binder registration, and the Value accessors) ----

namespace sfc {
namespace script {
namespace lua {

Instance::Instance() {}
Instance::~Instance() {}

Binder::~Binder() {}
void Binder::bindFunction(const char* funcName,
                          void (*callback)(const Arguments& args, ReturnValues& ret, void* user),
                          void* user) {
    g_bindNames.emplace_back(funcName);
    g_bindCallbacks.push_back(callback);
    g_bindUsers.push_back(user);
}

Value::Value() : m_type(0), m_string(nullptr) {}
Value::~Value() {}
const char* Value::getString() const { return m_string; }

}  // namespace lua
}  // namespace script
}  // namespace sfc

// ---- Checks ----

int main() {
    CharAIScript* ai = MakeAI();

    // ---- Dispatchers: no current state runs nothing ----
    ai->m_currentState = nullptr;
    ai->CharAIScript::CallStatePost();
    ai->CharAIScript::CallStateInit();
    ai->CharAIScript::CallStateConditions();
    ai->CharAIScript::CallStateUpdate();
    Expect(g_calls.empty(), "no current state: nothing is called");

    // A current state with four distinct names: each dispatcher runs its own field.
    CharAIScript::_State st;
    st.m_update = "Upd";
    st.m_conditions = "Cond";
    st.m_init = "Init";
    st.m_post = "Post";
    ai->m_currentState = &st;

    g_calls.clear();
    ai->CharAIScript::CallStateInit();
    Expect(g_calls == std::vector<std::string>{"Init"}, "CallStateInit runs m_init");

    g_calls.clear();
    ai->CharAIScript::CallStateConditions();
    Expect(g_calls == std::vector<std::string>{"Cond"}, "CallStateConditions runs m_conditions");

    g_calls.clear();
    ai->CharAIScript::CallStateUpdate();
    Expect(g_calls == std::vector<std::string>{"Upd"}, "CallStateUpdate runs m_update");

    g_calls.clear();
    ai->CharAIScript::CallStatePost();
    Expect(g_calls == std::vector<std::string>{"Post"}, "CallStatePost runs m_post");

    // The names are read at call time: a change to the state shows in the next call.
    st.m_post = "Post2";
    g_calls.clear();
    ai->CharAIScript::CallStatePost();
    Expect(g_calls == std::vector<std::string>{"Post2"}, "CallStatePost reads m_post at call time");

    // Switching the current state to another one changes what the dispatchers run.
    CharAIScript::_State other;
    other.m_init = "Init2";
    ai->m_currentState = &other;
    g_calls.clear();
    ai->CharAIScript::CallStateInit();
    Expect(g_calls == std::vector<std::string>{"Init2"}, "CallStateInit follows the current state");

    // The copy constructor copies all four names; the default constructor leaves them empty.
    CharAIScript::_State copy(st);
    Expect(copy.m_update == "Upd" && copy.m_conditions == "Cond" && copy.m_init == "Init" && copy.m_post == "Post2",
           "_State copy keeps the four names");

    CharAIScript::_State empty;
    Expect(empty.m_update.empty() && empty.m_conditions.empty() && empty.m_init.empty() && empty.m_post.empty(),
           "_State default is empty");

    // ---- Bindings: RegisterAIState then ChangeAIState, each with userData = this ----
    ai->CharAIScriptBindFunction();
    Expect(g_bindNames == std::vector<std::string>{"RegisterAIState", "ChangeAIState"},
           "CharAIScriptBindFunction binds RegisterAIState then ChangeAIState");
    Expect(g_bindCallbacks.size() == 2 && g_bindCallbacks[0] == &CharAIScript::_RegisterState &&
               g_bindCallbacks[1] == &CharAIScript::_ChangeState,
           "the bindings use _RegisterState and _ChangeState");
    Expect(g_bindUsers.size() == 2 && g_bindUsers[0] == ai && g_bindUsers[1] == ai,
           "each binding takes userData = this");

    // BindFunction runs LuaScript::BindFunction first and then the two bindings.
    g_bindNames.clear();
    g_bindCallbacks.clear();
    g_bindUsers.clear();
    g_luaBindCalls = 0;
    ai->BindFunction();
    Expect(g_luaBindCalls == 1, "BindFunction runs LuaScript::BindFunction once");
    Expect(g_bindNames == std::vector<std::string>{"RegisterAIState", "ChangeAIState"},
           "BindFunction then makes the two bindings");

    // ---- _RegisterState: five strings register a state with all four functions ----
    std::vector<luaif::Value> five(5);
    SetString(five[0], "Idle");
    SetString(five[1], "Upd");
    SetString(five[2], "Cond");
    SetString(five[3], "Init");
    SetString(five[4], "Post");
    CharAIScript::_RegisterState(MakeArgs(five), MakeReturn(), ai);
    {
        const auto it = ai->m_states.find("Idle");
        Expect(it != ai->m_states.end() && it->second.m_update == "Upd" && it->second.m_conditions == "Cond" &&
                   it->second.m_init == "Init" && it->second.m_post == "Post",
               "RegisterAIState with five strings sets all four functions");
    }

    // Two strings set only m_update; the other functions stay empty.
    std::vector<luaif::Value> two(2);
    SetString(two[0], "Two");
    SetString(two[1], "TwoUpd");
    CharAIScript::_RegisterState(MakeArgs(two), MakeReturn(), ai);
    {
        const auto it = ai->m_states.find("Two");
        Expect(it != ai->m_states.end() && it->second.m_update == "TwoUpd" && it->second.m_conditions.empty() &&
                   it->second.m_init.empty() && it->second.m_post.empty(),
               "RegisterAIState with two strings sets m_update only");
    }

    // Three strings re-register Idle: fields without an argument keep their previous values.
    std::vector<luaif::Value> three(3);
    SetString(three[0], "Idle");
    SetString(three[1], "UpdX");
    SetString(three[2], "CondX");
    CharAIScript::_RegisterState(MakeArgs(three), MakeReturn(), ai);
    {
        const auto it = ai->m_states.find("Idle");
        Expect(it != ai->m_states.end() && it->second.m_update == "UpdX" && it->second.m_conditions == "CondX" &&
                   it->second.m_init == "Init" && it->second.m_post == "Post",
               "RegisterAIState keeps the fields that have no argument");
    }

    // Calls that register nothing: one argument, six arguments, a non-string name, a non-string later argument.
    std::vector<luaif::Value> solo(1);
    SetString(solo[0], "Solo");
    CharAIScript::_RegisterState(MakeArgs(solo), MakeReturn(), ai);
    Expect(ai->m_states.find("Solo") == ai->m_states.end(), "RegisterAIState with one argument registers nothing");

    std::vector<luaif::Value> six(6);
    SetString(six[0], "Six");
    for (std::size_t i = 1; i < six.size(); ++i) {
        SetString(six[i], "x");
    }
    CharAIScript::_RegisterState(MakeArgs(six), MakeReturn(), ai);
    Expect(ai->m_states.find("Six") == ai->m_states.end(), "RegisterAIState with six arguments registers nothing");

    std::vector<luaif::Value> numName(2);
    numName[0].m_type = 3;
    numName[0].m_string = const_cast<char*>("Ghost");
    SetString(numName[1], "g");
    CharAIScript::_RegisterState(MakeArgs(numName), MakeReturn(), ai);
    Expect(ai->m_states.find("Ghost") == ai->m_states.end(), "RegisterAIState with a non-string name registers nothing");

    std::vector<luaif::Value> numArg(3);
    SetString(numArg[0], "Mixed");
    SetString(numArg[1], "a");
    numArg[2].m_type = 3;
    CharAIScript::_RegisterState(MakeArgs(numArg), MakeReturn(), ai);
    Expect(ai->m_states.find("Mixed") == ai->m_states.end(), "RegisterAIState with a non-string argument registers nothing");

    // ---- _ChangeState ----
    // Register Other with five strings, then change states.
    std::vector<luaif::Value> other5(5);
    SetString(other5[0], "Other");
    SetString(other5[1], "OUpd");
    SetString(other5[2], "OCond");
    SetString(other5[3], "OInit");
    SetString(other5[4], "OPost");
    CharAIScript::_RegisterState(MakeArgs(other5), MakeReturn(), ai);

    // With no current state, a change runs only the new state's init.
    ai->m_currentState = nullptr;
    std::vector<luaif::Value> toIdle(1);
    SetString(toIdle[0], "Idle");
    g_calls.clear();
    CharAIScript::_ChangeState(MakeArgs(toIdle), MakeReturn(), ai);
    Expect(ai->m_currentState == &ai->m_states.at("Idle"), "ChangeAIState sets m_currentState to the named state");
    Expect(g_calls == std::vector<std::string>{"Init"}, "ChangeAIState with no current state runs only the new init");

    // A change to another state runs the current state's post, then the new state's init.
    std::vector<luaif::Value> toOther(1);
    SetString(toOther[0], "Other");
    g_calls.clear();
    CharAIScript::_ChangeState(MakeArgs(toOther), MakeReturn(), ai);
    Expect(ai->m_currentState == &ai->m_states.at("Other"), "ChangeAIState moves m_currentState to Other");
    Expect(g_calls == std::vector<std::string>{"Post", "OInit"},
           "ChangeAIState runs the old post before the new init");

    // An unknown name changes nothing and calls nothing.
    std::vector<luaif::Value> unknown(1);
    SetString(unknown[0], "Nope");
    g_calls.clear();
    CharAIScript::_ChangeState(MakeArgs(unknown), MakeReturn(), ai);
    Expect(ai->m_currentState == &ai->m_states.at("Other") && g_calls.empty(),
           "ChangeAIState with an unknown name changes nothing");

    // Two arguments change nothing, even when the first names a state.
    std::vector<luaif::Value> twoArgs(2);
    SetString(twoArgs[0], "Idle");
    SetString(twoArgs[1], "extra");
    g_calls.clear();
    CharAIScript::_ChangeState(MakeArgs(twoArgs), MakeReturn(), ai);
    Expect(ai->m_currentState == &ai->m_states.at("Other") && g_calls.empty(),
           "ChangeAIState with two arguments changes nothing");

    ai->m_states.~StateMap();

    if (g_failures == 0) {
        std::printf("g1-game-character-CharAIScript-ef5739-0 test: OK\n");
    }
    return g_failures == 0 ? 0 : 1;
}
