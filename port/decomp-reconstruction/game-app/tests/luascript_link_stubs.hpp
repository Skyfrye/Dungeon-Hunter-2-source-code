// Link stubs for the LuaScript bindings (game-app/src/g1-game-app-LuaScript-5015a8-1.cpp and -2.cpp). The bindings call
// sfc::script::lua::Value, Arguments and ReturnValues, Application::GetCurrentLevel and ApplicationGetInstance,
// ScriptManager::s_inst, LuaScript::Load, PyDataConstants and PyDataArrays, and the Arrays name and level tables. Their
// definitions live in other categories that are not linked into a single-file test, so the ones below stand in for them.
// The value stubs keep the behaviour the headers document (Value::getBool is m_number != 0, Arguments::operator[] throws
// std::out_of_range). Calls are recorded in the globals below so a test can check what a binding pushed or started.
//
// Include this header in exactly one translation unit per test executable (it defines the globals and the stubs). The
// test also defines glitch::core::hashString and the LuaScript constructor and destructor, which are not stubbed here.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <stdexcept>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/sfc/script/lua/Instance.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "net-transport/net_struct.hpp"

#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// ---- recorded calls ----
inline std::vector<int> g_pushedIntegers;          // ReturnValues::pushInteger, in order
inline std::vector<float> g_pushedNumbers;         // ReturnValues::pushNumber, in order
inline std::vector<bool> g_pushedBooleans;         // ReturnValues::pushBoolean, in order
inline std::vector<std::string> g_loadedFiles;     // LuaScript::Load
inline std::string g_lastScriptName;               // ScriptManager::GetIDFromName
inline int g_scriptIdForName = -1;                 // what GetIDFromName returns
inline bool g_scriptRunning = false;               // what IsScriptRunning returns
struct StartCall {
    int id;
    int module;
    bool fromRemote;
};
inline std::vector<StartCall> g_startCalls;        // ScriptManager::StartScript
inline std::string g_soundName = "music_test";     // the name Arrays::GetMemberIDByString<Sounds> knows
inline int g_soundId = 7;                          // its id
inline std::string g_lastConstantClass;            // PyDataConstants::getConstant arguments
inline std::string g_lastConstantName;
inline int g_constantValue = 0;                    // what getConstant returns
inline std::string g_lastOidClass;                 // PyDataArrays::GetOID arguments
inline std::string g_lastOidArg;
inline int g_oidValue = 0;                         // what GetOID returns
inline Level* g_currentLevel = nullptr;            // Application::GetCurrentLevel

// The Application the bindings reach through ApplicationGetInstance(). Zero-filled storage; the bindings only read its
// pyData and object pointers, which a test sets.
alignas(Application) inline unsigned char g_applicationStorage[sizeof(Application)] = {};
inline Application* g_application = reinterpret_cast<Application*>(g_applicationStorage);

// ---- sfc::script::lua ----
namespace sfc {
namespace script {
namespace lua {

Value::Value()
    : m_type(0), m_number(0.0f), m_stringEnd(nullptr), m_string(nullptr), m_wstringEnd(nullptr), m_wstring(nullptr),
      m_pointer(nullptr) {}
Value::Value(const Value& other)
    : m_type(other.m_type), m_number(other.m_number), m_stringEnd(other.m_stringEnd), m_string(other.m_string),
      m_wstringEnd(other.m_wstringEnd), m_wstring(other.m_wstring), m_pointer(other.m_pointer) {}
Value::~Value() {}
float Value::getNumber() const { return m_number; }
bool Value::getBool() const { return m_number != 0.0f; }
const char* Value::getString() const { return m_string; }
void* Value::getPointer() const { return m_type == 2 || m_type == 7 ? m_pointer : nullptr; }

Arguments::Arguments() : m_values(nullptr) {}
Arguments::~Arguments() {}
const Value& Arguments::operator[](unsigned int index) const { return m_values->at(index); }

ReturnValues::ReturnValues() : m_valueList(nullptr) {}
ReturnValues::~ReturnValues() {}
void ReturnValues::pushInteger(int value) { g_pushedIntegers.push_back(value); }
void ReturnValues::pushNumber(float value) { g_pushedNumbers.push_back(value); }
void ReturnValues::pushBoolean(bool value) { g_pushedBooleans.push_back(value); }

// The script state and the binder the LuaScript members hold. The state is not opened here; only the constructors and
// destructors that LuaScript's constructor and destructor reach are stubbed.
Instance::Instance() {}
Instance::~Instance() {}
Binder::~Binder() {}

}  // namespace lua
}  // namespace script
}  // namespace sfc

// ---- LuaScript and the game objects the bindings reach ----
int LuaScript::Load(const char* file) {
    g_loadedFiles.push_back(file);
    return 0;
}

Level* Application::GetCurrentLevel() const { return g_currentLevel; }

Application& ApplicationGetInstance() { return *g_application; }

ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}
ScriptManager ScriptManager::s_inst;
int ScriptManager::GetIDFromName(const char* name, bool /*searchAll*/) const {
    g_lastScriptName = name;
    return g_scriptIdForName;
}
bool ScriptManager::IsScriptRunning(int /*id*/) const { return g_scriptRunning; }
void ScriptManager::StartScript(int id, int module, bool fromRemote) {
    g_startCalls.push_back(StartCall{id, module, fromRemote});
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    g_lastConstantClass = className;
    g_lastConstantName = constantName;
    return g_constantValue;
}

int PyDataArrays::GetOID(const char* className, const char* arg) {
    g_lastOidClass = className;
    g_lastOidArg = arg;
    return g_oidValue;
}

// ---- Arrays name and level tables ----
// member_names.hpp and w7_arrays_00.hpp both define Arrays::Sounds (name table and table storage), so this TU includes only
// the second. The template is declared here with the signature member_names.hpp gives it.
namespace Arrays {

template <class T>
int GetMemberIDByString(const char* name);

template <>
int GetMemberIDByString<Sounds>(const char* name) {
    return name == g_soundName ? g_soundId : -1;
}

std::uint8_t* LevelList::members = nullptr;
std::uint32_t LevelList::size = 0;

}  // namespace Arrays

// ---- player and random streams (read by the player bindings in g1-game-app-LuaScript-5015a8-1.cpp) ----
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

PlayerInfo* PlayerManager::GetHostingPlayer() { return nullptr; }
PlayerInfo* PlayerManager::GetLocalPlayer(int /*localId*/, bool /*flag*/) { return nullptr; }

unsigned int Random::GetRandom(int /*range*/, bool /*synced*/) { return 0; }

template <>
const std::int32_t& NetStructMemberType<std::int32_t>::GetValue() const {
    std::abort();
}
