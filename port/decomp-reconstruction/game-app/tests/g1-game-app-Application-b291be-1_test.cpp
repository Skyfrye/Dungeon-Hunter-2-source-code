// Test for batch g1-game-app-Application-b291be-1. Covers the functions whose logic runs without the engine:
// the version fields, the go-to-main-menu event, the frame-time computation, the saved-option queries, the
// title string, the GSInit thunk and LoadWorldMap. Exit status 0 means every check passed.
//
// Link: check_tu.sh --test <this file> g1-game-app-Application-b291be-1.cpp g1-game-app-Application-b291be-0.cpp
// (the batch -0 source provides GetVersionString and GetCurrentLevel). The engine and game classes that the
// batch source calls are defined below as small test stubs; their storage is never constructed.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/GSInit.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/GSLevelMap.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StringManager.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Defined by the globals batch in the original. The test defines them so the batch sources link alone.
int OPERATOR_PACKAGE_INGAME = 0;
int gAssertLevel = 0;
bool MenuBase::s_igmOpened = false;

// Storage for GSInit::s_inst under its linker name. The thunk calls SwitchBackground on that object, and the
// test's SwitchBackground stub never reads it, so raw storage under the same symbol is enough to link.
alignas(16) unsigned char g_gsInitStorage[64] __asm__("_ZN6GSInit6s_instE");

// GSLevel::s_level and GSLevel::s_gsLevel, read by GetCurrentLevel and IsLevelPaused (batch -0 source). Only their
// addresses and the level pointer are used here, so raw storage under the linker names is enough.
Level* g_gsLevelPtr __asm__("_ZN7GSLevel7s_levelE") = nullptr;
alignas(16) unsigned char g_gsLevelStorage[256] __asm__("_ZN7GSLevel9s_gsLevelE");

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Inputs and records for the stubs below.
std::uint32_t g_now = 0;
int g_language = 0;
int g_switchBackgroundCalls = 0;
int g_lastInstId = -1;
StateBase* g_lastSwitchState = nullptr;
bool g_lastSwitchOwned = true;
const StateMachine* g_lastSwitchMachine = nullptr;

alignas(GSLevelMap) unsigned char g_mapStorage[sizeof(GSLevelMap)];
alignas(SavegameManager) unsigned char g_savegameStorage[sizeof(SavegameManager)];
alignas(PyDataConstants) unsigned char g_pydataStorage[sizeof(PyDataConstants)];
alignas(StringManager) unsigned char g_stringStorage[sizeof(StringManager)];
alignas(StateMachine) unsigned char g_stateMachineStorage[sizeof(StateMachine)];

// Application storage with every byte zero. The functions tested here touch only plain members, which are
// set explicitly below.
Application* ZeroedApp() {
    alignas(Application) static unsigned char storage[sizeof(Application)];
    std::memset(storage, 0, sizeof storage);
    return reinterpret_cast<Application*>(storage);
}

SavegameManager* Savegame() {
    return reinterpret_cast<SavegameManager*>(g_savegameStorage);
}

void TestVersionRetail() {
    OPERATOR_PACKAGE_INGAME = 0;
    Application* app = ZeroedApp();
    Check(app->GetVersionMajor() == 1, "retail major of 1.0.2 is 1");
    Check(app->GetVersionMinor() == 0, "retail minor of 1.0.2 is 0");
    Check(app->GetVersionBuild() == 2, "retail build of 1.0.2 is 2");
}

void TestVersionIngame() {
    OPERATOR_PACKAGE_INGAME = 4;
    Application* app = ZeroedApp();
    Check(app->GetVersionMajor() == 1, "INGAME major of 01.00.00 is 1");
    Check(app->GetVersionMinor() == 0, "INGAME minor of 01.00 is 0");
    // The original calls atoi(NULL) here; the reconstruction returns 0 (see the batch source).
    Check(app->GetVersionBuild() == 0, "INGAME build has no third field and gives 0");
    OPERATOR_PACKAGE_INGAME = 0;
}

void TestGoToMainMenuEvent() {
    Application* app = ZeroedApp();
    app->m_goToMainMenuEvent = static_cast<GoToMainMenuEvent>(3);
    Check(static_cast<int>(app->GetGoToMainMenuEvent(false)) == 3, "peek returns the event");
    Check(static_cast<int>(app->GetGoToMainMenuEvent(false)) == 3, "peek keeps the event");
    Check(static_cast<int>(app->GetGoToMainMenuEvent(true)) == 3, "clear returns the event");
    Check(static_cast<int>(app->GetGoToMainMenuEvent(false)) == 0, "clear zeroes the event");
}

void TestBluetooth() {
    Check(ZeroedApp()->IsBluetoothEnabled(), "Bluetooth is reported enabled");
}

void TestComputeDt() {
    Application* app = ZeroedApp();
    app->m_lastTime = 1000;
    app->m_dtFactor = 1.0f;
    app->m_timeScale = 1.0f;
    app->m_dtScaledRemainder = 0.0f;
    g_now = 1016;
    const float first = app->ComputeDt();
    Check(app->m_dt == 16, "raw delta 16 ms gives m_dt 16");
    Check(app->m_dtScaled == 16, "unit scale gives m_dtScaled 16");
    Check(first == 0.0f, "no fraction left over");
    Check(app->m_lastTime == 1016, "the clock is stored in +0x88");

    app->m_dtFactor = 0.5f;
    app->m_timeScale = 1.5f;
    app->m_dtScaledRemainder = 0.75f;
    g_now = 1026;  // delta 10
    const float second = app->ComputeDt();
    Check(app->m_dt == 5, "factor 0.5 halves the delta to 5");
    Check(app->m_dtScaled == 8, "5 * 1.5 + 0.75 truncates to 8");
    Check(second == 0.25f, "the fraction 0.25 is returned and carried");
    Check(app->m_dtScaledRemainder == 0.25f, "the fraction is stored in +0x94");
}

void TestSavedOptions() {
    Application* app = ZeroedApp();
    app->m_savegameManager = Savegame();
    Check(app->HasSavedOption("DPad"), "DPad is an option");
    Check(!app->HasSavedOption("Nope"), "unknown option is absent");
    Check(app->IsSavedOptionOn("DPad"), "DPad is toggled on");
    Check(!app->IsSavedOptionOn("Sound"), "Sound exists but is not toggled");
    Check(!app->IsSavedOptionOn("Nope"), "missing option is not on");
    Check(app->GetSavedOption("Sound") == 3, "GetSavedOption returns the value");
    Check(app->GetSavedOption("Nope") == 0, "missing option gives 0");
    Check(app->IsUsingDPad(), "IsUsingDPad follows the DPad option");
}

void TestTitleString() {
    Application* app = ZeroedApp();
    app->m_savegameManager = Savegame();
    app->m_pyDataConstants = reinterpret_cast<PyDataConstants*>(g_pydataStorage);
    app->m_stringManager = reinterpret_cast<StringManager*>(g_stringStorage);

    char buf[16];
    std::memset(buf, '#', sizeof buf);
    g_language = 4;
    app->GetTitleString(buf, sizeof buf);
    Check(std::strcmp(buf, "Dark Quest 2") == 0, "language 4 gives Dark Quest 2");

    std::memset(buf, '#', sizeof buf);
    g_language = 0;
    app->GetTitleString(buf, sizeof buf);
    Check(std::strcmp(buf, "Title Seven") == 0, "other languages use the MENU_GAME_TITLE string");

    std::memset(buf, '#', sizeof buf);
    app->GetTitleString(buf, 0);
    Check(buf[0] == '#', "size 0 writes nothing");
    app->GetTitleString(nullptr, 16);  // must return without touching memory
}

void TestSwitchGSInitBackground() {
    g_switchBackgroundCalls = 0;
    Application* app = ZeroedApp();
    app->SwitchGSInitBackground();
    Check(g_switchBackgroundCalls == 1, "the thunk forwards once to GSInit::SwitchBackground");
}

void TestLoadWorldMap() {
    Application* app = ZeroedApp();
    app->m_stateMachine = reinterpret_cast<StateMachine*>(g_stateMachineStorage);
    app->LoadWorldMap(7);
    Check(g_lastInstId == 7, "LoadWorldMap passes the index to GSLevelMap::Inst");
    Check(static_cast<const void*>(g_lastSwitchState) == static_cast<const void*>(g_mapStorage),
          "the world map state is switched to");
    Check(!g_lastSwitchOwned, "the state is not owned by the machine");
    Check(g_lastSwitchMachine == app->m_stateMachine, "the switch is made on m_stateMachine");
}

}  // namespace

// Test stubs for the classes the batch source calls. Each returns fixed values from the inputs above.

std::uint32_t glitch::os::Timer::getRealTime() {
    return g_now;
}

bool SavegameManager::hasOption(const char* name) const {
    return std::strcmp(name, "DPad") == 0 || std::strcmp(name, "Sound") == 0;
}

bool SavegameManager::isOptionToggled(const char* name) const {
    return std::strcmp(name, "DPad") == 0;
}

int SavegameManager::getOption(const char* name) const {
    return std::strcmp(name, "Sound") == 0 ? 3 : -1;
}

int SavegameManager::getLanguage() const {
    return g_language;
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    const bool isTitle = std::strcmp(className, "StrID") == 0 && std::strcmp(constantName, "MENU_GAME_TITLE") == 0;
    return isTitle ? 7 : -1;
}

const char* StringManager::getString(int id) const {
    return id == 7 ? "Title Seven" : "?";
}

void GSInit::SwitchBackground() {
    ++g_switchBackgroundCalls;
}

GSLevelMap* GSLevelMap::Inst(int levelId) {
    g_lastInstId = levelId;
    return reinterpret_cast<GSLevelMap*>(g_mapStorage);
}

void StateMachine::SwitchState(StateBase* state, bool owned) {
    g_lastSwitchState = state;
    g_lastSwitchOwned = owned;
    g_lastSwitchMachine = this;
}

// IsLevelRunning and IsLevelPaused (batch -1 source) read the level pointer and the state stack. The stack is a
// std::vector placed into the zeroed state-machine storage, so it is a valid empty vector.
namespace {

void TestLevelPaused() {
    Application* app = ZeroedApp();
    StateMachine* machine = reinterpret_cast<StateMachine*>(g_stateMachineStorage);
    std::memset(g_stateMachineStorage, 0, sizeof g_stateMachineStorage);
    new (&machine->m_stack) std::vector<StateMachine::StateInfo>();
    app->m_stateMachine = machine;
    alignas(Level) static unsigned char levelStorage[sizeof(Level)];
    std::memset(levelStorage, 0, sizeof levelStorage);
    alignas(StateBase) static unsigned char otherStorage[16];
    MenuBase::s_igmOpened = false;

    g_gsLevelPtr = nullptr;
    Check(app->IsLevelPaused(false) == false, "IsLevelPaused is false with no level");
    Check(app->IsLevelPaused(true) == false, "IsLevelPaused(ignore) is false with no level");

    g_gsLevelPtr = reinterpret_cast<Level*>(levelStorage);
    Check(app->IsLevelPaused(false) == true, "IsLevelPaused is true in a level with an empty stack");
    Check(app->IsLevelPaused(true) == true, "IsLevelPaused(ignore) is true in a level with an empty stack");

    machine->m_stack.push_back(StateMachine::StateInfo{&GSLevel::s_gsLevel, false});
    Check(app->IsLevelPaused(true) == false, "IsLevelPaused(ignore) is false with GSLevel on top");
    MenuBase::s_igmOpened = true;
    Check(app->IsLevelPaused(false) == true, "IsLevelPaused is s_igmOpened with GSLevel on top (open)");
    MenuBase::s_igmOpened = false;
    Check(app->IsLevelPaused(false) == false, "IsLevelPaused is s_igmOpened with GSLevel on top (closed)");

    machine->m_stack.back().state = reinterpret_cast<StateBase*>(otherStorage);
    Check(app->IsLevelPaused(true) == true, "IsLevelPaused(ignore) is true with another state on top");
    Check(app->IsLevelPaused(false) == true, "IsLevelPaused is true with another state on top");

    g_gsLevelPtr = nullptr;
    app->m_stateMachine = nullptr;
    machine->m_stack.~vector();
}

}  // namespace

int main() {
    TestVersionRetail();
    TestVersionIngame();
    TestGoToMainMenuEvent();
    TestBluetooth();
    TestComputeDt();
    TestSavedOptions();
    TestTitleString();
    TestSwitchGSInitBackground();
    TestLoadWorldMap();
    TestLevelPaused();
    if (g_failures == 0) {
        std::printf("g1-game-app-Application-b291be-1 test: all checks passed\n");
        return 0;
    }
    return 1;
}
