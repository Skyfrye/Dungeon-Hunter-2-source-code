// Checks the MenuBase FSCommand handlers of batch g1-game-ui-MenuBase-8948cc-2 on the paths that run without the engine:
// the argument checks, the save-slot test that reaches PlayerSavegame::SG_Exists, the menu push and pop names, the
// sound-name search, and the state push of a menu that is not guarded. The handlers that need a MenuBase object or the
// local player are not called: the test does not build a MenuBase or a Character.
//
// Everything below the includes is a link-only stub or a recorder. The real definitions live in other categories.
#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/StringManager.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/menu_base_fs.hpp"
#include "pydata-accessors/member_names.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// ---- Fake singletons. Only the fields the handlers read are set. ----
namespace {
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(SavegameManager) unsigned char g_saveStorage[sizeof(SavegameManager)];
alignas(StateMachine) unsigned char g_machineStorage[sizeof(StateMachine)];
alignas(MenuManager) unsigned char g_managerStorage[sizeof(MenuManager)];
alignas(PlayerManager) unsigned char g_playerStorage[sizeof(PlayerManager)];
alignas(StringManager) unsigned char g_stringStorage[sizeof(StringManager)];
alignas(MultiMenuManager) unsigned char g_mmmStorage[sizeof(MultiMenuManager)];
alignas(MenuFX) unsigned char g_fxStorage[sizeof(MenuFX)];
alignas(MenuBase) unsigned char g_menuObjStorage[sizeof(MenuBase)];
alignas(MenuBase) unsigned char g_argMenuStorage[sizeof(MenuBase)];
unsigned char g_menuTag;
// The sound manager the sound handlers call. VoxSoundManager::s_instance (0x9a238c) is null until CreateInstance
// runs, and FS_PlayMusic / FS_PlaySoundFX call PlayMusic / PlayMenu through it on every found cue
// (game-ui/src/g1-game-ui-MenuBase-8948cc-2.cpp), so a null instance is a null dereference, not a short circuit.
// This test builds no sound system, so the instance is this tag and the two calls are stubbed below.
unsigned char g_voxTag;
// The fake MultiMenuManager: its first word points at this table. Slot 14 (+0x38) is PopMenu(bool).
void* g_fakeMmmVtable[16] = {};
int g_mmmPopCalls = 0;
bool g_mmmPopRepeat = true;
void FakeMmmPopMenu(MultiMenuManager*, bool repeat) {
    ++g_mmmPopCalls;
    g_mmmPopRepeat = repeat;
}
// Published _root.retval values, as "target.name=value" (as_value publishes are recorded as "<value>").
std::vector<std::string> g_published;
}  // namespace

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

// ---- Recorders for the calls the handlers make. ----
namespace {
std::vector<std::string> g_pushed;
std::vector<std::string> g_popped;
std::vector<std::string> g_menuLookups;
std::vector<std::uint32_t> g_existsCalls;
int g_pushStateCalls = 0;
const void* g_pushStateState = nullptr;
bool g_pushStateOwned = true;
int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}
}  // namespace

// Link-only: the MenuManager singleton and its menu calls. The handlers never dereference the manager pointer.
MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_managerStorage);
}
void MenuManager::PushMenu(const char* name) {
    g_pushed.emplace_back(name);
}
void MenuManager::PopMenu(const char* name) {
    g_popped.emplace_back(name);
}
MenuBase* MenuManager::GetMenuByName(const char* name) {
    g_menuLookups.emplace_back(name);
    return reinterpret_cast<MenuBase*>(&g_menuTag);
}

// Link-only: MenuFX calls. FS_ContinueGame, FS_PopAllAbove and IsTopMost reference them; the test calls none of them.
void MenuFX::PopAll() {}
MenuFX::State* MenuFX::GetState(const char*) {
    return nullptr;
}
MenuFX::State* MenuFX::GetCurrentState() {
    return nullptr;
}

// Link-only: the save file test. Slots 2 and 3 exist.
int PlayerSavegame::SG_Exists(std::uint32_t slot) {
    g_existsCalls.push_back(slot);
    return slot == 2 || slot == 3 ? 1 : 0;
}

// Link-only: the state machine. Records the pushed state.
void StateMachine::PushState(StateBase* state, bool owned) {
    ++g_pushStateCalls;
    g_pushStateState = state;
    g_pushStateOwned = owned;
}

// Link-only: the class name used by FS_GetPlayerClass2.
const char* playerClassAsStr() {
    return "Warrior";
}

// Link-only: the local player has no Character, so the character handlers take their no-character paths.
Character* PlayerManager::GetLocalPlayerCharacter() {
    return nullptr;
}
const char* StringManager::getString(int) const {
    return nullptr;
}
int playerClassAsStrID(int) {
    return 0;
}
int CharProperties::GetPropIDFromName(const char*) {
    return -1;
}
int CharProperties::PROPS_GetInt(int, bool) const {
    return 0;
}
int Character::SG_GetPlayerClass() const {
    return -1;
}
bool ItemInventory::HasMainHandWeapon() const {
    return false;
}
bool ItemInventory::HasTwoHander(bool) const {
    return false;
}

// Link-only: the publish of _root.retval and the boolean value type.
void RenderFX::SetMember(const char* target, const char* name, const char* value) {
    g_published.push_back(std::string(target) + "." + name + "=" + value);
}
void RenderFX::SetMember(const char* target, const char* name, gameswf::as_value&) {
    g_published.push_back(std::string(target) + "." + name + "=<as_value>");
}
// Link-only: FS_SetFocus now runs against argMenu, whose RenderFX is test storage with no gameswf movie behind it, so
// the focus call is recorded instead of walking the movie (the library body looks the name up with RenderFX::Find).
void RenderFX::SetFocus(const char*, int) {
}
void gameswf::as_value::set_bool(bool) {}
void gameswf::as_value::drop_refs() {}

// Link-only: the GSLevel state that FS_PushState compares the stack top with (the storage is never read as an object).
alignas(16) unsigned char g_gsLevelStorage[64] __asm__("_ZN7GSLevel9s_gsLevelE");

// Link-only: tu_string members that the gameswf header declares out of line (DH2: bodies not in this tree).
int tu_string::utf8_char_count(const char*, int) {
    return 0;
}
void tu_string::resize(int) {}
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}
bool tu_string::operator==(const tu_string&) const {
    return false;
}

// Link-only: the GSFlashMenu singleton and the StateBase virtuals it inherits, as in the game-app GSEndGame test.
StateBase::~StateBase() {}
void StateBase::Ctor(const StateMachine*) {}
void StateBase::Dtor(const StateMachine*) {}
void StateBase::Update(StateMachine*, double) {}
void StateBase::Draw(const StateMachine*) {}
void StateBase::Pause(const StateMachine*) {}
void StateBase::Resume(const StateMachine*) {}
void StateBase::Draw2D(const StateMachine*) {}
void StateBase::Sleep(const StateMachine*) {}
void StateBase::WakeUp(const StateMachine*) {}

GSFlashMenu::GSFlashMenu() {}
GSFlashMenu::~GSFlashMenu() {}
void GSFlashMenu::Ctor(const StateMachine*) {}
void GSFlashMenu::Dtor(const StateMachine*) {}
void GSFlashMenu::Update(StateMachine*, double) {}
void GSFlashMenu::Draw(const StateMachine*) {}

GSFlashMenu GSFlashMenu::s_inst;

// Link-only: the sound name table that FS_PlayMusic and FS_PlaySoundFX search, and the manager calls they make once
// the cue is found. The calls are recorded nowhere: the assertions cover the name search and the result.
pydata::NameTable Arrays::Sounds::m_memberNames;
VoxSoundManager* VoxSoundManager::s_instance = nullptr;

void VoxSoundManager::PlayMusic(int, bool, bool, int) {
}
int VoxSoundManager::PlayMenu(int, bool, int, int) {
    return 1;
}

namespace {
char g_soundMusic[] = "music_town";
char g_soundClick[] = "sfx_click";
char* g_soundNames[] = {g_soundMusic, g_soundClick};
}  // namespace

int main() {
    // Zeroed storage is an empty std::vector (the state stack), so the guarded PushState finds an empty stack.
    ApplicationGetInstance().m_stateMachine = reinterpret_cast<StateMachine*>(g_machineStorage);
    ApplicationGetInstance().m_playerManager = reinterpret_cast<PlayerManager*>(g_playerStorage);
    ApplicationGetInstance().m_stringManager = reinterpret_cast<StringManager*>(g_stringStorage);
    // The menu's MenuFX, the menu that owns it, and the MultiMenuManager with its fake vtable (slot 14, PopMenu(bool)).
    MenuBase* fakeMenu = reinterpret_cast<MenuBase*>(g_menuObjStorage);
    fakeMenu->m_menu = reinterpret_cast<MenuFX*>(g_fxStorage);
    // FS_IsSaveSlotValid publishes its boolean on the argument menu's RenderFX (MenuBase m_menu, State +0x04). The
    // handlers that reach the menu use this object; a null menu here made FS_IsSaveSlotValid write through null.
    MenuBase* argMenu = reinterpret_cast<MenuBase*>(g_argMenuStorage);
    argMenu->m_menu = reinterpret_cast<MenuFX*>(g_fxStorage);
    *reinterpret_cast<void***>(g_mmmStorage) = g_fakeMmmVtable;
    g_fakeMmmVtable[14] = reinterpret_cast<void*>(&FakeMmmPopMenu);
    reinterpret_cast<MenuManager*>(g_managerStorage)->m_multiMenuManager =
        reinterpret_cast<MultiMenuManager*>(g_mmmStorage);
    // FS_ReturnToGame reads the save slot: -1 (no slot) takes the path that makes no call.
    ApplicationGetInstance().m_savegameManager = reinterpret_cast<SavegameManager*>(g_saveStorage);
    reinterpret_cast<SavegameManager*>(g_saveStorage)->m_lastSlot = -1;
    Arrays::Sounds::m_memberNames.names = g_soundNames;
    Arrays::Sounds::m_memberNames.size = 2;
    // The sound instance the two sound handlers call through (their bodies are stubbed above, so it is only used as
    // the implicit argument).
    VoxSoundManager::s_instance = reinterpret_cast<VoxSoundManager*>(&g_voxTag);

    // FS_IsSaveSlotValid: null args and slot -1 never reach SG_Exists; any other slot does. The slot publishes its
    // result on the menu it is given (argMenu), which is the object the original receives as its third argument.
    Check(MenuBase::FS_IsSaveSlotValid("", nullptr, argMenu), "FS_IsSaveSlotValid(null) returns true");
    Check(g_existsCalls.empty(), "FS_IsSaveSlotValid(null) does not call SG_Exists");
    Check(MenuBase::FS_IsSaveSlotValid("", "-1", argMenu), "FS_IsSaveSlotValid(-1) returns true");
    Check(g_existsCalls.empty(), "FS_IsSaveSlotValid(-1) does not call SG_Exists");
    Check(MenuBase::FS_IsSaveSlotValid("", "2", argMenu), "FS_IsSaveSlotValid(2) returns true");
    Check(g_existsCalls.size() == 1 && g_existsCalls[0] == 2, "FS_IsSaveSlotValid(2) calls SG_Exists(2) once");

    // Handlers whose return value is fixed on every path. FS_GetSaveSlot, FS_SetFocus, FS_GetPlayerClass,
    // FS_GetCharProperty and FS_GetPlayerClass2 publish on the menu's RenderFX, so they receive the argument menu the
    // engine passes (a null menu made them write through null); FS_ReturnToGame reads only the save slot here, which is
    // -1, so it takes no call on the menu.
    Check(MenuBase::FS_GetSaveSlot("", "", argMenu), "FS_GetSaveSlot returns true");
    Check(MenuBase::FS_ReturnToGame("", "", argMenu), "FS_ReturnToGame returns true");
    Check(MenuBase::FS_SetFocus("", "btn", argMenu), "FS_SetFocus returns true");
    g_published.clear();
    Check(MenuBase::FS_GetPlayerClass("", "", fakeMenu), "FS_GetPlayerClass returns true");
    Check(g_published.size() == 1 && g_published[0] == "_root.retval=",
          "FS_GetPlayerClass publishes an empty class name without a character");
    Check(MenuBase::FS_GetCharProperty("", "Strength", fakeMenu), "FS_GetCharProperty returns true");
    Check(MenuBase::FS_GetPlayerClass2("", "", argMenu), "FS_GetPlayerClass2 returns true");
    Check(!MenuBase::FS_GetHasOffHandWeapon("", "", nullptr), "FS_GetHasOffHandWeapon returns false without a character");
    Check(!MenuBase::FS_GetHasMainHandWeapon("", "", nullptr), "FS_GetHasMainHandWeapon returns false without a character");
    Check(!MenuBase::FS_GetHasTwoHandWeapon("", "", nullptr), "FS_GetHasTwoHandWeapon returns false without a character");

    // Menu push and pop by name.
    Check(MenuBase::FS_PushMenu("", "menu_Shop", nullptr), "FS_PushMenu returns true");
    Check(g_pushed.size() == 1 && g_pushed[0] == "menu_Shop", "FS_PushMenu pushes menu_Shop");
    Check(MenuBase::FS_PopMenu("", "menu_Shop", nullptr), "FS_PopMenu(name) returns true");
    Check(g_popped.size() == 1 && g_popped[0] == "menu_Shop", "FS_PopMenu(name) pops menu_Shop");
    Check(MenuBase::FS_SwitchMenu("", "menu_Main", nullptr), "FS_SwitchMenu returns true");
    Check(g_pushed.size() == 2 && g_pushed[1] == "menu_Main", "FS_SwitchMenu pushes menu_Main");
    Check(g_mmmPopCalls == 1 && !g_mmmPopRepeat, "FS_SwitchMenu pops one page through PopMenu(false) first");

    // Sound-name search: a known cue is found, an unknown or empty one is not.
    Check(MenuBase::FS_PlayMusic("", "music_town", nullptr), "FS_PlayMusic(known) returns true");
    Check(!MenuBase::FS_PlayMusic("", "music_none", nullptr), "FS_PlayMusic(unknown) returns false");
    Check(!MenuBase::FS_PlayMusic("", nullptr, nullptr), "FS_PlayMusic(null) returns false");
    Check(!MenuBase::FS_PlayMusic("", "", nullptr), "FS_PlayMusic(empty) returns false");
    Check(MenuBase::FS_PlaySoundFX("", "sfx_click", nullptr), "FS_PlaySoundFX(known) returns true");
    Check(!MenuBase::FS_PlaySoundFX("", "sfx_none", nullptr), "FS_PlaySoundFX(unknown) returns false");
    Check(!MenuBase::FS_PlaySoundFX("", nullptr, nullptr), "FS_PlaySoundFX(null) returns false");

    // Equip: null and empty args return false before the character is read.
    Check(!MenuBase::FS_AutoEquipSlot("", nullptr, nullptr), "FS_AutoEquipSlot(null) returns false");
    Check(!MenuBase::FS_AutoEquipSlot("", "", nullptr), "FS_AutoEquipSlot(empty) returns false");

    // State push: a menu that is not guarded is stored as the pending menu and pushed, owned false.
    Check(MenuBase::FS_PushState("", "menu_Shop", nullptr), "FS_PushState(menu_Shop) returns true");
    Check(g_menuLookups.size() == 1 && g_menuLookups[0] == "menu_Shop", "FS_PushState looks up menu_Shop");
    Check(GSFlashMenu::s_inst.m_pendingMenu == reinterpret_cast<MenuBase*>(&g_menuTag),
          "FS_PushState stores the looked-up menu as the pending menu");
    Check(g_pushStateCalls == 1 && g_pushStateState == &GSFlashMenu::s_inst && !g_pushStateOwned,
          "FS_PushState pushes GSFlashMenu::s_inst, not owned");

    // A guarded name needs the stack top, which is not reachable: no push, false.
    Check(!MenuBase::FS_PushState("", "menu_Ingame", nullptr), "FS_PushState(menu_Ingame) returns false");
    Check(g_pushStateCalls == 1, "FS_PushState(menu_Ingame) does not push");

    if (g_failures == 0) {
        std::printf("MenuBase batch g1-game-ui-MenuBase-8948cc-2: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
