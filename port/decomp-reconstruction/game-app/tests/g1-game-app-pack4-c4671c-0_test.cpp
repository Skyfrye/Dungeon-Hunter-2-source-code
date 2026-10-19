// Test for batch g1-game-app-pack4-c4671c-0. Checks the parts of the script command group that run without the engine:
// Init and Update do nothing, every IsBlocking returns false, the five empty Execute bodies make no DebugSwitches call, and
// the three Execute bodies that look an object up by name (Script_AISetInt, Script_ActivateTriggerPlate, Script_AutoEquip)
// make the isTracingScriptCmd trace probe, look up the record's name with the module argument and act on the result.
// Exit status 0 means every check passed.
//
// The DebugSwitches members and the object lookup are stubbed below (the batches that define them are other batches). The
// application is the library's singleton, whose object manager pointer is set to raw storage. The stub objects are never
// constructed. The Character path of the commands is not run: it would call virtuals of a fake object.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/TriggerPlate.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_AIChangeScript.hpp"
#include "dh2/Script_AIDoSkill.hpp"
#include "dh2/Script_AIEnableTimer.hpp"
#include "dh2/Script_AIResetTimer.hpp"
#include "dh2/Script_AISetHP.hpp"
#include "dh2/Script_AISetInt.hpp"
#include "dh2/Script_ActivateTriggerPlate.hpp"
#include "dh2/Script_AutoEquip.hpp"

// Test-only stubs for the DebugSwitches members the batch calls.
namespace {
alignas(DebugSwitches) unsigned char g_switchStorage[sizeof(DebugSwitches)];
int g_loads = 0;
int g_switchReads = 0;
std::string g_lastSwitch;
alignas(16) unsigned char g_objectManagerStorage[64];
alignas(16) unsigned char g_objectStorage[sizeof(TriggerPlate)];
bool g_objectFound = false;
int g_lookupCalls = 0;
std::string g_lookupName;
int g_lookupModule = -1;
bool g_lookupActive = true;
const char* g_lookupType = nullptr;
}  // namespace

DebugSwitches* DebugSwitches::GetInstance() {
    ++g_loads;
    return reinterpret_cast<DebugSwitches*>(g_switchStorage);
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    ++g_switchReads;
    g_lastSwitch = name;
    return false;
}

// The object lookup: records its arguments and hands back a default handle. GetObject answers from g_objectFound, and the
// conversion to a Character never finds one.
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectBase* ObjectHandle::GetObject(bool) {
    return g_objectFound ? reinterpret_cast<ObjectBase*>(g_objectStorage) : nullptr;
}

ObjectHandle::operator Character*() {
    return nullptr;
}

ObjectHandle ObjectManager::GetObjectByName(char const* name, int module, bool active, char const* type) {
    ++g_lookupCalls;
    g_lookupName = name != nullptr ? name : "";
    g_lookupModule = module;
    g_lookupActive = active;
    g_lookupType = type;
    return ObjectHandle();
}

namespace {

int g_failures = 0;

void Check(bool ok, const char* name, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s: %s\n", name, what);
        ++g_failures;
    }
}

// Init and Update are inherited by every command. They must do nothing and make no DebugSwitches call.
void TestInitUpdate() {
    Script_AISetHP cmd{};
    ScriptCmdImpl& base = cmd;
    const int loads = g_loads;
    const int reads = g_switchReads;
    base.Init();
    base.Update();
    Check(g_loads == loads && g_switchReads == reads, "ScriptCmdImpl", "Init or Update made a DebugSwitches call");
}

template <class T>
void CheckNotBlocking(const char* name) {
    T cmd{};
    const ScriptCmdImpl& base = cmd;
    Check(!base.IsBlocking(), name, "IsBlocking is not false");
}

void TestIsBlocking() {
    CheckNotBlocking<Script_AIChangeScript>("Script_AIChangeScript");
    CheckNotBlocking<Script_AIDoSkill>("Script_AIDoSkill");
    CheckNotBlocking<Script_AIEnableTimer>("Script_AIEnableTimer");
    CheckNotBlocking<Script_AIResetTimer>("Script_AIResetTimer");
    CheckNotBlocking<Script_AISetHP>("Script_AISetHP");
    CheckNotBlocking<Script_AISetInt>("Script_AISetInt");
    CheckNotBlocking<Script_ActivateTriggerPlate>("Script_ActivateTriggerPlate");
    CheckNotBlocking<Script_AutoEquip>("Script_AutoEquip");
}

// The empty Execute bodies: no DebugSwitches call, whatever the arguments.
template <class T>
void CheckEmptyExecute(const char* name) {
    T cmd{};
    ScriptCmdImpl& base = cmd;
    const int loads = g_loads;
    const int reads = g_switchReads;
    base.Execute(false, 3);
    base.Execute(true, -1);
    Check(g_loads == loads && g_switchReads == reads, name, "empty Execute made a DebugSwitches call");
}

void TestEmptyExecutes() {
    CheckEmptyExecute<Script_AIChangeScript>("Script_AIChangeScript");
    CheckEmptyExecute<Script_AIDoSkill>("Script_AIDoSkill");
    CheckEmptyExecute<Script_AIEnableTimer>("Script_AIEnableTimer");
    CheckEmptyExecute<Script_AIResetTimer>("Script_AIResetTimer");
    CheckEmptyExecute<Script_AISetHP>("Script_AISetHP");
}

// The Structs:: records free their name buffers in their destructors, so a name given to a record is a heap copy.
void SetName(char*& field, const char* text) {
    std::free(field);
    const std::size_t size = std::strlen(text) + 1;
    field = static_cast<char*>(std::malloc(size));
    std::memcpy(field, text, size);
}

void ResetLookup() {
    g_lookupCalls = 0;
    g_lookupName.clear();
    g_lookupModule = -1;
    g_lookupActive = true;
    g_lookupType = reinterpret_cast<const char*>(1);
}

// Each of the three: one load and one GetSwitch of "isTracingScriptCmd", then GetObjectByName(name, module, false, nullptr).
template <class T>
void CheckProbeAndLookup(const char* name, T& cmd, const char* expectedName) {
    ScriptCmdImpl& base = cmd;
    const int loads = g_loads;
    const int reads = g_switchReads;
    ResetLookup();
    base.Execute(true, 7);
    Check(g_loads == loads + 1, name, "trace probe did not load the switches once");
    Check(g_switchReads == reads + 1, name, "trace probe did not read exactly one switch");
    Check(g_lastSwitch == "isTracingScriptCmd", name, "trace probe read the wrong switch");
    Check(g_lookupCalls == 1, name, "one object lookup");
    Check(g_lookupName == expectedName, name, "the lookup name is the record's");
    Check(g_lookupModule == 7 && !g_lookupActive && g_lookupType == nullptr, name, "module, inactive, no type");
}

void TestObjectCommands() {
    ApplicationGetInstance().m_objectManager = reinterpret_cast<ObjectManager*>(g_objectManagerStorage);
    std::memset(g_objectStorage, 0, sizeof g_objectStorage);
    ObjectBase* object = reinterpret_cast<ObjectBase*>(g_objectStorage);
    TriggerPlate* plate = reinterpret_cast<TriggerPlate*>(g_objectStorage);

    // Script_AISetInt: record name at +0x14. An unresolved object ends the command.
    {
        Script_AISetInt cmd{};
        Structs::AISetInt record;
        SetName(record.Target, "Guard01");
        SetName(record.Name, "alarm");
        record.Value = 5;
        cmd.m_args = &record;
        g_objectFound = false;
        CheckProbeAndLookup("Script_AISetInt", cmd, "Guard01");
        cmd.m_args = nullptr;
    }

    // Script_ActivateTriggerPlate: record name at +0x0c.
    {
        Script_ActivateTriggerPlate cmd{};
        Structs::ActivateTriggerPlate record;
        SetName(record.Target, "Plate03");
        cmd.m_args = &record;

        g_objectFound = false;
        cmd.m_triggerPlate = object;
        CheckProbeAndLookup("Script_ActivateTriggerPlate", cmd, "Plate03");
        Check(cmd.m_triggerPlate == nullptr, "Script_ActivateTriggerPlate", "an unresolved object clears m_triggerPlate");

        g_objectFound = true;
        object->m_goId = static_cast<ObjectBase::GO_IDS>(2);
        plate->m_enabled = false;
        cmd.Execute(false, 1);
        Check(cmd.m_triggerPlate == nullptr && !plate->m_enabled, "Script_ActivateTriggerPlate",
              "a type-2 object is not a trigger plate");

        object->m_goId = static_cast<ObjectBase::GO_IDS>(18);
        cmd.Execute(false, 1);
        Check(cmd.m_triggerPlate == object, "Script_ActivateTriggerPlate", "the trigger plate is remembered");
        Check(plate->m_enabled, "Script_ActivateTriggerPlate", "the trigger plate is enabled (+0x779)");
        cmd.m_args = nullptr;
        plate->m_enabled = false;
    }

    // Script_AutoEquip: record name at +0x0c. The handle converts to no Character, so nothing is equipped.
    {
        Script_AutoEquip cmd{};
        Structs::AutoEquip record;
        SetName(record.Target, "Hero");
        cmd.m_args = &record;
        g_objectFound = true;
        CheckProbeAndLookup("Script_AutoEquip", cmd, "Hero");
        g_objectFound = false;
        cmd.m_args = nullptr;
    }
    g_objectFound = false;
}

}  // namespace

int main() {
    TestInitUpdate();
    TestIsBlocking();
    TestEmptyExecutes();
    TestObjectCommands();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-pack4-c4671c-0: all checks passed\n");
    return 0;
}
