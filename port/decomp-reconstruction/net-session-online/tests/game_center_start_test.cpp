#include "net-session-online/game_center.hpp"

#include <cstdint>
#include <cstdio>
#include <string>

#include "core-platform/gc_singleton.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/Singleton.hpp"
#include "vendor-gameswf/as_value.hpp"

// The objects the production body dereferences, and the movie lookup its ActionScript callback makes.
//
// GCStartMultiplayerGame (0x499f24) ends with
//   MenuManager::GetInstance()->GetRoot()->InvokeASCallback("_root", "GoToVerificationScreen", nullptr, 0);
// on the path where the start gate (+0x15) is SET (asm 0x499f8c..0x499fb0; the gate test at 0x499f34 returns
// before it). The two library bodies that chain walks are real here: MenuManager::GetInstance (0x42ca8c) returns
// Application::m_menuManager (Application +0x54) and GetRoot (0x42cb80) reads
// m_multiMenuManager->m_menuFX[2] (MultiMenuManager +0x13c). A test that leaves m_menuManager null therefore
// faults inside GetRoot before main prints anything: that null was this test's crash (0xC0000005), not a static
// initialiser and not the production body.
//
// The chain is therefore supplied with REAL objects rather than null stand-ins, the way
// game-ui/tests/g1-game-ui-MenuBase-8948cc-1_test.cpp supplies them for the same GetRoot chain: a real
// MenuManager and a real MultiMenuManager in zero-filled static storage, with the root movie slot pointed at a
// MenuFX. GetInstance and GetRoot are the library's own bodies, so the chain itself is genuinely exercised.
//
// The gate the body reads is the SINGLETON's (+0x15), via GCSingleton<GameCenter>::GetInstance(), not this->.
// So a start on a local GameCenter still runs the tail whenever the singleton's gate is open, while the start
// flag and the start time are written to the singleton either way. The checks below pin that down.
namespace test_objects {

// Zero-filled: nothing calls the constructors (they need Application::m_device and the video driver). Only the
// pointer members on the path are read -- Application::m_menuManager, MenuManager::m_multiMenuManager and
// MultiMenuManager::m_menuFX[2].
alignas(MenuManager) unsigned char g_managerStorage[sizeof(MenuManager)];
alignas(MultiMenuManager) unsigned char g_multiStorage[sizeof(MultiMenuManager)];
alignas(MenuFX) unsigned char g_rootMovieStorage[sizeof(MenuFX)];

int g_findCount = 0;             // RenderFX::Find calls on the root movie
const char* g_lastFindName = nullptr;
bool g_findCalledWithRoot = false;
bool g_findCalledWithOtherName = false;

}  // namespace test_objects

// 0x7a9160, the lookup RenderFX::InvokeASCallback (0x7ad7e8) runs on the movie. The library body walks the
// movie's gameswf root/context (RenderFX +0x68, +0x60), and this test builds no gameswf movie, so that walk is
// defined out here -- the same step g1-game-ui-MenuBase-8948cc-1_test.cpp and
// g1-game-items-save-ItemObject-eb7cc3-0_test.cpp take for the same entry point. It is a RECORDER, not an empty
// body: the name is kept so the checks below can confirm the reconstructed tail invoked the callback through the
// root movie with the literal name the listing resolves at asm 0x499f98 ("_root").
//
// Defining Find is also what keeps the library's own InvokeASCallback out of this link: that body is the only
// user of Find and it lives in n2-game-ui-RenderFX-849cdc-3.cpp.obj, which is otherwise pulled in for its other
// RenderFX methods. Leaving it out is what stops the library's InvokeASCallback from being bound ahead of the
// recorder and makes the callback observably reach this point. Returning null makes the real InvokeASCallback
// fall through to its null-safe character overload (n2-game-ui-RenderFX-849cdc-3.cpp:142 returns 0 when the
// character is null), so no gameswf movie is needed for the reconstructed tail to complete.
gameswf::as_object* RenderFX::Find(const char* name) {
    ++test_objects::g_findCount;
    test_objects::g_lastFindName = name;
    if (name != nullptr && std::string(name) == "_root") {
        test_objects::g_findCalledWithRoot = true;
    } else {
        test_objects::g_findCalledWithOtherName = true;
    }
    return nullptr;  // no gameswf character stands behind the root movie storage
}

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Wire the chain the production tail walks: GetRoot reads m_multiMenuManager->m_menuFX[2], and
    // GetInstance reads Application::m_menuManager. These are the three pointers that were null before.
    MenuManager* const manager = reinterpret_cast<MenuManager*>(test_objects::g_managerStorage);
    MultiMenuManager* const multi = reinterpret_cast<MultiMenuManager*>(test_objects::g_multiStorage);
    MenuFX* const rootMovie = reinterpret_cast<MenuFX*>(test_objects::g_rootMovieStorage);
    multi->m_menuFX[2] = rootMovie;
    manager->m_multiMenuManager = multi;
    Singleton<Application>::s_inst.m_menuManager = manager;

    // The library accessors must now hand the body the objects above: this is the null that used to fault, and
    // it confirms the real GetRoot (0x42cb80) is reading the real m_menuFX[2] slot.
    CHECK(MenuManager::GetInstance() == manager);
    CHECK(MenuManager::GetInstance()->GetRoot() == rootMovie);

    // The start gate, the start flag and the start time are on the GameCenter singleton, as in the original.
    GameCenter* gc = GCSingleton<GameCenter>::GetInstance();

    // The entry guard is on the gate: the binary returns at once when the gate byte (+0x15) is ZERO
    // (asm 0x499f34: LDRB R4,[R0,#0x15]; CMP R4,#0; BEQ loc_499F48 skips the tail).
    gc->SetStartGateForTest(false);
    gc->GCStartMultiplayerGame();
    CHECK(!gc->StartFlagForTest());
    // The skipped tail is the one that reaches the menus, so a closed gate must not invoke the callback.
    CHECK(test_objects::g_findCount == 0);

    // With the gate set, a start sets the start flag and records the start time.
    gc->SetStartGateForTest(true);
    gc->GCStartMultiplayerGame();
    CHECK(gc->StartFlagForTest());
    // Just started, so the 150 s timeout has not expired.
    CHECK(!gc->GCStartGameTimeoutExpired());
    // The tail ran: the callback was invoked once, through the root movie, with the name the listing resolves
    // at asm 0x499f98. The second literal, "GoToVerificationScreen", is the function argument of that call.
    CHECK(test_objects::g_findCount == 1);
    CHECK(test_objects::g_findCalledWithRoot);
    CHECK(!test_objects::g_findCalledWithOtherName);
    CHECK(test_objects::g_lastFindName != nullptr && std::string(test_objects::g_lastFindName) == "_root");

    // A local object is not the singleton, so a start on it does not set the singleton's start flag. Its own
    // gate is closed, but the guard the body reads is the SINGLETON's gate, which the line above left open --
    // so this start still reaches the menus, exactly as the body's GCSingleton<GameCenter>::GetInstance() says.
    GameCenter local;
    local.SetStartGateForTest(false);
    local.GCStartMultiplayerGame();
    CHECK(!local.StartFlagForTest());
    CHECK(test_objects::g_findCount == 2);

    // The bool overload clears the singleton's gate and then starts. The flag is already set, but the
    // cleared gate means the no-argument overload returns at once.
    gc->SetStartGateForTest(true);
    gc->GCStartMultiplayerGame(true);
    CHECK(!gc->StartGateForTest());
    CHECK(gc->StartFlagForTest());
    // The bool overload clears the gate before the no-argument overload runs, so its tail is skipped.
    CHECK(test_objects::g_findCount == 2);

    // Both overloads return the register value the binary's tail leaves: the no-argument one returns the
    // GS singleton pointer when the gate is clear, and the bool one passes that same value through.
    gc->SetStartGateForTest(false);
    const int cleared = gc->GCStartMultiplayerGame();
    CHECK(cleared == static_cast<int>(reinterpret_cast<std::uintptr_t>(gc)));
    const int clearedThroughBool = gc->GCStartMultiplayerGame(true);
    CHECK(clearedThroughBool == static_cast<int>(reinterpret_cast<std::uintptr_t>(gc)));
    CHECK(test_objects::g_findCount == 2);  // neither cleared-gate call reached the menus

    // Leave the singleton as it was found, so nothing that runs after main sees the test's chain.
    Singleton<Application>::s_inst.m_menuManager = nullptr;

    if (failures == 0) std::printf("game_center_start_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
