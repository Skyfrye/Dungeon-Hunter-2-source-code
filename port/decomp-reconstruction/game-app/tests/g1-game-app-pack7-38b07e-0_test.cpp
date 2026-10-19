// Test for batch g1-game-app-pack7-38b07e-0. Checks the script command logic that can run without the engine: the
// Script_HideFlash::IsBlocking results, including the signed comparison of the record count (m_w2, int32) with
// MenuBase::m_animOverCount (uint32 in the header, compared as int32 as in the asm), the menu resolution of
// Script_HideFlash::Init (HUD and named menus), the trace read that opens Script_HideFlash::Execute, and the IsBlocking
// of the other commands in the batch (each returns false). Exit status 0 means every check passed.
//
// The batch source calls into engine and game code that is not linked here. Those calls are stubbed below. The trace
// probe, the menu lookup and LC_API_STRSTR record what they were given. Every other stub aborts, so a check that reaches
// one of them stops the test instead of passing silently.
// Records and command objects are real: the Structs:: records come from pydata-accessors/src/script_cmd_records.cpp
// (passed to check_tu.sh with this test), and the command classes come from the batch.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/lc_api.hpp"
#include "net-transport/update_job_thread.hpp"
#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_HideFlash.hpp"
#include "dh2/Script_IncFaeryLevel.hpp"
#include "dh2/Script_KillActor.hpp"
#include "dh2/Script_LeaveSafeZone.hpp"
#include "dh2/Script_LockCharacter.hpp"
#include "dh2/Script_LockTutorial.hpp"
#include "dh2/Script_LookActor.hpp"
#include "dh2/Script_MarkCharacterAsScripted.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/script_character_callback.hpp"
#include "dh2/global/script_command_globals.hpp"
#include "dh2/v2Controller.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* name, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s: %s\n", name, what);
        ++g_failures;
    }
}

// The Structs:: records free their name buffers in their destructors (CustomFree), so a name given to a record must be
// a heap copy. Frees the field's previous copy, if any.
void SetName(char*& field, const char* text) {
    std::free(field);
    const std::size_t size = std::strlen(text) + 1;
    field = static_cast<char*>(std::malloc(size));
    std::memcpy(field, text, size);
}

// Recorded state of the stubs.
int g_traceReads = 0;
int g_menuManagerCalls = 0;
std::string g_lastSwitch;
std::string g_lastMenuName;
MenuBase* g_menuToReturn = nullptr;

// Raw storage behind the fake objects. Only data members at their header offsets are touched through these.
alignas(16) unsigned char g_debugSwitchesStorage[64];
alignas(16) unsigned char g_menuManagerStorage[64];
alignas(16) unsigned char g_menuStorage[sizeof(MenuBase)];

}  // namespace

// Globals read by the batch (Script_LockTutorial, Script_LockCharacter), defined here with their declared types.
int lastOpenMenuID = 0;
updateJob_thread* m_updateJobThread1 = nullptr;
bool v2Controller::s_blocked = false;

// ---- Stubs for code outside the batch --------------------------------------------------------------------------

char* LC_API_STRSTR(const char* haystack, const char* needle) {
    return const_cast<char*>(std::strstr(haystack, needle));
}

int LC_API_STRCASECMP(const char* /*a*/, const char* /*b*/) {
    std::abort();
}

int LC_API_STRCMP(const char* /*a*/, const char* /*b*/) {
    std::abort();
}

DebugSwitches* DebugSwitches::GetInstance() {
    ++g_traceReads;
    return reinterpret_cast<DebugSwitches*>(g_debugSwitchesStorage);
}

void DebugSwitches::load() {}

bool DebugSwitches::GetSwitch(const std::string& name) {
    g_lastSwitch = name;
    return false;
}

Application& ApplicationGetInstance() {
    std::abort();
}

Level* Application::GetCurrentLevel() const {
    std::abort();
}

MenuManager* MenuManager::GetInstance() {
    ++g_menuManagerCalls;
    return reinterpret_cast<MenuManager*>(g_menuManagerStorage);
}

MenuBase* MenuManager::GetMenuByName(const char* name) {
    g_lastMenuName = name;
    return g_menuToReturn;
}

ObjectHandle::ObjectHandle() {
    std::abort();
}

ObjectBase* ObjectHandle::GetObject(bool /*assertFound*/) {
    std::abort();
}

ObjectHandle::operator GameObject*() {
    std::abort();
}

ObjectHandle::operator Character*() {
    std::abort();
}

ObjectHandle ObjectBase::GetHandle() {
    std::abort();
}

ObjectHandle ObjectManager::GetObjectByName(char const* /*name*/, int /*flags*/, bool /*active*/,
                                            char const* /*type*/) {
    std::abort();
}

void SavegameManager::saveSettings() {
    std::abort();
}

int updateJob_thread::Start2() {
    std::abort();
}

void Script_CharacterState_Callback(const char* /*name*/, int /*arg*/, void (* /*callback*/)(ObjectBase*)) {
    std::abort();
}

void v2Controller::Cmd_Kill(GameObject* /*killer*/, bool /*silent*/) {
    std::abort();
}

void v2Controller::Cmd_LookAt(GameObject* /*target*/) {
    std::abort();
}

void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}
ScriptCmdImpl::~ScriptCmdImpl() {}

// ---- Checks ----------------------------------------------------------------------------------------------------

namespace {

void CheckHideFlashIsBlocking() {
    Script_HideFlash command;
    Structs::HideFlash record;
    command.m_args = &record;
    MenuBase* menu = reinterpret_cast<MenuBase*>(g_menuStorage);

    command.m_menu = nullptr;
    record.Loop = 2;
    record.Wait = true;
    Check(!command.IsBlocking(), "Script_HideFlash::IsBlocking", "no menu, no block");

    command.m_menu = menu;
    menu->m_animOverCount = 1;
    Check(command.IsBlocking(), "Script_HideFlash::IsBlocking", "count 2 above 1 finished animation blocks");

    menu->m_animOverCount = 2;
    Check(!command.IsBlocking(), "Script_HideFlash::IsBlocking", "count 2 equal to finished animations does not block");

    menu->m_animOverCount = 0;
    Check(command.IsBlocking(), "Script_HideFlash::IsBlocking", "count 2 above 0 finished animations blocks");

    record.Wait = false;
    Check(!command.IsBlocking(), "Script_HideFlash::IsBlocking", "flag clear does not block");

    record.Wait = true;
    record.Loop = 0;
    Check(!command.IsBlocking(), "Script_HideFlash::IsBlocking", "zero count does not block");

    record.Loop = -3;
    Check(!command.IsBlocking(), "Script_HideFlash::IsBlocking", "negative count does not block");

    // The asm compares the count and m_animOverCount as signed (CMP R3,R0 with MOVLE/MOVGT). An unsigned compare would
    // give the opposite results for these two cases, so they pin the signed behaviour.
    record.Loop = 5;
    menu->m_animOverCount = 0xFFFFFFFFu;  // -1 as int32
    Check(command.IsBlocking(), "Script_HideFlash::IsBlocking", "signed: count 5 above animOver -1 blocks");

    menu->m_animOverCount = 0x80000000u;  // INT32_MIN as int32
    Check(command.IsBlocking(), "Script_HideFlash::IsBlocking", "signed: count 5 above animOver 0x80000000 blocks");

    // Equal values never block, at the top of the positive range too.
    record.Loop = 0x7FFFFFFF;
    menu->m_animOverCount = 0x7FFFFFFFu;
    Check(!command.IsBlocking(), "Script_HideFlash::IsBlocking", "count equal to animOver 0x7fffffff does not block");

    record.Loop = 0x7FFFFFFF;
    menu->m_animOverCount = 0x7FFFFFFEu;
    Check(command.IsBlocking(), "Script_HideFlash::IsBlocking", "count 0x7fffffff above animOver 0x7ffffffe blocks");
}

void CheckHideFlashInit() {
    Script_HideFlash hud;
    Structs::HideFlash hudRecord;
    SetName(hudRecord.Name, "HUDStatus");
    hud.m_args = &hudRecord;
    hud.m_menu = reinterpret_cast<MenuBase*>(g_menuStorage);
    g_lastMenuName.clear();
    hud.Init();
    Check(hud.m_menu == nullptr, "Script_HideFlash::Init", "a name containing HUD leaves no menu");
    Check(g_lastMenuName.empty(), "Script_HideFlash::Init", "a HUD name does not call GetMenuByName");

    Script_HideFlash named;
    Structs::HideFlash namedRecord;
    SetName(namedRecord.Name, "DialogBox");
    named.m_args = &namedRecord;
    g_menuToReturn = reinterpret_cast<MenuBase*>(g_menuStorage);
    named.Init();
    Check(named.m_menu == g_menuToReturn, "Script_HideFlash::Init", "a named menu is resolved by GetMenuByName");
    Check(g_lastMenuName == "DialogBox", "Script_HideFlash::Init", "GetMenuByName gets the record name");

    g_menuToReturn = nullptr;
    named.Init();
    Check(named.m_menu == nullptr, "Script_HideFlash::Init", "an unknown menu stays null");
}

void CheckHideFlashExecuteTraceOnly() {
    Script_HideFlash command;
    Structs::HideFlash record;
    SetName(record.Name, "DialogBox");
    command.m_args = &record;
    command.m_menu = nullptr;

    const int before = g_traceReads;
    const int menuBefore = g_menuManagerCalls;
    command.Execute(false, 0);
    // With no menu and a name without HUD: the trace read and the menu manager lookup, nothing else (the HUD branch needs the
    // HUD root, which this test does not provide).
    Check(g_traceReads == before + 1, "Script_HideFlash::Execute", "one trace read");
    Check(g_lastSwitch == "isTracingScriptCmd", "Script_HideFlash::Execute", "trace key is isTracingScriptCmd");
    Check(g_menuManagerCalls == menuBefore + 1, "Script_HideFlash::Execute", "the menu manager is consulted");
    Check(command.m_menu == nullptr, "Script_HideFlash::Execute", "no menu is created");
    command.m_args = nullptr;
}

void CheckOtherIsBlockingFalse() {
    Script_IncFaeryLevel faery;
    Script_KillActor kill;
    Script_LeaveSafeZone safe;
    Script_LockCharacter lock;
    Script_LockTutorial tutorial;
    Script_LookActor look;
    Script_MarkCharacterAsScripted mark;
    Check(!faery.IsBlocking(), "Script_IncFaeryLevel::IsBlocking", "returns false");
    Check(!kill.IsBlocking(), "Script_KillActor::IsBlocking", "returns false");
    Check(!safe.IsBlocking(), "Script_LeaveSafeZone::IsBlocking", "returns false");
    Check(!lock.IsBlocking(), "Script_LockCharacter::IsBlocking", "returns false");
    Check(!tutorial.IsBlocking(), "Script_LockTutorial::IsBlocking", "returns false");
    Check(!look.IsBlocking(), "Script_LookActor::IsBlocking", "returns false");
    Check(!mark.IsBlocking(), "Script_MarkCharacterAsScripted::IsBlocking", "returns false");
}

}  // namespace

int main() {
    CheckHideFlashIsBlocking();
    CheckHideFlashInit();
    CheckHideFlashExecuteTraceOnly();
    CheckOtherIsBlockingFalse();
    if (g_failures == 0) {
        std::printf("g1-game-app-pack7-38b07e-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-pack7-38b07e-0 test: %d check(s) failed\n", g_failures);
    return 1;
}
