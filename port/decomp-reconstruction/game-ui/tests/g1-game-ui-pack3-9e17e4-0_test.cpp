// Checks the MenuConfirm, MenuConfirmBase and MenuFlash2DCamera bodies of batch g1-game-ui-pack3-9e17e4-0 without the
// engine. MenuFX::State, MenuBase, MenuManager, GameSWFUtils and the screen globals are replaced here by recording stubs,
// so only this test and the batch source are linked. This file defines the key functions of MenuFX::State and MenuBase
// (their destructors), so their vtables are emitted here and every virtual they name has a stub below.
// MenuFlash2DCamera::Update is PARTIAL: the checks cover only the easing and the left and top clamps it rebuilds.
#include <array>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "gameswf/gameswf.h"  // gameswf::rect must be complete: the MenuBase stub ctor and dtor destroy m_deadZones
#include "dh2/Application.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuConfirm.hpp"
#include "dh2/MenuConfirmBase.hpp"
#include "dh2/MenuFlash2DCamera.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/global/screen_size.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/render_target.hpp"

// Screen size globals. The definitions belong to the owning category; the test sets the values it needs.
int Width_Screen = 960;
int Height_Screen = 540;

// The Application singleton. MenuFlash2DCamera::Update reads the screen size from the last render target of
// Application::m_device->videoDriver inside its limit-clip branch (game-ui/src/g1-game-ui-pack3-9e17e4-0.cpp line 154),
// so that branch needs a real device chain, not a null m_device -- the null one is the dereference this test crashed
// on. The storage is the same zero-filled Application block the other game-ui tests use; only m_device is read.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Recorded state of the stubs.
std::vector<const MenuBase*> g_registered;     // MenuManager::RegisterMenu arguments, in call order
std::vector<std::string> g_belowNames;         // MenuManager::GetMenuBelow names
std::vector<const MenuBase*> g_listenersIn;    // MenuManager::RegisterListener arguments
std::vector<const MenuBase*> g_listenersOut;   // MenuManager::UnRegisterListener arguments
int g_baseShow = 0;                            // MenuBase::Show calls
int g_baseHide = 0;                            // MenuBase::Hide calls
int g_rectQueries = 0;                         // GameSWFUtils::GetAbsoluteBoundingRect calls
std::array<float, 4> g_rect = {0.0f, 0.0f, 0.0f, 0.0f};  // what the bounding-rect stub returns

// Stand-ins for the objects the stubs point at. The stubs never read them.
alignas(16) char g_fakeManager[64];
alignas(16) char g_fakeBelow[64];                // the menu that GetMenuBelow returns
alignas(16) char g_fakeMenuFX[sizeof(MenuFX)];   // the MenuFX whose m_flags MenuConfirmBase::Show reads
int g_clipTag = 0;                               // address used as a gameswf::character* (never dereferenced)

gameswf::character* FakeClip() {
    return reinterpret_cast<gameswf::character*>(&g_clipTag);
}

MenuFX* FakeMenuFX() {
    return reinterpret_cast<MenuFX*>(g_fakeMenuFX);
}

MenuBase* FakeBelow() {
    return reinterpret_cast<MenuBase*>(g_fakeBelow);
}

void ResetRecords() {
    g_registered.clear();
    g_belowNames.clear();
    g_listenersIn.clear();
    g_listenersOut.clear();
    g_baseShow = 0;
    g_baseHide = 0;
    g_rectQueries = 0;
}

bool NameIs(const char* name, const char* expected) {
    return name != nullptr && std::strcmp(name, expected) == 0;
}

void TestConstructorRegisters() {
    ResetRecords();
    MenuConfirmBase dialog("test_dialog");
    Check(NameIs(dialog.m_name, "test_dialog"), "the MenuConfirmBase constructor passes its name to the base");
    Check(dialog.m_savedFlags == 0, "the constructor clears m_savedFlags");
    Check(g_registered.size() == 1 && g_registered[0] == &dialog,
          "the constructor registers the dialog with MenuManager");
}

void TestGetInstance() {
    ResetRecords();
    MenuConfirm* first = MenuConfirm::GetInstance();
    MenuConfirm* second = MenuConfirm::GetInstance();
    Check(first == second, "GetInstance returns the same object on every call");
    Check(NameIs(first->m_name, "menu_confirm"), "the singleton is built with the name menu_confirm");
    Check(g_registered.size() == 1 && g_registered[0] == static_cast<MenuBase*>(first),
          "the singleton registers itself exactly once");
}

void TestShowHide() {
    MenuConfirmBase dialog("test_dialog");
    dialog.m_menu = FakeMenuFX();
    FakeMenuFX()->m_flags = 0x41u;

    ResetRecords();
    dialog.Show();
    Check(g_belowNames.size() == 1 && NameIs(g_belowNames[0].c_str(), "test_dialog"),
          "Show looks up the menu below by the dialog's name");
    Check(g_listenersOut.size() == 1 && g_listenersOut[0] == FakeBelow(),
          "Show unregisters the menu below as a listener");
    Check(g_listenersIn.empty(), "Show does not register a listener");
    Check(g_baseShow == 1, "Show runs MenuBase::Show once");
    Check(dialog.m_savedFlags == 0x41u, "Show saves the owning MenuFX's flags word");

    ResetRecords();
    dialog.Hide();
    Check(g_belowNames.size() == 1 && NameIs(g_belowNames[0].c_str(), "test_dialog"),
          "Hide looks up the menu below by the dialog's name");
    Check(g_listenersIn.size() == 1 && g_listenersIn[0] == FakeBelow(),
          "Hide registers the menu below as a listener");
    Check(g_listenersOut.empty(), "Hide does not unregister a listener");
    Check(g_baseHide == 1, "Hide runs MenuBase::Hide once");
}

void TestCameraConstructor() {
    MenuFlash2DCamera camera(FakeMenuFX());
    Check(camera.m_menu == FakeMenuFX(), "the camera keeps its menu at +0x04");
    Check(camera.m_limitClip == nullptr, "the camera starts with no clip");
    Check(camera.m_centerX == 480, "the camera centre x is half the screen width");
    Check(camera.m_centerY == 270, "the camera centre y is half the screen height");
    Check(camera.m_x == 0 && camera.m_y == 0 && camera.m_targetX == 0 && camera.m_targetY == 0,
          "the camera starts at the origin with the target at the origin");
}

void TestEasing() {
    MenuFlash2DCamera up(FakeMenuFX());
    up.m_targetX = 100;
    up.Update();
    Check(up.m_x == 11, "one step toward a target above: x + 1 + (target - x) / 10");
    up.Update();
    Check(up.m_x == 20, "second step: 11 + 1 + 89 / 10");

    MenuFlash2DCamera down(FakeMenuFX());
    down.m_x = 50;
    down.m_targetX = 0;
    down.Update();
    Check(down.m_x == 44, "one step toward a target below: x - 1 - (x - target) / 10");

    MenuFlash2DCamera still(FakeMenuFX());
    still.m_x = 7;
    still.m_targetX = 7;
    still.m_y = -3;
    still.m_targetY = -3;
    still.Update();
    Check(still.m_x == 7 && still.m_y == -3, "no step when the camera is at its target");

    MenuFlash2DCamera vertical(FakeMenuFX());
    vertical.m_y = 0;
    vertical.m_targetY = -30;
    vertical.Update();
    Check(vertical.m_y == -4, "y eases toward a target below: 0 - 1 - 30 / 10");

    // Each step moves by at least one unit and never passes the target, so repeated steps settle exactly on it.
    MenuFlash2DCamera settle(FakeMenuFX());
    settle.m_targetX = 100;
    settle.m_targetY = -77;
    for (int i = 0; i < 300; ++i) {
        settle.Update();
    }
    Check(settle.m_x == 100 && settle.m_y == -77, "repeated steps settle exactly on both targets");
}

void TestSetLimitClip() {
    MenuFlash2DCamera camera(FakeMenuFX());
    g_rect = {-50.0f, 500.0f, -30.0f, 400.0f};
    ResetRecords();
    camera.SetLimitClip(FakeClip());
    Check(camera.m_limitClip == FakeClip(), "SetLimitClip keeps the clip at +0x08");
    Check(g_rectQueries == 1, "SetLimitClip reads the absolute bounding rect once");
    Check(camera.m_clipMinX == -50.0f && camera.m_clipMaxX == 500.0f && camera.m_clipMinY == -30.0f &&
              camera.m_clipMaxY == 400.0f,
          "the four clip words are the rect's xmin, xmax, ymin and ymax");

    camera.SetLimitClip(nullptr);
    Check(camera.m_limitClip == nullptr, "a null clip clears the clip");
    Check(g_rectQueries == 1, "a null clip does not read the bounding rect");
    Check(camera.m_clipMinX == -50.0f && camera.m_clipMaxY == 400.0f, "a null clip keeps the last bounds");
}

void TestClipClamps() {
    MenuFlash2DCamera camera(FakeMenuFX());
    g_rect = {-50.0f, 500.0f, -30.0f, 400.0f};
    camera.SetLimitClip(FakeClip());

    camera.m_x = 80;
    camera.m_targetX = 80;
    camera.m_y = 40;
    camera.m_targetY = 40;
    camera.Update();
    Check(camera.m_x == 50, "left clamp: when minX + x > 0, x becomes -minX");
    Check(camera.m_y == 30, "top clamp: when minY + y > 0, y becomes -minY");

    camera.m_x = -10;
    camera.m_targetX = -10;
    camera.m_y = -10;
    camera.m_targetY = -10;
    camera.Update();
    Check(camera.m_x == -10 && camera.m_y == -10, "no clamp while minX + x and minY + y are not above zero");

    MenuFlash2DCamera unclipped(FakeMenuFX());
    unclipped.m_x = 80;
    unclipped.m_targetX = 80;
    unclipped.Update();
    Check(unclipped.m_x == 80, "without a clip the left clamp does not run");
}

}  // namespace

// ----- Stubs for the engine functions the bodies reach -----

// MenuFX::State: its destructor is the key function, so this file emits the State vtable and needs every State virtual.
// The constructor copies the name, which the MenuConfirmBase code reads back through m_name.
MenuFX::State::State(const char* name) {
    std::strncpy(m_name, name, sizeof(m_name) - 1);
    m_name[sizeof(m_name) - 1] = '\0';
}
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
bool MenuFX::State::CanHandleEvent(RenderFX::Event&) { return true; }

// gameswf's string members, which the inline code of gameswf.h reaches from this translation unit.
int tu_string::utf8_char_count(const char*, int) { return 0; }
void tu_string::resize(int) {}
bool tu_string::operator==(const tu_string&) const { return false; }
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}

// MenuBase: its destructor is the key function, so this file emits the MenuBase vtable and needs every MenuBase virtual.
MenuBase::MenuBase(const char* name) : MenuFX::State(name) {}
MenuBase::~MenuBase() {}
void MenuBase::Create() {}
void MenuBase::Show() { ++g_baseShow; }
void MenuBase::Hide() { ++g_baseHide; }
void MenuBase::GotFocus() {}
void MenuBase::LostFocus() {}
void MenuBase::Update() {}
void MenuBase::OnEvent(RenderFX::Event&) {}
void MenuBase::OnFSCommand(const char*, const char*) {}
bool MenuBase::CanHandleEvent(RenderFX::Event&) { return true; }
bool MenuBase::MyFSCommand(const char*, const char*) { return false; }
bool MenuBase::IsValidMenu() const { return true; }
void MenuBase::ProcessLocalization() {}
void MenuBase::SetIsLocalised(bool) {}
void MenuBase::DBG_Draw2DDeadZones() const {}
void MenuBase::CacheStrings() {}

// MenuManager: the singleton and the registration calls the bodies make.
MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_fakeManager);
}
void MenuManager::RegisterMenu(MenuBase* menu) {
    g_registered.push_back(menu);
}
MenuBase* MenuManager::GetMenuBelow(const char* name) {
    g_belowNames.emplace_back(name);
    return FakeBelow();
}
void MenuManager::RegisterListener(MenuBase* menu) {
    g_listenersIn.push_back(menu);
}
void MenuManager::UnRegisterListener(MenuBase* menu) {
    g_listenersOut.push_back(menu);
}

// GameSWFUtils::GetAbsoluteBoundingRect: returns the rect the test sets.
std::array<float, 4> GameSWFUtils::GetAbsoluteBoundingRect(gameswf::character*) {
    ++g_rectQueries;
    return g_rect;
}

// RenderFX::SetViewport and SetBounds are the two engine calls MenuFlash2DCamera::Update ends with. The library bodies
// (0x7a9bac and 0x7a9b30) go through m_player->get_root(), and this test builds no gameswf player, so they are recorded
// here instead.
static int g_viewportCalls = 0;
static int g_boundsCalls = 0;

void RenderFX::SetViewport(int, int, int, int) {
    ++g_viewportCalls;
}
void RenderFX::SetBounds(int, int, int, int, gameswf::scale_mode) {
    ++g_boundsCalls;
}

// The device chain Application::m_device->videoDriver->m_renderTargets.back() the clamp read needs, built for real:
// glitch::IDevice (its port constructor only copies the parameters) and a glitch::video::CNullDriver, whose constructor
// pushes its screen framebuffer on the render-target stack. That framebuffer is 0 x 0 in the port (null_driver.hpp),
// which is the size the assertions were written against: the left and top clamps fire on the clip bounds alone, and
// the width/height-dependent right and bottom clamps must not fire.
static void BuildApplicationDevice() {
    static glitch::SCreationParameters parameters{};
    static glitch::IDevice device(parameters);
    static glitch::video::CNullDriver driver(&device);
    static struct DeviceDetach { ~DeviceDetach() { device.videoDriver = nullptr; } } detach;  // ~IDevice drops the driver, which is a static here
    device.videoDriver = &driver;
    ApplicationGetInstance().m_device = &device;
}

// ----- Driver -----

int main() {
    BuildApplicationDevice();
    TestConstructorRegisters();
    TestGetInstance();
    TestShowHide();
    TestCameraConstructor();
    TestEasing();
    TestSetLimitClip();
    TestClipClamps();
    if (g_failures == 0) {
        std::printf("g1-game-ui-pack3-9e17e4-0 tests passed\n");
        return 0;
    }
    std::printf("%d g1-game-ui-pack3-9e17e4-0 check(s) failed\n", g_failures);
    return 1;
}
