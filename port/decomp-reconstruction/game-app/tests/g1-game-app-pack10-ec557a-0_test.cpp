// Test for batch g1-game-app-pack10-ec557a-0. Checks the script commands rebuilt in the batch source: the IsBlocking
// results, the trace read that opens each Execute, the object lookups of Script_SetStatic and Script_ShowActor (name,
// flags, inactive, no type), the static mark of Script_SetStatic, and the menu resolution and blocking of
// Script_ShowFlash. Exit status 0 means every check passed.
//
// The batch source calls into engine and game code that is not linked here. Those calls are stubbed below; each stub
// records what it was given. Records and command objects are real: the Structs:: records come from
// pydata-accessors/src/script_cmd_records.cpp (pass it to check_tu.sh with this test), and the command classes come from the
// batch.
// Some stubs hand back raw storage in place of Character, MenuBase and Application objects. The code under test only
// reads and writes the data members at their header offsets through those pointers, and never calls a virtual.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/lc_api.hpp"
#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Script_SetFaeryState.hpp"
#include "dh2/Script_SetLevelState.hpp"
#include "dh2/Script_SetStatic.hpp"
#include "dh2/Script_SetWorldMapLocationState.hpp"
#include "dh2/Script_ShowActor.hpp"
#include "dh2/Script_ShowFlash.hpp"
#include "dh2/Script_ShowTrophies.hpp"
#include "dh2/Script_SkipAllCharMenuTutorialMessages.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

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
std::string g_lastSwitch;
std::string g_lookupName;
int g_lookupFlags = -1;
bool g_lookupActive = true;
const char* g_lookupType = nullptr;
int g_lookupCalls = 0;
bool g_objectFound = false;
Character* g_characterForHandle = nullptr;
GameObject* g_gameObjectForHandle = nullptr;
std::string g_lastMenuName;
int g_menuManagerCalls = 0;
int g_disableZoningCalls = 0;
MenuBase* g_menuToReturn = nullptr;

// Raw storage behind the fake objects. Only data members at their header offsets are touched through these.
alignas(16) unsigned char g_debugSwitchesStorage[64];
alignas(16) unsigned char g_applicationStorage[256];
alignas(16) unsigned char g_menuManagerStorage[64];
alignas(16) unsigned char g_objectManagerStorage[64];
alignas(16) unsigned char g_objectStorage[64];
alignas(16) unsigned char g_characterStorage[sizeof(Character)];
alignas(16) unsigned char g_menuStorage[sizeof(MenuBase)];
alignas(16) unsigned char g_playersStorage[sizeof(PlayerManager)];
alignas(16) unsigned char g_playerInfoStorage[sizeof(PlayerInfo)];
alignas(16) unsigned char g_localCharacterStorage[sizeof(Character)];

// What the Character stubs were given.
int g_faeryCalls = 0;
unsigned int g_faeryId = 0;
int g_faeryState = 0;
int g_levelStateCalls = 0;
int g_levelStateArgs[3] = {0, 0, 0};
int g_mapLocStateCalls = 0;
int g_mapLocStateArgs[3] = {0, 0, 0};

}  // namespace

// ---- Stubs for code outside the batch --------------------------------------------------------------------------

static ObjectManager* g_test_dword_99F764 = reinterpret_cast<ObjectManager*>(g_objectManagerStorage);
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

DebugSwitches* DebugSwitches::GetInstance() {
    ++g_traceReads;
    return reinterpret_cast<DebugSwitches*>(g_debugSwitchesStorage);
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    g_lastSwitch = name;
    return false;
}

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_applicationStorage);
}

Level* Application::GetCurrentLevel() const {
    return nullptr;
}

// The local player: a zero-filled PlayerInfo (no character) unless a check sets unk_660.
PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) {
    return reinterpret_cast<PlayerInfo*>(g_playerInfoStorage);
}

void Character::SetFaeryState(unsigned int faery, int state) {
    ++g_faeryCalls;
    g_faeryId = faery;
    g_faeryState = state;
}

void Character::SG_SetLevelState(int level, int state, int difficulty) {
    ++g_levelStateCalls;
    g_levelStateArgs[0] = level;
    g_levelStateArgs[1] = state;
    g_levelStateArgs[2] = difficulty;
}

void Character::SG_SetMapLocState(int location, int state, int difficulty) {
    ++g_mapLocStateCalls;
    g_mapLocStateArgs[0] = location;
    g_mapLocStateArgs[1] = state;
    g_mapLocStateArgs[2] = difficulty;
}

char* LC_API_STRSTR(const char* haystack, const char* needle) {
    return const_cast<char*>(std::strstr(haystack, needle));
}

MenuManager* MenuManager::GetInstance() {
    ++g_menuManagerCalls;
    return reinterpret_cast<MenuManager*>(g_menuManagerStorage);
}

MenuBase* MenuManager::GetMenuByName(const char* name) {
    g_lastMenuName = name;
    return g_menuToReturn;
}

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectBase* ObjectHandle::GetObject(bool) {
    return g_objectFound ? reinterpret_cast<ObjectBase*>(g_objectStorage) : nullptr;
}

ObjectHandle::operator GameObject*() {
    return g_gameObjectForHandle;
}

ObjectHandle::operator Character*() {
    return g_characterForHandle;
}

ObjectHandle ObjectManager::GetObjectByName(char const* name, int flags, bool active, char const* type) {
    ++g_lookupCalls;
    g_lookupName = name != nullptr ? name : "";
    g_lookupFlags = flags;
    g_lookupActive = active;
    g_lookupType = type;
    return ObjectHandle();
}

void GameObject::DisableZoning() {
    ++g_disableZoningCalls;
}

void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}
ScriptCmdImpl::~ScriptCmdImpl() {}

// ---- Checks ----------------------------------------------------------------------------------------------------

namespace {

void CheckIsBlockingConstants() {
    Script_SetFaeryState faery;
    Script_SetLevelState level;
    Script_SetWorldMapLocationState map;
    Script_SetStatic statics;
    Script_ShowActor actor;
    Script_SkipAllCharMenuTutorialMessages skipAll;
    Script_ShowTrophies trophies;
    Check(!faery.IsBlocking(), "Script_SetFaeryState", "IsBlocking is false");
    Check(!level.IsBlocking(), "Script_SetLevelState", "IsBlocking is false");
    Check(!map.IsBlocking(), "Script_SetWorldMapLocationState", "IsBlocking is false");
    Check(!statics.IsBlocking(), "Script_SetStatic", "IsBlocking is false");
    Check(!actor.IsBlocking(), "Script_ShowActor", "IsBlocking is false");
    Check(!skipAll.IsBlocking(), "Script_SkipAllCharMenuTutorialMessages", "IsBlocking is false");
    Check(trophies.IsBlocking(), "Script_ShowTrophies", "IsBlocking is true");
}

void CheckShowTrophiesExecute() {
    Script_ShowTrophies trophies;
    const int before = g_traceReads;
    trophies.Execute(false, 0);
    Check(g_traceReads == before, "Script_ShowTrophies::Execute", "no trace read: the body is empty");
}

// The three commands that hand a record value to the local player's character: one trace read each, nothing without a
// character, and the record's two words (and -1 for the difficulty of the two level-state calls) with one.
void CheckLocalCharacterCommands() {
    ApplicationGetInstance().m_playerManager = reinterpret_cast<PlayerManager*>(g_playersStorage);
    PlayerInfo* player = reinterpret_cast<PlayerInfo*>(g_playerInfoStorage);
    std::memset(g_playerInfoStorage, 0, sizeof g_playerInfoStorage);

    Script_SetFaeryState faery;
    Structs::SetFaeryState faeryRecord;
    faeryRecord.Faery = 3;
    faeryRecord.State = 1;
    faery.m_args = &faeryRecord;
    Script_SetLevelState level;
    Structs::SetLevelState levelRecord;
    levelRecord.Level = 12;
    levelRecord.State = 2;
    level.m_args = &levelRecord;
    Script_SetWorldMapLocationState map;
    Structs::SetWorldMapLocationState mapRecord;
    mapRecord.MapLoc = 5;
    mapRecord.State = 4;
    map.m_args = &mapRecord;

    // No character: the trace read happens and no call is made.
    int before = g_traceReads;
    faery.Execute(false, 0);
    level.Execute(false, 0);
    map.Execute(false, 0);
    Check(g_traceReads == before + 3, "local character commands", "one trace read each");
    Check(g_lastSwitch == "isTracingScriptCmd", "local character commands", "trace key is isTracingScriptCmd");
    Check(g_faeryCalls == 0 && g_levelStateCalls == 0 && g_mapLocStateCalls == 0, "local character commands",
          "no character, no call");

    // With a character.
    player->unk_660 = reinterpret_cast<Character*>(g_localCharacterStorage);
    faery.Execute(false, 0);
    level.Execute(true, 0);
    map.Execute(false, 0);
    Check(g_faeryCalls == 1 && g_faeryId == 3 && g_faeryState == 1, "Script_SetFaeryState::Execute",
          "SetFaeryState(record faery, record state)");
    Check(g_levelStateCalls == 1 && g_levelStateArgs[0] == 12 && g_levelStateArgs[1] == 2 && g_levelStateArgs[2] == -1,
          "Script_SetLevelState::Execute", "SG_SetLevelState(level, state, -1)");
    Check(g_mapLocStateCalls == 1 && g_mapLocStateArgs[0] == 5 && g_mapLocStateArgs[1] == 4 && g_mapLocStateArgs[2] == -1,
          "Script_SetWorldMapLocationState::Execute", "SG_SetMapLocState(location, state, -1)");
    player->unk_660 = nullptr;
}

void CheckSetStaticExecute() {
    Script_SetStatic command;
    Structs::SetStatic record;
    SetName(record.Target, "Door01");
    command.m_args = &record;

    Character* character = reinterpret_cast<Character*>(g_characterStorage);
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    g_characterForHandle = character;
    g_objectFound = true;

    // Flag clear: looked up, not marked.
    record.Static = false;
    int before = g_traceReads;
    command.Execute(false, 7);
    Check(g_lookupCalls > 0 && g_lookupName == "Door01", "Script_SetStatic::Execute", "name is the record's m_w4");
    Check(g_lookupFlags == 7, "Script_SetStatic::Execute", "flags are the module argument");
    Check(!g_lookupActive, "Script_SetStatic::Execute", "active is false");
    Check(g_lookupType == nullptr, "Script_SetStatic::Execute", "type is null");
    Check(g_traceReads == before + 1, "Script_SetStatic::Execute", "one trace read");
    Check(character->m_static == 0, "Script_SetStatic::Execute", "flag clear leaves m_static alone");

    // Flag set: the found Character is marked static.
    record.Static = true;
    command.Execute(true, 2);
    Check(character->m_static == 1, "Script_SetStatic::Execute", "flag set marks m_static");
    Check(g_lookupFlags == 2, "Script_SetStatic::Execute", "flags follow the second call");

    // Not found: nothing is written.
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    g_objectFound = false;
    g_characterForHandle = nullptr;
    record.Static = true;
    command.Execute(false, 1);
    Check(character->m_static == 0, "Script_SetStatic::Execute", "missing object writes nothing");

    g_characterForHandle = nullptr;
    g_objectFound = false;
}

void CheckShowActorExecute() {
    Script_ShowActor command;
    Structs::ShowActor record;
    SetName(record.Target, "Lever02");
    command.m_args = &record;

    // Not found: the lookup runs, the object is not touched.
    g_objectFound = false;
    g_gameObjectForHandle = nullptr;
    const int before = g_traceReads;
    const int disableBefore = g_disableZoningCalls;
    command.Execute(false, 3);
    Check(g_lookupName == "Lever02", "Script_ShowActor::Execute", "name is the record's m_w3");
    Check(g_lookupFlags == 3, "Script_ShowActor::Execute", "flags are the module argument");
    Check(!g_lookupActive && g_lookupType == nullptr, "Script_ShowActor::Execute", "inactive, no type");
    Check(g_traceReads == before + 2, "Script_ShowActor::Execute", "two trace reads, as in the original");
    Check(g_disableZoningCalls == disableBefore, "Script_ShowActor::Execute", "no zoning change without an object");
}

void CheckShowFlashInit() {
    Script_ShowFlash command;
    Structs::ShowFlash record;
    command.m_args = &record;

    SetName(record.Name, "HUD");
    command.m_menu = reinterpret_cast<MenuBase*>(g_menuStorage);
    command.Init();
    Check(command.m_menu == nullptr, "Script_ShowFlash::Init", "a HUD name resolves to no menu");

    SetName(record.Name, "DialogBox");
    g_menuToReturn = reinterpret_cast<MenuBase*>(g_menuStorage);
    command.Init();
    Check(command.m_menu == g_menuToReturn, "Script_ShowFlash::Init", "other names resolve through GetMenuByName");
    Check(g_lastMenuName == "DialogBox", "Script_ShowFlash::Init", "GetMenuByName receives the record's name");

    g_menuToReturn = nullptr;
    command.Init();
    Check(command.m_menu == nullptr, "Script_ShowFlash::Init", "an unknown menu stays null");
}

void CheckShowFlashIsBlocking() {
    Script_ShowFlash command;
    Structs::ShowFlash record;
    command.m_args = &record;
    MenuBase* menu = reinterpret_cast<MenuBase*>(g_menuStorage);

    command.m_menu = nullptr;
    record.Loop = 2;
    record.Wait = true;
    Check(!command.IsBlocking(), "Script_ShowFlash::IsBlocking", "no menu, no block");

    command.m_menu = menu;
    menu->m_animOverCount = 1;
    Check(command.IsBlocking(), "Script_ShowFlash::IsBlocking", "count 2 above 1 finished animation blocks");

    menu->m_animOverCount = 2;
    Check(!command.IsBlocking(), "Script_ShowFlash::IsBlocking", "count 2 equal to finished animations does not block");

    menu->m_animOverCount = 0;
    record.Wait = false;
    Check(!command.IsBlocking(), "Script_ShowFlash::IsBlocking", "flag clear does not block");

    record.Wait = true;
    record.Loop = 0;
    Check(!command.IsBlocking(), "Script_ShowFlash::IsBlocking", "zero count does not block");
}

void CheckShowFlashExecute() {
    Script_ShowFlash command;
    Structs::ShowFlash record;
    SetName(record.Name, "DialogBox");
    command.m_args = &record;
    command.m_menu = nullptr;

    const int traceBefore = g_traceReads;
    const int menuBefore = g_menuManagerCalls;
    command.Execute(false, 0);
    Check(g_traceReads == traceBefore + 1, "Script_ShowFlash::Execute", "one trace read");
    Check(g_menuManagerCalls == menuBefore + 1, "Script_ShowFlash::Execute", "the menu manager is consulted");
    Check(command.m_menu == nullptr, "Script_ShowFlash::Execute", "no menu is created");
}

}  // namespace

int main() {
    CheckIsBlockingConstants();
    CheckShowTrophiesExecute();
    CheckLocalCharacterCommands();
    CheckSetStaticExecute();
    CheckShowActorExecute();
    CheckShowFlashInit();
    CheckShowFlashIsBlocking();
    CheckShowFlashExecute();

    if (g_failures == 0) {
        std::printf("g1-game-app-pack10-ec557a-0: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-pack10-ec557a-0: %d failure(s)\n", g_failures);
    return 1;
}
