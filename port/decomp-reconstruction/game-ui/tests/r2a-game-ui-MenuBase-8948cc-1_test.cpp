// Checks MenuBase::FS_StopDialog of batch r2a-game-ui-MenuBase-8948cc-1. The body is in g1-game-ui-MenuBase-8948cc-4.cpp,
// which this test links with. The queue is a real MenuMessageManager<DialogMsg,1>::s_inst, so the test pushes messages into
// its queue 0 and the call pops them (s_inst is a reference to a queue object of the test). Invoke is a recording stand-in (the real one calls the HUD root through RenderFX).
// Everything else below the includes is a link-only stub that the g1-game-ui-MenuBase-8948cc-4 object file needs.
#include <cstdio>
#include <initializer_list>
#include <new>
#include <string>
#include <vector>


#include "gameswf/gameswf.h"  // tu_string members that the link needs; gameswf::rect is complete here too
#include "dh2/Application.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Dropable.hpp"
#include "dh2/GSInit.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// ---- Storage for the singletons the bodies reach. Nothing here is constructed. ----
namespace {
alignas(16) unsigned char g_switchStorage[64];
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_managerStorage[256];
alignas(16) unsigned char g_savegameStorage[128];
alignas(16) unsigned char g_stringStorage[64];
alignas(16) unsigned char g_menuStorage[512];
}  // namespace

// GSInit::s_inst (_ZN6GSInit6s_instE) is referenced by MenuBase::Show. Its constructor is not needed, so the storage is
// defined under that assembler name at global scope (external linkage). The test never names GSInit::s_inst.
alignas(16) unsigned char g_gsInitStorage[256] __asm__("_ZN6GSInit6s_instE");

// ---- Link-only definitions: DebugSwitches (the trace read; the switch always reads false). ----
DebugSwitches* DebugSwitches::GetInstance() {
    return reinterpret_cast<DebugSwitches*>(g_switchStorage);
}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

// ---- Link-only definitions: singletons and engine calls the bodies reach. ----
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}
Level* Application::GetCurrentLevel() const {
    return nullptr;
}
MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_managerStorage);
}
void MenuManager::UnRegisterListener(MenuBase*) {}
Character* PlayerManager::GetLocalPlayerCharacter() {
    return nullptr;
}
int SavegameManager::getLanguage() const {
    return 0;
}
int SavegameManager::setLanguage(int) {
    return 1;  // the original returns StringManager::switchPack's bool; the stubs report success
}
void SavegameManager::saveSettings() {}
const char* StringManager::getString(int) const {
    return nullptr;
}
const char* StringManager::getStringFromSymbol(const char*) const {
    return nullptr;
}
bool Level::SG_IsMapLocLocked(int) const {
    return false;
}
void GSInit::ClearLoadingScreen() {}
void DragAndDrop::ResetPositions() {}
DragAndDrop::~DragAndDrop() {}
Dragable::~Dragable() {}
Dropable::~Dropable() {}
DebugCachedCharacter::DebugCachedCharacter() {}
DebugCachedCharacter::~DebugCachedCharacter() {}
gameswf::character* DebugCachedCharacter::GetChar() {
    return nullptr;
}
void DebugCachedCharacter::RefreshCache(const char*, MenuFX*, gameswf::character*) {}
int tu_string::utf8_char_count(const char*, int) {
    return 0;
}
void tu_string::resize(int) {}
// The gameswf header declares these out of line (DH2: bodies not in this tree); the g1-game-ui-MenuBase-8948cc-4 TU reaches them.
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}
bool tu_string::operator==(const tu_string&) const {
    return false;
}

// DialogMsg: the constructors and destructor (out of line in the DialogMsg source), the statics the handler reads, and
// the dialog queue. The queue is a real object here, so messages can be pushed into m_queues[0].
DialogMsg::DialogMsg(const std::string& title, const std::string& text, int style, int actorIndex)
    : std::string(title), m_text(text), m_style(style) {
    static_cast<void>(actorIndex);
}
DialogMsg::DialogMsg(const DialogMsg& other)
    : std::string(other), m_text(other.m_text), m_style(other.m_style), m_actorName(other.m_actorName) {}
DialogMsg::~DialogMsg() {}
const char* DialogMsg::s_SkipFuncName = nullptr;
const char* DialogMsg::s_StartFuncName[] = {"StartDialog", nullptr};

// Recorded Invoke calls: the function name and the queue argument.
std::vector<std::string> g_invokedNames;
std::vector<int> g_invokedQueues;
template <>
void MenuMessageManager<DialogMsg, 1>::Invoke(const char* functionName, int queue) const {
    g_invokedNames.emplace_back(functionName);
    g_invokedQueues.push_back(queue);
}
template <>
MenuMessageManager<DialogMsg, 1>::~MenuMessageManager() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private queue object.
static MenuMessageManager<DialogMsg, 1> g_testInstance_1{};
template <>
MenuMessageManager<DialogMsg, 1>& MenuMessageManager<DialogMsg, 1>::s_inst = g_testInstance_1;

// ---- Link-only definitions: MenuBase members the constructor and the vtable reach (other batches define them). ----
MenuBase::~MenuBase() {}
void MenuBase::Create() {}
void MenuBase::GotFocus() {}
void MenuBase::LostFocus() {}
void MenuBase::Update() {}
void MenuBase::OnEvent(RenderFX::Event&) {}
void MenuBase::OnFSCommand(const char*, const char*) {}
bool MenuBase::CanHandleEvent(RenderFX::Event&) {
    return true;
}
bool MenuBase::IsValidMenu() const {
    return false;
}
void MenuBase::ProcessLocalization() {}
void MenuBase::SetIsLocalised(bool) {}
void MenuBase::DBG_Draw2DDeadZones() const {}
void MenuBase::CacheStrings() {}
void MenuBase::SetVisible(bool) {}
void MenuBase::RegisterDeadZones() {}
gameswf::character* MenuBase::GetCurrentMenuContext() const {
    return nullptr;
}
// MenuFX::State's destructor is its key function, so the test emits the State vtable and needs every State virtual.
MenuFX::State::State(const char*) {}
MenuFX::State::~State() {}
void MenuFX::State::Create() {}
void MenuFX::State::Show() {}
void MenuFX::State::Hide() {}
void MenuFX::State::GotFocus() {}
void MenuFX::State::LostFocus() {}
void MenuFX::State::Update() {}
void MenuFX::State::Update(int) {}
void MenuFX::State::UpdateBackground() {}
void MenuFX::State::UpdateBackground(int) {}
void MenuFX::State::OnEvent(RenderFX::Event&) {}
void MenuFX::State::OnFSCommand(const char*, const char*) {}
bool MenuFX::State::CanHandleEvent(RenderFX::Event&) {
    return true;
}

// ---- Link-only definitions: the FSCommand handlers that other batches define. The registry only stores their addresses. ----
#define MENU_FS_STUB(fn) \
    bool MenuBase::fn(const char*, const char*, void*) { return false; }
MENU_FS_STUB(FS_AssignPoint)
MENU_FS_STUB(FS_AutoEquipSlot)
MENU_FS_STUB(FS_ContinueGame)
MENU_FS_STUB(FS_DecOption)
MENU_FS_STUB(FS_EndLoading)
MENU_FS_STUB(FS_ExitGame)
MENU_FS_STUB(FS_GetCharProperty)
MENU_FS_STUB(FS_GetHasMainHandWeapon)
MENU_FS_STUB(FS_GetHasOffHandWeapon)
MENU_FS_STUB(FS_GetHasTwoHandWeapon)
MENU_FS_STUB(FS_GetNumPotions)
MENU_FS_STUB(FS_GetOption)
MENU_FS_STUB(FS_GetPlayerClass)
MENU_FS_STUB(FS_GetPlayerClass2)
MENU_FS_STUB(FS_GetPlayerName)
MENU_FS_STUB(FS_GetSaveSlot)
MENU_FS_STUB(FS_GetString)
MENU_FS_STUB(FS_GetString2)
MENU_FS_STUB(FS_GoToMainMenu)
MENU_FS_STUB(FS_IncOption)
MENU_FS_STUB(FS_IncSkill)
MENU_FS_STUB(FS_IsSaveSlotValid)
MENU_FS_STUB(FS_LaunchTwitter)
MENU_FS_STUB(FS_LoadLevel)
MENU_FS_STUB(FS_LoadLevel2)
MENU_FS_STUB(FS_LoadOptions)
MENU_FS_STUB(FS_LoadWorldMap)
MENU_FS_STUB(FS_LockCharacter)
MENU_FS_STUB(FS_PauseGameplay)
MENU_FS_STUB(FS_PlayMusic)
MENU_FS_STUB(FS_PlaySoundFX)
MENU_FS_STUB(FS_PopAllAbove)
MENU_FS_STUB(FS_PopAllMenu)
MENU_FS_STUB(FS_PopMenu)
MENU_FS_STUB(FS_PushMenu)
MENU_FS_STUB(FS_PushState)
MENU_FS_STUB(FS_ResetDraggablePosition)
MENU_FS_STUB(FS_ResetSaveFile)
MENU_FS_STUB(FS_ResumeGameplay)
MENU_FS_STUB(FS_ReturnToGame)
MENU_FS_STUB(FS_SaveOptions)
MENU_FS_STUB(FS_SetBtnImage)
MENU_FS_STUB(FS_SetDifficulty)
MENU_FS_STUB(FS_SetFocus)
MENU_FS_STUB(FS_SetLanguage)
MENU_FS_STUB(FS_SetOption)
MENU_FS_STUB(FS_SetPlayerClass)
MENU_FS_STUB(FS_SetPlayerName)
MENU_FS_STUB(FS_SetSaveSlot)
MENU_FS_STUB(FS_SkipScript)
MENU_FS_STUB(FS_StartGame)
MENU_FS_STUB(FS_StopMusic)
MENU_FS_STUB(FS_SwitchMenu)
MENU_FS_STUB(FS_ToggleOption)
MENU_FS_STUB(FS_UnlockCharacter)
#undef MENU_FS_STUB

// ---- Checks. ----
namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Empties queue 0 of the dialog queue, fills it with one message per title, and clears the recorder and the skip name.
void Reset(std::initializer_list<const char*> titles) {
    std::deque<DialogMsg>& queue = MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0];
    queue.clear();
    for (const char* title : titles) {
        queue.push_back(DialogMsg(title, std::string("text of ") + title, 0, -1));
    }
    g_invokedNames.clear();
    g_invokedQueues.clear();
    DialogMsg::s_SkipFuncName = nullptr;
}

}  // namespace

int main() {
    std::deque<DialogMsg>& queue = MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0];

    // An empty queue: nothing is popped or invoked, and the result is true.
    Reset({});
    Check(MenuBase::FS_StopDialog("", "", nullptr), "FS_StopDialog returns true on an empty queue");
    Check(queue.empty() && g_invokedNames.empty(), "FS_StopDialog on an empty queue pops and invokes nothing");

    // Two messages and no skip function: the front is popped, then the start function runs for the message that remains.
    Reset({"first", "second"});
    Check(MenuBase::FS_StopDialog("", "", nullptr), "FS_StopDialog returns true with two messages");
    Check(queue.size() == 1 && queue.front().m_text == "text of second", "FS_StopDialog pops the front message");
    Check(g_invokedNames.size() == 1 && g_invokedNames[0] == "StartDialog", "FS_StopDialog invokes the start function once");
    Check(g_invokedQueues.size() == 1 && g_invokedQueues[0] == 0, "the start invocation passes queue 0");

    // The last message: popped, and the start function is not invoked again.
    Check(MenuBase::FS_StopDialog("", "", nullptr), "FS_StopDialog returns true with one message");
    Check(queue.empty() && g_invokedNames.size() == 1, "FS_StopDialog with one message pops it and invokes nothing more");

    // A skip function: it runs after the pop, and the start function runs after it when a message remains.
    Reset({"first", "second"});
    DialogMsg::s_SkipFuncName = "SkipDialog";
    Check(MenuBase::FS_StopDialog("", "", nullptr), "FS_StopDialog returns true with a skip function");
    Check(queue.size() == 1, "FS_StopDialog with a skip function pops one message");
    Check(g_invokedNames.size() == 2 && g_invokedNames[0] == "SkipDialog" && g_invokedNames[1] == "StartDialog",
          "the skip function is invoked before the start function");

    // A skip function with one message: the skip runs, and no start function runs since the queue is then empty.
    Reset({"only"});
    DialogMsg::s_SkipFuncName = "SkipDialog";
    Check(MenuBase::FS_StopDialog("", "", nullptr), "FS_StopDialog returns true with one message and a skip function");
    Check(queue.empty() && g_invokedNames.size() == 1 && g_invokedNames[0] == "SkipDialog",
          "a single message with a skip function invokes only the skip function");

    Reset({});
    if (g_failures == 0) {
        std::printf("MenuBase batch r2a-game-ui-MenuBase-8948cc-1: all checks passed\n");
        return 0;
    }
    return 1;
}
