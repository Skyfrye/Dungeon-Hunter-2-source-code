// Test for batch r2a-game-app-Application-b291be-1 (Application::Application, 0x32d980; the body is shared with 0x32d79c
// and lives in g1-game-app-Application-b291be-2.cpp, which this test links). It checks the state the constructor leaves:
// the stored values, the null managers, the flags, the empty strings and the receiver list, the vptr, the first-run byte
// FirstTime, and the five job threads. Each job thread is CustomAlloc(sizeof(updateJob_thread)) followed by
// updateJob_thread(n), n = 1..5, in that order; the first is stored at +0x04 and the others in the file-scope globals.
// Exit status 0 means every check passed.
//
// The job threads run the REAL updateJob_thread constructor (net-transport/src/update_job_thread.cpp), not a stub. Each
// block is followed by a guard area that the constructor must not touch, so a block that is too small is reported.
//
// Link: check_tu.sh --test <this file> g1-game-app-Application-b291be-2.cpp net-transport/src/update_job_thread.cpp
// The constructor's source file also holds the other Application methods, which reference engine and game code. That code
// is defined below as no-op stubs under the Itanium names. The stubs abort if called, and the constructor never calls them.
// The globals FirstTime and m_updateJobThread1..4 are defined by game-app/src/Globals.cpp in the original; the test
// defines them so the batch source links alone.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <new>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/global/Globals.hpp"
#include "net-transport/update_job_thread.hpp"

// Defined by the globals batch in the original.
bool FirstTime = false;
updateJob_thread* m_updateJobThread1 = nullptr;
updateJob_thread* m_updateJobThread2 = nullptr;
updateJob_thread* m_updateJobThread3 = nullptr;
updateJob_thread* m_updateJobThread4 = nullptr;

namespace {

constexpr int kJobCount = 5;
constexpr unsigned kGuardBytes = 64;
constexpr unsigned char kGuardByte = 0xCD;

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// What the constructor asked the allocator for, in call order: the requested size and the block it was given.
int g_allocCalls = 0;
unsigned g_allocSizes[kJobCount] = {};
unsigned char* g_allocBlocks[kJobCount] = {};

// Application storage. It is filled with a pattern before construction, so a member the constructor does not store
// keeps the pattern, and a member it stores shows the stored value.
alignas(Application) unsigned char g_storage[sizeof(Application)];

}  // namespace

// The allocator of the job threads. Defined here with C++ linkage, as the declaration in core-platform/memory.hpp.
// The block is the requested size, zeroed, followed by kGuardBytes guard bytes. Zeroing the requested part makes the
// padding of a job thread object zero in every block, so the object bytes can be compared with a reference object.
void* CustomAlloc(unsigned size) {
    auto* block = static_cast<unsigned char*>(std::malloc(size + kGuardBytes));
    if (block == nullptr) {
        std::abort();
    }
    std::memset(block, 0, size);
    std::memset(block + size, kGuardByte, kGuardBytes);
    if (g_allocCalls < kJobCount) {
        g_allocSizes[g_allocCalls] = size;
        g_allocBlocks[g_allocCalls] = block;
    }
    ++g_allocCalls;
    return block;
}

// The debug output function that other Application methods call. The constructor never calls it.
void _DEBUG_OUT(const char*, ...) {}

extern "C" {

// Application methods (other functions of the batch source). Never called from the constructor.
void _ZN11Application12IsInitFinishEv() { std::abort(); }
void _ZN11Application13SendGLHiScoreEv() { std::abort(); }
void _ZN11Application13ShowStatubBarEb() { std::abort(); }
void _ZN11Application14SetOrientationEib() { std::abort(); }
void _ZN11Application19IsInIGPOrGameCenterEv() { std::abort(); }
void _ZN11Application9ComputeDtEv() { std::abort(); }
void _ZNK11Application15GetCurrentLevelEv() { std::abort(); }

// Other classes' methods.
void _ZN11MenuManager11GetInstanceEv() { std::abort(); }
void _ZN11MenuManager13GetMenuByNameEPKc() { std::abort(); }
void _ZN11MenuManager5ResetEv() { std::abort(); }
void _ZN11MenuManager7PopMenuEPKc() { std::abort(); }
void _ZN11MenuManagerC1Ev() { std::abort(); }
void _ZN12EventManager6UpdateEd() { std::abort(); }
void _ZN12InputManager11GetInstanceEv() { std::abort(); }
void _ZN12InputManager24GetFirstConnectedGamepadEv() { std::abort(); }
void _ZN12StateMachine11SwitchStateEP9StateBaseb() { std::abort(); }
void _ZN12StateMachine5SleepEv() { std::abort(); }
void _ZN12StateMachine6UpdateEd() { std::abort(); }
void _ZN12StateMachine6WakeUpEv() { std::abort(); }
void _ZN12StateMachine9PushStateEP9StateBaseb() { std::abort(); }
void _ZNK12StateMachine4DrawEv() { std::abort(); }
void _ZN13DebugSwitches11GetInstanceEv() { std::abort(); }
void _ZN13DebugSwitches4loadEv() { std::abort(); }
void _ZN13DebugSwitches9GetSwitchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE() { std::abort(); }
void _ZN13DebugSwitches9SetSwitchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb() { std::abort(); }
void _ZN13ObjectManager19DBG_DumpRoomObjectsEv() { std::abort(); }
void _ZN13PlayerManager16RemoveAllPlayersEv() { std::abort(); }
void _ZN15SavegameManager12saveSettingsEv() { std::abort(); }
void _ZN15TouchScreenBase13ProcessEventsEv() { std::abort(); }
void _ZN15TouchScreenBase6updateEd() { std::abort(); }
void _ZN5Level13SG_SavePlayerEib() { std::abort(); }
void _ZN5Level18SG_SaveLocalPlayerEb() { std::abort(); }
void _ZN5Level9QuickSaveEb() { std::abort(); }
void _ZNK5Level36SG_DBG_TraceDetailedQuestInformationEi() { std::abort(); }
void _ZNK8MenuBase9IsVisibleEv() { std::abort(); }

// Static data of other classes, and the vtable of Application (the constructor stores its address). The test never
// reads the storage of the first two.
alignas(16) unsigned char _ZN11GSFlashMenu6s_instE[256];
bool _ZN8MenuBase11s_igmOpenedE = false;
void* _ZTV11Application[8] = {};

// Stubs for the external symbols of the other batch functions (Pause, ResetTouch, LoadLevel, GoToMainMenu, Update),
// which the constructor never calls. They abort if called.
void _ZN11Application12IsOnlineGameEv() { std::abort(); }
void _Z9GetOnlinev() { std::abort(); }
void _ZN7COnline14ReceivePacketsEv() { std::abort(); }
void _ZN7COnline11SendPacketsEv() { std::abort(); }
void _ZN6Device17IsHighPerformanceEv() { std::abort(); }
void _ZN12PerfCounters6UpdateEf() { std::abort(); }
void _ZN12PerfCounters15SetCounterValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfff() { std::abort(); }
void _ZNK15TouchScreenBase14getTouchIDListB5cxx11Ev() { std::abort(); }
void _ZN7GSLevel9LoadLevelEPKcijjjbbii() { std::abort(); }
void _ZN5Level13ResetIsLoadedEv() { std::abort(); }
void _ZN17PlayerStatManager5ResetEv() { std::abort(); }
void _ZN13PlayerManager6UpdateEv() { std::abort(); }
void _ZN13TrophyManager20UnlockTrophiesGLLiveEv() { std::abort(); }
alignas(16) unsigned char _ZN9SingletonI12PerfCountersE6s_instE[256];
alignas(16) unsigned char _ZN17PlayerStatManager6s_instE[256];
void* _ZN13TrophyManager10s_instanceE = nullptr;

}  // extern "C"

namespace {

// Builds updateJob_thread(argument) with the real constructor over zeroed storage and copies its bytes to out.
void ReferenceBytes(int argument, unsigned char* out) {
    alignas(updateJob_thread) unsigned char storage[sizeof(updateJob_thread)];
    std::memset(storage, 0, sizeof storage);
    updateJob_thread* obj = new (storage) updateJob_thread(argument);
    std::memcpy(out, storage, sizeof storage);
    obj->~updateJob_thread();
}

void TestStoredValues(const Application* app) {
    Check(app->unk_6c == 30, "unk_6c (+0x6c) is 30");
    Check(app->m_dtFactor == 1.0f, "m_dtFactor (+0x9c) is 1.0");
    Check(app->m_pauseTime == -1, "m_pauseTime (+0xa0) is -1");
    Check(app->m_lastTime == 0, "m_lastTime (+0x88) is 0");
    Check(app->m_frameCount == 0, "m_frameCount (+0x74) is 0");
}

void TestFlags(const Application* app) {
    Check(app->unk_78 == false, "unk_78 (+0x78) is 0");
    Check(app->unk_79 == false, "unk_79 (+0x79) is 0");
    Check(app->unk_7a == false, "unk_7a (+0x7a) is 0");
    Check(app->m_paused == false, "m_paused (+0xa4) is 0");
    Check(app->m_pauseMenuPushed == false, "m_pauseMenuPushed (+0xa5) is 0");
    Check(app->m_resumeMusic == false, "m_resumeMusic (+0xa6) is 0");
    Check(app->unk_a7 == false, "unk_a7 (+0xa7) is 0");
    Check(app->unk_a8 == false, "unk_a8 (+0xa8) is 0");
    Check(app->m_sceneUpdated == false, "m_sceneUpdated (+0xa9) is 0");
    Check(app->m_goToMainMenuPending == false, "m_goToMainMenuPending (+0xaa) is 0");
    Check(app->unk_ab == true, "unk_ab (+0xab) is 1");
    Check(app->unk_ad == false, "unk_ad (+0xad) is 0");
    Check(app->unk_b4 == true, "unk_b4 (+0xb4) is 1");
    Check(app->unk_ed == false, "unk_ed (+0xed) is 0");
    Check(app->unk_ee == false, "unk_ee (+0xee) is 0");
    Check(app->unk_10e == false, "unk_10e (+0x10e) is 0");
    Check(app->unk_10f == true, "unk_10f (+0x10f) is 1");
}

void TestNullManagers(const Application* app) {
    Check(app->m_device == nullptr, "m_device (+0x10) is null");
    Check(app->m_eventManager == nullptr, "m_eventManager (+0x14) is null");
    Check(app->m_stateMachine == nullptr, "m_stateMachine (+0x18) is null");
    Check(app->unk_1c == nullptr, "unk_1c (+0x1c) is null");
    Check(app->m_touchScreen == nullptr, "m_touchScreen (+0x20) is null");
    Check(app->m_accelerometer == nullptr, "m_accelerometer (+0x24) is null");
    Check(app->m_dataReloaderManager == nullptr, "m_dataReloaderManager (+0x28) is null");
    Check(app->m_pyDataConstants == nullptr, "m_pyDataConstants (+0x2c) is null");
    Check(app->m_pyDataArrays == nullptr, "m_pyDataArrays (+0x30) is null");
    Check(app->m_stringManager == nullptr, "m_stringManager (+0x34) is null");
    Check(app->m_objectManager == nullptr, "m_objectManager (+0x38) is null");
    Check(app->m_luaManager == nullptr, "m_luaManager (+0x3c) is null");
    Check(app->m_playerManager == nullptr, "m_playerManager (+0x40) is null");
    Check(app->m_physicalWorld == nullptr, "m_physicalWorld (+0x44) is null");
    Check(app->m_console == nullptr, "m_console (+0x48) is null");
    Check(app->m_savegameManager == nullptr, "m_savegameManager (+0x4c) is null");
    Check(app->m_zoomHandler == nullptr, "m_zoomHandler (+0x50) is null");
}

void TestContainers(const Application* app) {
    Check(app->m_eventReceivers.empty(), "m_eventReceivers (+0x08) is an empty list");
    Check(app->m_uncompiledData.empty(), "m_uncompiledData (+0xbc) is an empty string");
    Check(app->unk_d4.empty(), "unk_d4 (+0xd4) is an empty string");
}

void TestJobThreadAllocations() {
    Check(g_allocCalls == kJobCount, "five job thread blocks are allocated");
    for (int i = 0; i < kJobCount && i < g_allocCalls; ++i) {
        Check(g_allocSizes[i] == sizeof(updateJob_thread), "each job thread block is sizeof(updateJob_thread) bytes");
    }
}

// Each block holds the state of updateJob_thread(n) built by the real constructor, so the argument n is in place.
// The comparison is only meaningful if different arguments give different bytes, which is checked as well.
void TestJobThreadObjects() {
    for (int i = 0; i < kJobCount && i < g_allocCalls; ++i) {
        unsigned char expected[sizeof(updateJob_thread)];
        unsigned char other[sizeof(updateJob_thread)];
        ReferenceBytes(i + 1, expected);
        ReferenceBytes(i + 2, other);
        Check(std::memcmp(g_allocBlocks[i], expected, sizeof expected) == 0,
              "job thread n holds the state of updateJob_thread(n)");
        Check(std::memcmp(expected, other, sizeof expected) != 0,
              "updateJob_thread(n) and updateJob_thread(n+1) differ in bytes");
    }
}

// The constructor writes only inside its own block: the guard area after each block is untouched.
void TestJobThreadGuards() {
    for (int i = 0; i < kJobCount && i < g_allocCalls; ++i) {
        bool intact = true;
        for (unsigned j = 0; j < kGuardBytes; ++j) {
            if (g_allocBlocks[i][g_allocSizes[i] + j] != kGuardByte) {
                intact = false;
            }
        }
        Check(intact, "the constructor does not write past its job thread block");
    }
}

void TestJobThreadPointers(const Application* app) {
    Check(g_allocCalls >= 1 && static_cast<void*>(app->m_updateJobThread0) == g_allocBlocks[0],
          "m_updateJobThread0 (+0x04) holds job thread 1");
    Check(g_allocCalls >= 2 && static_cast<void*>(m_updateJobThread1) == g_allocBlocks[1],
          "m_updateJobThread1 holds job thread 2");
    Check(g_allocCalls >= 3 && static_cast<void*>(m_updateJobThread2) == g_allocBlocks[2],
          "m_updateJobThread2 holds job thread 3");
    Check(g_allocCalls >= 4 && static_cast<void*>(m_updateJobThread3) == g_allocBlocks[3],
          "m_updateJobThread3 holds job thread 4");
    Check(g_allocCalls >= 5 && static_cast<void*>(m_updateJobThread4) == g_allocBlocks[4],
          "m_updateJobThread4 holds job thread 5");
}

void TestFirstTime() {
    Check(FirstTime == true, "FirstTime is set to 1");
    Check(*reinterpret_cast<const unsigned char*>(&FirstTime) == 1, "FirstTime is stored as one byte");
}

void TestVptr(const Application* app) {
    // Itanium layout: the vptr points at the first virtual slot, two pointers past the start of the vtable.
    void* const* vptr = *reinterpret_cast<void* const* const*>(app);
    Check(vptr == reinterpret_cast<void* const*>(&_ZTV11Application[2]), "vptr points at the Application vtable");
}

// Destroys the five job threads the constructor built, then frees their blocks.
void ReleaseJobThreads() {
    for (int i = 0; i < kJobCount && i < g_allocCalls; ++i) {
        reinterpret_cast<updateJob_thread*>(g_allocBlocks[i])->~updateJob_thread();
        std::free(g_allocBlocks[i]);
    }
}

}  // namespace

int main() {
    // The library's own Singleton<Application>::s_inst (game-app/src/Globals.cpp:22) runs Application::Application()
    // from a static initializer before main, so it has already made its five CustomAlloc calls by the time the test's
    // own placement-new runs. Resetting the recorder here makes the checks below describe only the construction this
    // test performs, which is what TestJobThreadAllocations/Pointers/Objects/Guards mean by "the constructor".
    g_allocCalls = 0;
    for (int i = 0; i < kJobCount; ++i) {
        g_allocSizes[i] = 0;
        g_allocBlocks[i] = nullptr;
    }

    std::memset(g_storage, 0xAB, sizeof g_storage);
    Application* app = new (g_storage) Application();

    TestStoredValues(app);
    TestFlags(app);
    TestNullManagers(app);
    TestContainers(app);
    TestJobThreadAllocations();
    TestJobThreadPointers(app);
    TestJobThreadObjects();
    TestJobThreadGuards();
    TestFirstTime();
    TestVptr(app);
    ReleaseJobThreads();

    if (g_failures == 0) {
        std::printf("r2a-game-app-Application-b291be-1_test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-app-Application-b291be-1_test: %d failure(s)\n", g_failures);
    return 1;
}
