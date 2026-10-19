// Definitions of the plain <global> variables that headers across the tree declare `extern` and no batch defined (link-1).
// Each has its own ELF object in libDungeonHunter2.so; the address, size and section are in the comments, the initial
// value is the .data value or zero for .bss. The headers that declare each one are included so that the compiler checks the
// definition against every declaration.
#include <cstdint>

#include "core-platform/deps/application.hpp"             // SHARP_DEVICES, HTC_DEVICES, Is_In_Multiplayer_Mode
#include "dh2/Point3D.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"        // LG_DEVICES
#include "dh2/global/Globals.hpp"                          // handle_cheats_inGame
#include "dh2/global/MenuManagerGlobals.hpp"               // HTC_DEVICES, NO_IGP, Width_Screen
#include "dh2/global/Vec3f_J.hpp"
#include "dh2/global/Vec3f_K.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/menu_main_menu.hpp"                   // Is_In_Multiplayer_IGM, Is_In_Multiplayer_Mode
#include "dh2/global/multi_menu_manager.hpp"               // Game_Text, isInGameMenu, isBackKeyPressed, Back_key_Glive
#include "dh2/global/savegame_manager_language.hpp"        // JAPANESE_BUILD
#include "dh2/global/screen_size.hpp"                       // Width_Screen, Height_Screen
#include "vox-audio/vox/sound_manager.hpp"                 // JAVA_SOUNDS, Resume_Sound_Interrupt, Save_Current_Music_ID, music_volume, sfx_vfx_volume

// ---- screen and device flags (platform layer) ------------------------------------------------------------------
int Width_Screen = -1;                    // 0x99b114, .data, initial value -1; set by the JNI surface callbacks
int Height_Screen = -1;                   // 0x99b118, .data, initial value -1
bool SHARP_DEVICES = false;               // 0x9f6404 .bss
bool HTC_DEVICES = false;                 // 0x9f6403 .bss
bool LG_DEVICES = false;                  // 0x9f6406 .bss
bool NO_IGP = false;                      // 0x9f640d .bss
bool JAPANESE_BUILD = false;              // 0x9f640c .bss

// ---- menu and mode flags ---------------------------------------------------------------------------------------
bool Is_In_Multiplayer_Mode = false;      // 0x9a5b59 .bss
bool Is_In_Multiplayer_IGM = false;       // 0x9a5b5a .bss
bool Game_Text = false;                   // 0x9a5b58 .bss
bool Back_key_Glive = false;              // 0x9a5c09 .bss
bool isInGameMenu = false;                // 0x9f6400 .bss
bool isBackKeyPressed = false;            // 0x9f6401 .bss
bool handle_cheats_inGame = false;        // 0x9f640a .bss
bool isDevicePause = false;               // 0x9f6402 .bss, the gate of Application::Resume's music/online blocks
bool videoDone = false;                   // 0x9f6418 .bss, set by the intro movie callback

// ---- Application::LoadLevel staging globals (0x99fa40..0x99fa58, .bss; written by LoadLevel, read by the level switch) ----
int temp_entryPointId = 0;                // 0x99fa40 .bss
bool temp_resume = false;                 // 0x99fa44 .bss
bool temp_useSpawnPoint = false;          // 0x99fa45 .bss
int temp_difficulty = 0;                  // 0x99fa48 .bss
std::uint32_t temp_seed = 0;              // 0x99fa4c .bss
std::uint32_t temp_syncedSeed = 0;        // 0x99fa50 .bss
bool temp_isRemotelyTriggered = false;    // 0x99fa54 .bss
std::uint32_t temp_savegameSlot = 0;      // 0x99fa58 .bss

// ---- sound interrupt state (GS_InterruptLoading, Application::Pause, VoxSoundManager) --------------------------------
bool JAVA_SOUNDS = false;                 // 0x9f6409 .bss
bool Musicplayerpause = false;            // 0x99fa5c .bss
bool Resume_Sound_Interrupt = false;      // 0x9a2380 .bss
int Save_Current_Music_ID = -1;           // 0x99974c .data, initial value -1
float music_volume = 0.0f;                // 0x9a2388 .bss
float sfx_vfx_volume = 0.0f;              // 0x9a2384 .bss

// ---- constant vectors (the static initializer at 0x312e00 writes Vec3f_K; Vec3f_Origin stays zero) ------------------
Point3D<float> Vec3f_Origin = {0.0f, 0.0f, 0.0f};   // 0x99f854, 12 bytes
Point3D<float> Vec3f_K = {0.0f, 0.0f, 1.0f};        // 0x99f878, 12 bytes: (0, 0, 1)
Point3D<float> Vec3f_I = {1.0f, 0.0f, 0.0f};        // 0x99f860, 12 bytes: (1, 0, 0)
Point3D<float> Vec3f_J = {0.0f, 1.0f, 0.0f};        // 0x99f86c, 12 bytes: (0, 1, 0)
