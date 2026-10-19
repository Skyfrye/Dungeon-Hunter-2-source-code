// Definitions of the globals declared in dh2/global/Globals.hpp, and of the singleton storage in dh2/Singleton.hpp.
// Zero-initialised except where the .data section gives a value (P1000TF, isScreenOriented, lang_curr).
#include "dh2/Singleton.hpp"
#include "dh2/global/Globals.hpp"

#include "dh2/AnimSetManager.hpp"
#include "dh2/Application.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "core-platform/perf_counters.hpp"
#include "net-session-online/cxplayer_manager.hpp"

// ---- singleton storage ------------------------------------------------------------------------------------------
// Only the instances whose constructor and destructor are defined in the tree are instantiated here. The others are
// declared in Singleton.hpp and wait for their constructors (and CharState's destructor, for the CS* states, which
// is declared and not yet defined): an instantiation here would make this object reference undefined symbols.
template class Singleton<Application>;                  // 0x99f72c, 272 bytes
template class Singleton<PerfCounters>;                 // 0x99fc0c, 32 bytes
template class Singleton<AnimSetManager>;               // 0x9a2640, 32 bytes
template class Singleton<CXPlayerManager>;              // 0x99fc2c, 128 bytes (net-session-online; ctor and dtor defined there)

// The Application singleton: the object at Singleton<Application>::s_inst (0x99f72c).
Application& ApplicationGetInstance() { return Singleton<Application>::s_inst; }

// ---- globals ----------------------------------------------------------------------------------------------------
bool P1000TF = true;                  // 0x99975c, .data, initial value 1
float m_fairyPos_new[4] = {};         // 0x9f69b4, 16 bytes
int g_bigV = 0;                       // 0x9f688c
int g_bigI = 0;                       // 0x9f6890
bool USE_NATIVE_DRM_GAME = false;     // 0x9f640e, .bss
bool leader = false;                  // 0x9a5c10
int leaderboardcount = 0;             // 0x9a5c14
bool InExitConfirmation = false;      // 0x9a5c18
int lastOpenMenuID = 0;               // 0x9f63fc
bool isScreenOriented = true;         // 0x99b100, .data, initial value 1
std::uint32_t mAccelerometerX = 0;    // 0xa354f4
std::uint32_t mAccelerometerY = 0;    // 0xa354f8
std::uint32_t mAccelerometerZ = 0;    // 0xa354f0
int OPERATOR_PACKAGE_INGAME = 0;      // 0x9f6410
bool FirstTime = false;               // 0x99fa5d
char g_skip[16] = {};                 // 0x9a1da8, 16 bytes
bool isKOREAN_BUILD = false;          // 0x9f640b
int lang_kor = 0;                     // 0x9a5c0c
int lang_curr = -1;                   // 0x99983c, .data, initial value -1
updateJob_thread* m_updateJobThread1 = nullptr;  // 0x99fa2c
updateJob_thread* m_updateJobThread2 = nullptr;  // 0x99fa30
updateJob_thread* m_updateJobThread3 = nullptr;  // 0x99fa34
updateJob_thread* m_updateJobThread4 = nullptr;  // 0x99fa38

// Not defined here, on purpose: dword_99F73C, dword_99F740, dword_99F74C, dword_99F764, dword_99F768, dword_99F76C,
// dword_99F778, dword_99F77C and dword_99F7A0 are words of Singleton<Application>::s_inst (see Globals.hpp). The
// extern declarations that name them as separate globals (ObjectManagerInstance.hpp, IsMultiplayerGame.hpp,
// MenuManagerGlobals.hpp, g1-game-app-pack0-8e4185-0.cpp) need replacing by the member.
